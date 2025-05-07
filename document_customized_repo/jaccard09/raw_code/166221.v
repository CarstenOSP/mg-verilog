module forward_dataflow_in_loop_VITIS_LOOP_10816_1 (ap_clk,ap_rst,v8468,v13718_1_address0,v13718_1_ce0,v13718_1_d0,v13718_1_q0,v13718_1_we0,v13718_1_address1,v13718_1_ce1,v13718_1_d1,v13718_1_q1,v13718_1_we1,v13718_0_address0,v13718_0_ce0,v13718_0_d0,v13718_0_q0,v13718_0_we0,v13718_0_address1,v13718_0_ce1,v13718_0_d1,v13718_0_q1,v13718_0_we1,v13719_0_address0,v13719_0_ce0,v13719_0_d0,v13719_0_q0,v13719_0_we0,v13719_0_address1,v13719_0_ce1,v13719_0_d1,v13719_0_q1,v13719_0_we1,v13719_1_address0,v13719_1_ce0,v13719_1_d0,v13719_1_q0,v13719_1_we0,v13719_1_address1,v13719_1_ce1,v13719_1_d1,v13719_1_q1,v13719_1_we1,v13717_0_address0,v13717_0_ce0,v13717_0_d0,v13717_0_q0,v13717_0_we0,v13717_0_address1,v13717_0_ce1,v13717_0_d1,v13717_0_q1,v13717_0_we1,v13717_1_address0,v13717_1_ce0,v13717_1_d0,v13717_1_q0,v13717_1_we0,v13717_1_address1,v13717_1_ce1,v13717_1_d1,v13717_1_q1,v13717_1_we1,v13717_2_address0,v13717_2_ce0,v13717_2_d0,v13717_2_q0,v13717_2_we0,v13717_2_address1,v13717_2_ce1,v13717_2_d1,v13717_2_q1,v13717_2_we1,v13717_3_address0,v13717_3_ce0,v13717_3_d0,v13717_3_q0,v13717_3_we0,v13717_3_address1,v13717_3_ce1,v13717_3_d1,v13717_3_q1,v13717_3_we1,v8468_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [7:0] v8468;
output  [16:0] v13718_1_address0;
output   v13718_1_ce0;
output  [7:0] v13718_1_d0;
input  [7:0] v13718_1_q0;
output   v13718_1_we0;
output  [16:0] v13718_1_address1;
output   v13718_1_ce1;
output  [7:0] v13718_1_d1;
input  [7:0] v13718_1_q1;
output   v13718_1_we1;
output  [16:0] v13718_0_address0;
output   v13718_0_ce0;
output  [7:0] v13718_0_d0;
input  [7:0] v13718_0_q0;
output   v13718_0_we0;
output  [16:0] v13718_0_address1;
output   v13718_0_ce1;
output  [7:0] v13718_0_d1;
input  [7:0] v13718_0_q1;
output   v13718_0_we1;
output  [16:0] v13719_0_address0;
output   v13719_0_ce0;
output  [7:0] v13719_0_d0;
input  [7:0] v13719_0_q0;
output   v13719_0_we0;
output  [16:0] v13719_0_address1;
output   v13719_0_ce1;
output  [7:0] v13719_0_d1;
input  [7:0] v13719_0_q1;
output   v13719_0_we1;
output  [16:0] v13719_1_address0;
output   v13719_1_ce0;
output  [7:0] v13719_1_d0;
input  [7:0] v13719_1_q0;
output   v13719_1_we0;
output  [16:0] v13719_1_address1;
output   v13719_1_ce1;
output  [7:0] v13719_1_d1;
input  [7:0] v13719_1_q1;
output   v13719_1_we1;
output  [17:0] v13717_0_address0;
output   v13717_0_ce0;
output  [7:0] v13717_0_d0;
input  [7:0] v13717_0_q0;
output   v13717_0_we0;
output  [17:0] v13717_0_address1;
output   v13717_0_ce1;
output  [7:0] v13717_0_d1;
input  [7:0] v13717_0_q1;
output   v13717_0_we1;
output  [17:0] v13717_1_address0;
output   v13717_1_ce0;
output  [7:0] v13717_1_d0;
input  [7:0] v13717_1_q0;
output   v13717_1_we0;
output  [17:0] v13717_1_address1;
output   v13717_1_ce1;
output  [7:0] v13717_1_d1;
input  [7:0] v13717_1_q1;
output   v13717_1_we1;
output  [17:0] v13717_2_address0;
output   v13717_2_ce0;
output  [7:0] v13717_2_d0;
input  [7:0] v13717_2_q0;
output   v13717_2_we0;
output  [17:0] v13717_2_address1;
output   v13717_2_ce1;
output  [7:0] v13717_2_d1;
input  [7:0] v13717_2_q1;
output   v13717_2_we1;
output  [17:0] v13717_3_address0;
output   v13717_3_ce0;
output  [7:0] v13717_3_d0;
input  [7:0] v13717_3_q0;
output   v13717_3_we0;
output  [17:0] v13717_3_address1;
output   v13717_3_ce1;
output  [7:0] v13717_3_d1;
input  [7:0] v13717_3_q1;
output   v13717_3_we1;
input   v8468_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v8476_i_q0;
wire   [7:0] v8476_t_q0;
wire   [7:0] v8476_1_i_q0;
wire   [7:0] v8476_1_t_q0;
wire   [7:0] v8475_i_q0;
wire   [7:0] v8475_t_q0;
wire   [7:0] v8475_1_i_q0;
wire   [7:0] v8475_1_t_q0;
wire   [7:0] v8474_i_q0;
wire   [7:0] v8474_t_q0;
wire   [7:0] v8474_1_i_q0;
wire   [7:0] v8474_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_ce0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_d0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8468;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_0_ce0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_1_ce0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_2_ce0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_3_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_return;
wire    ap_channel_done_tmp_608;
wire    tmp_608_full_n;
reg    ap_sync_reg_channel_write_tmp_608;
wire    ap_sync_channel_write_tmp_608;
wire    ap_channel_done_v8475_1;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_full_n;
reg    ap_sync_reg_channel_write_v8475_1;
wire    ap_sync_channel_write_v8475_1;
wire    ap_channel_done_v8475;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_full_n;
reg    ap_sync_reg_channel_write_v8475;
wire    ap_sync_channel_write_v8475;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_ce0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_d0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8468;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v13719_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v13719_0_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v13719_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v13719_1_ce0;
wire    ap_channel_done_v8474_1;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_full_n;
reg    ap_sync_reg_channel_write_v8474_1;
wire    ap_sync_channel_write_v8474_1;
wire    ap_channel_done_v8474;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_full_n;
reg    ap_sync_reg_channel_write_v8474;
wire    ap_sync_channel_write_v8474;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_ce0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8475_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8475_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8474_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8474_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8475_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8475_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8474_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8474_ce0;
wire    ap_channel_done_v8476_1;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_full_n;
reg    ap_sync_reg_channel_write_v8476_1;
wire    ap_sync_channel_write_v8476_1;
wire    ap_channel_done_v8476;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_full_n;
reg    ap_sync_reg_channel_write_v8476;
wire    ap_sync_channel_write_v8476;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_1_d0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_0_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v8476_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v8476_1_i_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v8476_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v8476_i_ce0;
wire    v8475_i_full_n;
wire    v8475_t_empty_n;
wire    v8475_1_i_full_n;
wire    v8475_1_t_empty_n;
wire    v8474_i_full_n;
wire    v8474_t_empty_n;
wire    v8474_1_i_full_n;
wire    v8474_1_t_empty_n;
wire    v8476_i_full_n;
wire    v8476_t_empty_n;
wire    v8476_1_i_full_n;
wire    v8476_1_t_empty_n;
wire   [4:0] tmp_608_dout;
wire   [2:0] tmp_608_num_data_valid;
wire   [2:0] tmp_608_fifo_cap;
wire    tmp_608_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_tmp_608 = 1'b0;
#0 ap_sync_reg_channel_write_v8475_1 = 1'b0;
#0 ap_sync_reg_channel_write_v8475 = 1'b0;
#0 ap_sync_reg_channel_write_v8474_1 = 1'b0;
#0 ap_sync_reg_channel_write_v8474 = 1'b0;
#0 ap_sync_reg_channel_write_v8476_1 = 1'b0;
#0 ap_sync_reg_channel_write_v8476 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_10816_1_v8476_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3840 ),.AddressWidth( 12 ))
v8476_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_d0),.i_q0(v8476_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v8476_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v8476_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8476_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8476_i_full_n),.i_write(ap_channel_done_v8476),.t_empty_n(v8476_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_10816_1_v8476_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3840 ),.AddressWidth( 12 ))
v8476_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_d0),.i_q0(v8476_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v8476_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v8476_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8476_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8476_1_i_full_n),.i_write(ap_channel_done_v8476_1),.t_empty_n(v8476_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_10816_1_v8476_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3840 ),.AddressWidth( 12 ))
v8475_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_d0),.i_q0(v8475_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8475_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8475_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8475_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8475_i_full_n),.i_write(ap_channel_done_v8475),.t_empty_n(v8475_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_10816_1_v8476_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3840 ),.AddressWidth( 12 ))
v8475_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_d0),.i_q0(v8475_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8475_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8475_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8475_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8475_1_i_full_n),.i_write(ap_channel_done_v8475_1),.t_empty_n(v8475_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_10816_1_v8476_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3840 ),.AddressWidth( 12 ))
v8474_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_d0),.i_q0(v8474_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8474_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8474_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8474_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8474_i_full_n),.i_write(ap_channel_done_v8474),.t_empty_n(v8474_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_10816_1_v8476_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3840 ),.AddressWidth( 12 ))
v8474_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_d0),.i_q0(v8474_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8474_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8474_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8474_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8474_1_i_full_n),.i_write(ap_channel_done_v8474_1),.t_empty_n(v8474_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175 dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready),.v8475_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_address0),.v8475_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_ce0),.v8475_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_we0),.v8475_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_d0),.v8475_1_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_address0),.v8475_1_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_ce0),.v8475_1_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_we0),.v8475_1_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_d0),.v8468(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8468),.v13717_0_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_0_address0),.v13717_0_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_0_ce0),.v13717_0_q0(v13717_0_q0),.v13717_1_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_1_address0),.v13717_1_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_1_ce0),.v13717_1_q0(v13717_1_q0),.v13717_2_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_2_address0),.v13717_2_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_2_ce0),.v13717_2_q0(v13717_2_q0),.v13717_3_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_3_address0),.v13717_3_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_3_ce0),.v13717_3_q0(v13717_3_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274 dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready),.v8474_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_address0),.v8474_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_ce0),.v8474_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_we0),.v8474_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_d0),.v8474_1_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_address0),.v8474_1_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_ce0),.v8474_1_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_we0),.v8474_1_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_d0),.v8468(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8468),.v13719_0_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v13719_0_address0),.v13719_0_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v13719_0_ce0),.v13719_0_q0(v13719_0_q0),.v13719_1_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v13719_1_address0),.v13719_1_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v13719_1_ce0),.v13719_1_q0(v13719_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103 dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_ready),.v8476_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_address0),.v8476_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_ce0),.v8476_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_we0),.v8476_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_d0),.v8476_1_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_address0),.v8476_1_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_ce0),.v8476_1_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_we0),.v8476_1_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_d0),.v8475_1_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8475_1_address0),.v8475_1_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8475_1_ce0),.v8475_1_q0(v8475_1_t_q0),.v8474_1_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8474_1_address0),.v8474_1_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8474_1_ce0),.v8474_1_q0(v8474_1_t_q0),.v8475_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8475_address0),.v8475_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8475_ce0),.v8475_q0(v8475_t_q0),.v8474_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8474_address0),.v8474_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8474_ce0),.v8474_q0(v8474_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476 dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_ready),.v13718_1_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_1_address0),.v13718_1_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_1_ce0),.v13718_1_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_1_we0),.v13718_1_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_1_d0),.v13718_0_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_0_address0),.v13718_0_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_0_ce0),.v13718_0_we0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_0_we0),.v13718_0_d0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_0_d0),.p_read(tmp_608_dout),.v8476_1_i_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v8476_1_i_address0),.v8476_1_i_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v8476_1_i_ce0),.v8476_1_i_q0(v8476_1_t_q0),.v8476_i_address0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v8476_i_address0),.v8476_i_ce0(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v8476_i_ce0),.v8476_i_q0(v8476_t_q0));
forward_fifo_w5_d3_S tmp_608_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_return),.if_full_n(tmp_608_full_n),.if_write(ap_channel_done_tmp_608),.if_dout(tmp_608_dout),.if_num_data_valid(tmp_608_num_data_valid),.if_fifo_cap(tmp_608_fifo_cap),.if_empty_n(tmp_608_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_tmp_608 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_done & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_tmp_608 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_tmp_608 <= ap_sync_channel_write_tmp_608;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8474 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_done & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8474 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8474 <= ap_sync_channel_write_v8474;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8474_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_done & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8474_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8474_1 <= ap_sync_channel_write_v8474_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8475 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_done & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8475 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8475 <= ap_sync_channel_write_v8475;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8475_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_done & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8475_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8475_1 <= ap_sync_channel_write_v8475_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8476 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_done & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8476 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8476 <= ap_sync_channel_write_v8476;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8476_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_done & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8476_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8476_1 <= ap_sync_channel_write_v8476_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready;
        end
    end
end
assign ap_channel_done_tmp_608 = ((ap_sync_reg_channel_write_tmp_608 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_done);
assign ap_channel_done_v8474 = ((ap_sync_reg_channel_write_v8474 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_done);
assign ap_channel_done_v8474_1 = ((ap_sync_reg_channel_write_v8474_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_done);
assign ap_channel_done_v8475 = ((ap_sync_reg_channel_write_v8475 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_done);
assign ap_channel_done_v8475_1 = ((ap_sync_reg_channel_write_v8475_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_done);
assign ap_channel_done_v8476 = ((ap_sync_reg_channel_write_v8476 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_done);
assign ap_channel_done_v8476_1 = ((ap_sync_reg_channel_write_v8476_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_done;
assign ap_idle = ((tmp_608_empty_n ^ 1'b1) & (v8476_1_t_empty_n ^ 1'b1) & (v8476_t_empty_n ^ 1'b1) & (v8474_1_t_empty_n ^ 1'b1) & (v8474_t_empty_n ^ 1'b1) & (v8475_1_t_empty_n ^ 1'b1) & (v8475_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_tmp_608 = ((tmp_608_full_n & ap_channel_done_tmp_608) | ap_sync_reg_channel_write_tmp_608);
assign ap_sync_channel_write_v8474 = ((dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_full_n & ap_channel_done_v8474) | ap_sync_reg_channel_write_v8474);
assign ap_sync_channel_write_v8474_1 = ((dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_full_n & ap_channel_done_v8474_1) | ap_sync_reg_channel_write_v8474_1);
assign ap_sync_channel_write_v8475 = ((dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_full_n & ap_channel_done_v8475) | ap_sync_reg_channel_write_v8475);
assign ap_sync_channel_write_v8475_1 = ((dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_full_n & ap_channel_done_v8475_1) | ap_sync_reg_channel_write_v8475_1);
assign ap_sync_channel_write_v8476 = ((dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_full_n & ap_channel_done_v8476) | ap_sync_reg_channel_write_v8476);
assign ap_sync_channel_write_v8476_1 = ((dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_full_n & ap_channel_done_v8476_1) | ap_sync_reg_channel_write_v8476_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_ap_start = (v8476_t_empty_n & v8476_1_t_empty_n & tmp_608_empty_n);
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_continue = (ap_sync_channel_write_v8476_1 & ap_sync_channel_write_v8476);
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_ap_start = (v8475_t_empty_n & v8475_1_t_empty_n & v8474_t_empty_n & v8474_1_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_1_full_n = v8476_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10731_1_proc103_U0_v8476_full_n = v8476_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_continue = (ap_sync_channel_write_v8474_1 & ap_sync_channel_write_v8474);
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8468 = {{v8468[(5 - 8'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_1_full_n = v8474_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v8474_full_n = v8474_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_continue = (ap_sync_channel_write_v8475_1 & ap_sync_channel_write_v8475 & ap_sync_channel_write_tmp_608);
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8468 = {{v8468[(7 - 8'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_1_full_n = v8475_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v8475_full_n = v8475_i_full_n;
assign v13717_0_address0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_0_address0;
assign v13717_0_address1 = 18'd0;
assign v13717_0_ce0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_0_ce0;
assign v13717_0_ce1 = 1'b0;
assign v13717_0_d0 = 8'd0;
assign v13717_0_d1 = 8'd0;
assign v13717_0_we0 = 1'b0;
assign v13717_0_we1 = 1'b0;
assign v13717_1_address0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_1_address0;
assign v13717_1_address1 = 18'd0;
assign v13717_1_ce0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_1_ce0;
assign v13717_1_ce1 = 1'b0;
assign v13717_1_d0 = 8'd0;
assign v13717_1_d1 = 8'd0;
assign v13717_1_we0 = 1'b0;
assign v13717_1_we1 = 1'b0;
assign v13717_2_address0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_2_address0;
assign v13717_2_address1 = 18'd0;
assign v13717_2_ce0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_2_ce0;
assign v13717_2_ce1 = 1'b0;
assign v13717_2_d0 = 8'd0;
assign v13717_2_d1 = 8'd0;
assign v13717_2_we0 = 1'b0;
assign v13717_2_we1 = 1'b0;
assign v13717_3_address0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_3_address0;
assign v13717_3_address1 = 18'd0;
assign v13717_3_ce0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10789_1_proc10175_U0_v13717_3_ce0;
assign v13717_3_ce1 = 1'b0;
assign v13717_3_d0 = 8'd0;
assign v13717_3_d1 = 8'd0;
assign v13717_3_we0 = 1'b0;
assign v13717_3_we1 = 1'b0;
assign v13718_0_address0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_0_address0;
assign v13718_0_address1 = 17'd0;
assign v13718_0_ce0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_0_ce0;
assign v13718_0_ce1 = 1'b0;
assign v13718_0_d0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_0_d0;
assign v13718_0_d1 = 8'd0;
assign v13718_0_we0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_0_we0;
assign v13718_0_we1 = 1'b0;
assign v13718_1_address0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_1_address0;
assign v13718_1_address1 = 17'd0;
assign v13718_1_ce0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_1_ce0;
assign v13718_1_ce1 = 1'b0;
assign v13718_1_d0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_1_d0;
assign v13718_1_d1 = 8'd0;
assign v13718_1_we0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10703_1_proc10476_U0_v13718_1_we0;
assign v13718_1_we1 = 1'b0;
assign v13719_0_address0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v13719_0_address0;
assign v13719_0_address1 = 17'd0;
assign v13719_0_ce0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v13719_0_ce0;
assign v13719_0_ce1 = 1'b0;
assign v13719_0_d0 = 8'd0;
assign v13719_0_d1 = 8'd0;
assign v13719_0_we0 = 1'b0;
assign v13719_0_we1 = 1'b0;
assign v13719_1_address0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v13719_1_address0;
assign v13719_1_address1 = 17'd0;
assign v13719_1_ce0 = dataflow_in_loop_VITIS_LOOP_10816_1_Loop_VITIS_LOOP_10761_1_proc10274_U0_v13719_1_ce0;
assign v13719_1_ce1 = 1'b0;
assign v13719_1_d0 = 8'd0;
assign v13719_1_d1 = 8'd0;
assign v13719_1_we0 = 1'b0;
assign v13719_1_we1 = 1'b0;
endmodule 