
module forward_dataflow_in_loop_VITIS_LOOP_16559_1 (ap_clk,ap_rst,v12810_0,v13700_1_address0,v13700_1_ce0,v13700_1_d0,v13700_1_q0,v13700_1_we0,v13700_1_address1,v13700_1_ce1,v13700_1_d1,v13700_1_q1,v13700_1_we1,v13700_0_address0,v13700_0_ce0,v13700_0_d0,v13700_0_q0,v13700_0_we0,v13700_0_address1,v13700_0_ce1,v13700_0_d1,v13700_0_q1,v13700_0_we1,v13701_0_address0,v13701_0_ce0,v13701_0_d0,v13701_0_q0,v13701_0_we0,v13701_0_address1,v13701_0_ce1,v13701_0_d1,v13701_0_q1,v13701_0_we1,v13701_1_address0,v13701_1_ce0,v13701_1_d0,v13701_1_q0,v13701_1_we0,v13701_1_address1,v13701_1_ce1,v13701_1_d1,v13701_1_q1,v13701_1_we1,v13699_0_address0,v13699_0_ce0,v13699_0_d0,v13699_0_q0,v13699_0_we0,v13699_0_address1,v13699_0_ce1,v13699_0_d1,v13699_0_q1,v13699_0_we1,v13699_1_address0,v13699_1_ce0,v13699_1_d0,v13699_1_q0,v13699_1_we0,v13699_1_address1,v13699_1_ce1,v13699_1_d1,v13699_1_q1,v13699_1_we1,v13699_2_address0,v13699_2_ce0,v13699_2_d0,v13699_2_q0,v13699_2_we0,v13699_2_address1,v13699_2_ce1,v13699_2_d1,v13699_2_q1,v13699_2_we1,v13699_3_address0,v13699_3_ce0,v13699_3_d0,v13699_3_q0,v13699_3_we0,v13699_3_address1,v13699_3_ce1,v13699_3_d1,v13699_3_q1,v13699_3_we1,v12810_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [9:0] v12810_0;
output  [19:0] v13700_1_address0;
output   v13700_1_ce0;
output  [7:0] v13700_1_d0;
input  [7:0] v13700_1_q0;
output   v13700_1_we0;
output  [19:0] v13700_1_address1;
output   v13700_1_ce1;
output  [7:0] v13700_1_d1;
input  [7:0] v13700_1_q1;
output   v13700_1_we1;
output  [19:0] v13700_0_address0;
output   v13700_0_ce0;
output  [7:0] v13700_0_d0;
input  [7:0] v13700_0_q0;
output   v13700_0_we0;
output  [19:0] v13700_0_address1;
output   v13700_0_ce1;
output  [7:0] v13700_0_d1;
input  [7:0] v13700_0_q1;
output   v13700_0_we1;
output  [19:0] v13701_0_address0;
output   v13701_0_ce0;
output  [7:0] v13701_0_d0;
input  [7:0] v13701_0_q0;
output   v13701_0_we0;
output  [19:0] v13701_0_address1;
output   v13701_0_ce1;
output  [7:0] v13701_0_d1;
input  [7:0] v13701_0_q1;
output   v13701_0_we1;
output  [19:0] v13701_1_address0;
output   v13701_1_ce0;
output  [7:0] v13701_1_d0;
input  [7:0] v13701_1_q0;
output   v13701_1_we0;
output  [19:0] v13701_1_address1;
output   v13701_1_ce1;
output  [7:0] v13701_1_d1;
input  [7:0] v13701_1_q1;
output   v13701_1_we1;
output  [20:0] v13699_0_address0;
output   v13699_0_ce0;
output  [7:0] v13699_0_d0;
input  [7:0] v13699_0_q0;
output   v13699_0_we0;
output  [20:0] v13699_0_address1;
output   v13699_0_ce1;
output  [7:0] v13699_0_d1;
input  [7:0] v13699_0_q1;
output   v13699_0_we1;
output  [20:0] v13699_1_address0;
output   v13699_1_ce0;
output  [7:0] v13699_1_d0;
input  [7:0] v13699_1_q0;
output   v13699_1_we0;
output  [20:0] v13699_1_address1;
output   v13699_1_ce1;
output  [7:0] v13699_1_d1;
input  [7:0] v13699_1_q1;
output   v13699_1_we1;
output  [20:0] v13699_2_address0;
output   v13699_2_ce0;
output  [7:0] v13699_2_d0;
input  [7:0] v13699_2_q0;
output   v13699_2_we0;
output  [20:0] v13699_2_address1;
output   v13699_2_ce1;
output  [7:0] v13699_2_d1;
input  [7:0] v13699_2_q1;
output   v13699_2_we1;
output  [20:0] v13699_3_address0;
output   v13699_3_ce0;
output  [7:0] v13699_3_d0;
input  [7:0] v13699_3_q0;
output   v13699_3_we0;
output  [20:0] v13699_3_address1;
output   v13699_3_ce1;
output  [7:0] v13699_3_d1;
input  [7:0] v13699_3_q1;
output   v13699_3_we1;
input   v12810_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v12818_i_q0;
wire   [7:0] v12818_t_q0;
wire   [7:0] v12818_1_i_q0;
wire   [7:0] v12818_1_t_q0;
wire   [7:0] v12817_i_q0;
wire   [7:0] v12817_t_q0;
wire   [7:0] v12817_1_i_q0;
wire   [7:0] v12817_1_t_q0;
wire   [7:0] v12816_i_q0;
wire   [7:0] v12816_t_q0;
wire   [7:0] v12816_1_i_q0;
wire   [7:0] v12816_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_ce0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_d0;
wire   [20:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_0_ce0;
wire   [20:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_1_ce0;
wire   [20:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_2_ce0;
wire   [20:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_3_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_return;
wire    ap_channel_done_v12810_0_c_channel1;
wire    v12810_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v12810_0_c_channel1;
wire    ap_sync_channel_write_v12810_0_c_channel1;
wire    ap_channel_done_v12817_1;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_full_n;
reg    ap_sync_reg_channel_write_v12817_1;
wire    ap_sync_channel_write_v12817_1;
wire    ap_channel_done_v12817;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_full_n;
reg    ap_sync_reg_channel_write_v12817;
wire    ap_sync_channel_write_v12817;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_ce0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_d0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v13701_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v13701_0_ce0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v13701_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v13701_1_ce0;
wire    ap_channel_done_v12816_1;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_full_n;
reg    ap_sync_reg_channel_write_v12816_1;
wire    ap_sync_channel_write_v12816_1;
wire    ap_channel_done_v12816;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_full_n;
reg    ap_sync_reg_channel_write_v12816;
wire    ap_sync_channel_write_v12816;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_ce0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12817_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12817_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12816_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12816_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12817_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12817_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12816_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12816_ce0;
wire    ap_channel_done_v12818_1;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_full_n;
reg    ap_sync_reg_channel_write_v12818_1;
wire    ap_sync_channel_write_v12818_1;
wire    ap_channel_done_v12818;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_full_n;
reg    ap_sync_reg_channel_write_v12818;
wire    ap_sync_channel_write_v12818;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_ready;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_1_d0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_0_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v12818_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v12818_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v12818_address0;
wire    dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v12818_ce0;
wire    v12817_i_full_n;
wire    v12817_t_empty_n;
wire    v12817_1_i_full_n;
wire    v12817_1_t_empty_n;
wire    v12816_i_full_n;
wire    v12816_t_empty_n;
wire    v12816_1_i_full_n;
wire    v12816_1_t_empty_n;
wire    v12818_i_full_n;
wire    v12818_t_empty_n;
wire    v12818_1_i_full_n;
wire    v12818_1_t_empty_n;
wire   [9:0] v12810_0_c_channel1_dout;
wire   [2:0] v12810_0_c_channel1_num_data_valid;
wire   [2:0] v12810_0_c_channel1_fifo_cap;
wire    v12810_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v12810_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v12817_1 = 1'b0;
#0 ap_sync_reg_channel_write_v12817 = 1'b0;
#0 ap_sync_reg_channel_write_v12816_1 = 1'b0;
#0 ap_sync_reg_channel_write_v12816 = 1'b0;
#0 ap_sync_reg_channel_write_v12818_1 = 1'b0;
#0 ap_sync_reg_channel_write_v12818 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_16559_1_v12818_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 4096 ),.AddressWidth( 12 ))
v12818_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_d0),.i_q0(v12818_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v12818_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v12818_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12818_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12818_i_full_n),.i_write(ap_channel_done_v12818),.t_empty_n(v12818_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_16559_1_v12818_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 4096 ),.AddressWidth( 12 ))
v12818_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_d0),.i_q0(v12818_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v12818_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v12818_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12818_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12818_1_i_full_n),.i_write(ap_channel_done_v12818_1),.t_empty_n(v12818_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_16559_1_v12818_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 4096 ),.AddressWidth( 12 ))
v12817_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_d0),.i_q0(v12817_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12817_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12817_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12817_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12817_i_full_n),.i_write(ap_channel_done_v12817),.t_empty_n(v12817_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_16559_1_v12818_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 4096 ),.AddressWidth( 12 ))
v12817_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_d0),.i_q0(v12817_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12817_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12817_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12817_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12817_1_i_full_n),.i_write(ap_channel_done_v12817_1),.t_empty_n(v12817_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_16559_1_v12818_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 4096 ),.AddressWidth( 12 ))
v12816_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_d0),.i_q0(v12816_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12816_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12816_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12816_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12816_i_full_n),.i_write(ap_channel_done_v12816),.t_empty_n(v12816_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_16559_1_v12818_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 4096 ),.AddressWidth( 12 ))
v12816_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_d0),.i_q0(v12816_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12816_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12816_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12816_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12816_1_i_full_n),.i_write(ap_channel_done_v12816_1),.t_empty_n(v12816_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36 dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready),.v12817_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_address0),.v12817_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_ce0),.v12817_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_we0),.v12817_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_d0),.v12817_1_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_address0),.v12817_1_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_ce0),.v12817_1_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_we0),.v12817_1_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_d0),.v12810_0(v12810_0),.v13699_0_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_0_address0),.v13699_0_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_0_ce0),.v13699_0_q0(v13699_0_q0),.v13699_1_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_1_address0),.v13699_1_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_1_ce0),.v13699_1_q0(v13699_1_q0),.v13699_2_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_2_address0),.v13699_2_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_2_ce0),.v13699_2_q0(v13699_2_q0),.v13699_3_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_3_address0),.v13699_3_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_3_ce0),.v13699_3_q0(v13699_3_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35 dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready),.v12816_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_address0),.v12816_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_ce0),.v12816_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_we0),.v12816_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_d0),.v12816_1_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_address0),.v12816_1_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_ce0),.v12816_1_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_we0),.v12816_1_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_d0),.v12810_0(v12810_0),.v13701_0_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v13701_0_address0),.v13701_0_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v13701_0_ce0),.v13701_0_q0(v13701_0_q0),.v13701_1_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v13701_1_address0),.v13701_1_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v13701_1_ce0),.v13701_1_q0(v13701_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_ready),.v12818_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_address0),.v12818_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_ce0),.v12818_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_we0),.v12818_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_d0),.v12818_1_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_address0),.v12818_1_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_ce0),.v12818_1_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_we0),.v12818_1_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_d0),.v12817_1_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12817_1_address0),.v12817_1_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12817_1_ce0),.v12817_1_q0(v12817_1_t_q0),.v12816_1_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12816_1_address0),.v12816_1_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12816_1_ce0),.v12816_1_q0(v12816_1_t_q0),.v12817_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12817_address0),.v12817_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12817_ce0),.v12817_q0(v12817_t_q0),.v12816_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12816_address0),.v12816_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12816_ce0),.v12816_q0(v12816_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37 dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_ready),.v13700_1_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_1_address0),.v13700_1_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_1_ce0),.v13700_1_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_1_we0),.v13700_1_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_1_d0),.v13700_0_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_0_address0),.v13700_0_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_0_ce0),.v13700_0_we0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_0_we0),.v13700_0_d0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_0_d0),.p_read(v12810_0_c_channel1_dout),.v12818_1_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v12818_1_address0),.v12818_1_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v12818_1_ce0),.v12818_1_q0(v12818_1_t_q0),.v12818_address0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v12818_address0),.v12818_ce0(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v12818_ce0),.v12818_q0(v12818_t_q0));
forward_fifo_w10_d3_S v12810_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_return),.if_full_n(v12810_0_c_channel1_full_n),.if_write(ap_channel_done_v12810_0_c_channel1),.if_dout(v12810_0_c_channel1_dout),.if_num_data_valid(v12810_0_c_channel1_num_data_valid),.if_fifo_cap(v12810_0_c_channel1_fifo_cap),.if_empty_n(v12810_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12810_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_done & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12810_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12810_0_c_channel1 <= ap_sync_channel_write_v12810_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12816 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_done & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12816 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12816 <= ap_sync_channel_write_v12816;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12816_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_done & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12816_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12816_1 <= ap_sync_channel_write_v12816_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12817 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_done & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12817 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12817 <= ap_sync_channel_write_v12817;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12817_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_done & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12817_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12817_1 <= ap_sync_channel_write_v12817_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12818 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12818 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12818 <= ap_sync_channel_write_v12818;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12818_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12818_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12818_1 <= ap_sync_channel_write_v12818_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v12810_0_c_channel1 = ((ap_sync_reg_channel_write_v12810_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_done);
assign ap_channel_done_v12816 = ((ap_sync_reg_channel_write_v12816 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_done);
assign ap_channel_done_v12816_1 = ((ap_sync_reg_channel_write_v12816_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_done);
assign ap_channel_done_v12817 = ((ap_sync_reg_channel_write_v12817 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_done);
assign ap_channel_done_v12817_1 = ((ap_sync_reg_channel_write_v12817_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_done);
assign ap_channel_done_v12818 = ((ap_sync_reg_channel_write_v12818 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_done);
assign ap_channel_done_v12818_1 = ((ap_sync_reg_channel_write_v12818_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_done;
assign ap_idle = ((v12810_0_c_channel1_empty_n ^ 1'b1) & (v12818_1_t_empty_n ^ 1'b1) & (v12818_t_empty_n ^ 1'b1) & (v12816_1_t_empty_n ^ 1'b1) & (v12816_t_empty_n ^ 1'b1) & (v12817_1_t_empty_n ^ 1'b1) & (v12817_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v12810_0_c_channel1 = ((v12810_0_c_channel1_full_n & ap_channel_done_v12810_0_c_channel1) | ap_sync_reg_channel_write_v12810_0_c_channel1);
assign ap_sync_channel_write_v12816 = ((dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_full_n & ap_channel_done_v12816) | ap_sync_reg_channel_write_v12816);
assign ap_sync_channel_write_v12816_1 = ((dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_full_n & ap_channel_done_v12816_1) | ap_sync_reg_channel_write_v12816_1);
assign ap_sync_channel_write_v12817 = ((dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_full_n & ap_channel_done_v12817) | ap_sync_reg_channel_write_v12817);
assign ap_sync_channel_write_v12817_1 = ((dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_full_n & ap_channel_done_v12817_1) | ap_sync_reg_channel_write_v12817_1);
assign ap_sync_channel_write_v12818 = ((dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_full_n & ap_channel_done_v12818) | ap_sync_reg_channel_write_v12818);
assign ap_sync_channel_write_v12818_1 = ((dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_full_n & ap_channel_done_v12818_1) | ap_sync_reg_channel_write_v12818_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_ap_start = (v12818_t_empty_n & v12818_1_t_empty_n & v12810_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_continue = (ap_sync_channel_write_v12818_1 & ap_sync_channel_write_v12818);
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_ap_start = (v12817_t_empty_n & v12817_1_t_empty_n & v12816_t_empty_n & v12816_1_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_1_full_n = v12818_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16474_1_proc_U0_v12818_full_n = v12818_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_continue = (ap_sync_channel_write_v12816_1 & ap_sync_channel_write_v12816);
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_1_full_n = v12816_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v12816_full_n = v12816_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_continue = (ap_sync_channel_write_v12817_1 & ap_sync_channel_write_v12817 & ap_sync_channel_write_v12810_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_1_full_n = v12817_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v12817_full_n = v12817_i_full_n;
assign v13699_0_address0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_0_address0;
assign v13699_0_address1 = 21'd0;
assign v13699_0_ce0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_0_ce0;
assign v13699_0_ce1 = 1'b0;
assign v13699_0_d0 = 8'd0;
assign v13699_0_d1 = 8'd0;
assign v13699_0_we0 = 1'b0;
assign v13699_0_we1 = 1'b0;
assign v13699_1_address0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_1_address0;
assign v13699_1_address1 = 21'd0;
assign v13699_1_ce0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_1_ce0;
assign v13699_1_ce1 = 1'b0;
assign v13699_1_d0 = 8'd0;
assign v13699_1_d1 = 8'd0;
assign v13699_1_we0 = 1'b0;
assign v13699_1_we1 = 1'b0;
assign v13699_2_address0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_2_address0;
assign v13699_2_address1 = 21'd0;
assign v13699_2_ce0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_2_ce0;
assign v13699_2_ce1 = 1'b0;
assign v13699_2_d0 = 8'd0;
assign v13699_2_d1 = 8'd0;
assign v13699_2_we0 = 1'b0;
assign v13699_2_we1 = 1'b0;
assign v13699_3_address0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_3_address0;
assign v13699_3_address1 = 21'd0;
assign v13699_3_ce0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16532_1_proc36_U0_v13699_3_ce0;
assign v13699_3_ce1 = 1'b0;
assign v13699_3_d0 = 8'd0;
assign v13699_3_d1 = 8'd0;
assign v13699_3_we0 = 1'b0;
assign v13699_3_we1 = 1'b0;
assign v13700_0_address0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_0_address0;
assign v13700_0_address1 = 20'd0;
assign v13700_0_ce0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_0_ce0;
assign v13700_0_ce1 = 1'b0;
assign v13700_0_d0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_0_d0;
assign v13700_0_d1 = 8'd0;
assign v13700_0_we0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_0_we0;
assign v13700_0_we1 = 1'b0;
assign v13700_1_address0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_1_address0;
assign v13700_1_address1 = 20'd0;
assign v13700_1_ce0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_1_ce0;
assign v13700_1_ce1 = 1'b0;
assign v13700_1_d0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_1_d0;
assign v13700_1_d1 = 8'd0;
assign v13700_1_we0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16446_1_proc37_U0_v13700_1_we0;
assign v13700_1_we1 = 1'b0;
assign v13701_0_address0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v13701_0_address0;
assign v13701_0_address1 = 20'd0;
assign v13701_0_ce0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v13701_0_ce0;
assign v13701_0_ce1 = 1'b0;
assign v13701_0_d0 = 8'd0;
assign v13701_0_d1 = 8'd0;
assign v13701_0_we0 = 1'b0;
assign v13701_0_we1 = 1'b0;
assign v13701_1_address0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v13701_1_address0;
assign v13701_1_address1 = 20'd0;
assign v13701_1_ce0 = dataflow_in_loop_VITIS_LOOP_16559_1_Loop_VITIS_LOOP_16504_1_proc35_U0_v13701_1_ce0;
assign v13701_1_ce1 = 1'b0;
assign v13701_1_d0 = 8'd0;
assign v13701_1_d1 = 8'd0;
assign v13701_1_we0 = 1'b0;
assign v13701_1_we1 = 1'b0;
endmodule 
