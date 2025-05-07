module forward_dataflow_in_loop_VITIS_LOOP_19896_1 (ap_clk,ap_rst,v15147_0,v15431_1_1_address0,v15431_1_1_ce0,v15431_1_1_d0,v15431_1_1_q0,v15431_1_1_we0,v15431_1_1_address1,v15431_1_1_ce1,v15431_1_1_d1,v15431_1_1_q1,v15431_1_1_we1,v15431_1_0_address0,v15431_1_0_ce0,v15431_1_0_d0,v15431_1_0_q0,v15431_1_0_we0,v15431_1_0_address1,v15431_1_0_ce1,v15431_1_0_d1,v15431_1_0_q1,v15431_1_0_we1,v15431_0_1_address0,v15431_0_1_ce0,v15431_0_1_d0,v15431_0_1_q0,v15431_0_1_we0,v15431_0_1_address1,v15431_0_1_ce1,v15431_0_1_d1,v15431_0_1_q1,v15431_0_1_we1,v15431_0_0_address0,v15431_0_0_ce0,v15431_0_0_d0,v15431_0_0_q0,v15431_0_0_we0,v15431_0_0_address1,v15431_0_0_ce1,v15431_0_0_d1,v15431_0_0_q1,v15431_0_0_we1,v15432_0_0_address0,v15432_0_0_ce0,v15432_0_0_d0,v15432_0_0_q0,v15432_0_0_we0,v15432_0_0_address1,v15432_0_0_ce1,v15432_0_0_d1,v15432_0_0_q1,v15432_0_0_we1,v15432_0_1_address0,v15432_0_1_ce0,v15432_0_1_d0,v15432_0_1_q0,v15432_0_1_we0,v15432_0_1_address1,v15432_0_1_ce1,v15432_0_1_d1,v15432_0_1_q1,v15432_0_1_we1,v15432_1_0_address0,v15432_1_0_ce0,v15432_1_0_d0,v15432_1_0_q0,v15432_1_0_we0,v15432_1_0_address1,v15432_1_0_ce1,v15432_1_0_d1,v15432_1_0_q1,v15432_1_0_we1,v15432_1_1_address0,v15432_1_1_ce0,v15432_1_1_d0,v15432_1_1_q0,v15432_1_1_we0,v15432_1_1_address1,v15432_1_1_ce1,v15432_1_1_d1,v15432_1_1_q1,v15432_1_1_we1,v15430_0_0_address0,v15430_0_0_ce0,v15430_0_0_d0,v15430_0_0_q0,v15430_0_0_we0,v15430_0_0_address1,v15430_0_0_ce1,v15430_0_0_d1,v15430_0_0_q1,v15430_0_0_we1,v15430_0_1_address0,v15430_0_1_ce0,v15430_0_1_d0,v15430_0_1_q0,v15430_0_1_we0,v15430_0_1_address1,v15430_0_1_ce1,v15430_0_1_d1,v15430_0_1_q1,v15430_0_1_we1,v15430_1_0_address0,v15430_1_0_ce0,v15430_1_0_d0,v15430_1_0_q0,v15430_1_0_we0,v15430_1_0_address1,v15430_1_0_ce1,v15430_1_0_d1,v15430_1_0_q1,v15430_1_0_we1,v15430_1_1_address0,v15430_1_1_ce0,v15430_1_1_d0,v15430_1_1_q0,v15430_1_1_we0,v15430_1_1_address1,v15430_1_1_ce1,v15430_1_1_d1,v15430_1_1_q1,v15430_1_1_we1,v15147_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [8:0] v15147_0;
output  [16:0] v15431_1_1_address0;
output   v15431_1_1_ce0;
output  [7:0] v15431_1_1_d0;
input  [7:0] v15431_1_1_q0;
output   v15431_1_1_we0;
output  [16:0] v15431_1_1_address1;
output   v15431_1_1_ce1;
output  [7:0] v15431_1_1_d1;
input  [7:0] v15431_1_1_q1;
output   v15431_1_1_we1;
output  [16:0] v15431_1_0_address0;
output   v15431_1_0_ce0;
output  [7:0] v15431_1_0_d0;
input  [7:0] v15431_1_0_q0;
output   v15431_1_0_we0;
output  [16:0] v15431_1_0_address1;
output   v15431_1_0_ce1;
output  [7:0] v15431_1_0_d1;
input  [7:0] v15431_1_0_q1;
output   v15431_1_0_we1;
output  [16:0] v15431_0_1_address0;
output   v15431_0_1_ce0;
output  [7:0] v15431_0_1_d0;
input  [7:0] v15431_0_1_q0;
output   v15431_0_1_we0;
output  [16:0] v15431_0_1_address1;
output   v15431_0_1_ce1;
output  [7:0] v15431_0_1_d1;
input  [7:0] v15431_0_1_q1;
output   v15431_0_1_we1;
output  [16:0] v15431_0_0_address0;
output   v15431_0_0_ce0;
output  [7:0] v15431_0_0_d0;
input  [7:0] v15431_0_0_q0;
output   v15431_0_0_we0;
output  [16:0] v15431_0_0_address1;
output   v15431_0_0_ce1;
output  [7:0] v15431_0_0_d1;
input  [7:0] v15431_0_0_q1;
output   v15431_0_0_we1;
output  [16:0] v15432_0_0_address0;
output   v15432_0_0_ce0;
output  [7:0] v15432_0_0_d0;
input  [7:0] v15432_0_0_q0;
output   v15432_0_0_we0;
output  [16:0] v15432_0_0_address1;
output   v15432_0_0_ce1;
output  [7:0] v15432_0_0_d1;
input  [7:0] v15432_0_0_q1;
output   v15432_0_0_we1;
output  [16:0] v15432_0_1_address0;
output   v15432_0_1_ce0;
output  [7:0] v15432_0_1_d0;
input  [7:0] v15432_0_1_q0;
output   v15432_0_1_we0;
output  [16:0] v15432_0_1_address1;
output   v15432_0_1_ce1;
output  [7:0] v15432_0_1_d1;
input  [7:0] v15432_0_1_q1;
output   v15432_0_1_we1;
output  [16:0] v15432_1_0_address0;
output   v15432_1_0_ce0;
output  [7:0] v15432_1_0_d0;
input  [7:0] v15432_1_0_q0;
output   v15432_1_0_we0;
output  [16:0] v15432_1_0_address1;
output   v15432_1_0_ce1;
output  [7:0] v15432_1_0_d1;
input  [7:0] v15432_1_0_q1;
output   v15432_1_0_we1;
output  [16:0] v15432_1_1_address0;
output   v15432_1_1_ce0;
output  [7:0] v15432_1_1_d0;
input  [7:0] v15432_1_1_q0;
output   v15432_1_1_we0;
output  [16:0] v15432_1_1_address1;
output   v15432_1_1_ce1;
output  [7:0] v15432_1_1_d1;
input  [7:0] v15432_1_1_q1;
output   v15432_1_1_we1;
output  [16:0] v15430_0_0_address0;
output   v15430_0_0_ce0;
output  [7:0] v15430_0_0_d0;
input  [7:0] v15430_0_0_q0;
output   v15430_0_0_we0;
output  [16:0] v15430_0_0_address1;
output   v15430_0_0_ce1;
output  [7:0] v15430_0_0_d1;
input  [7:0] v15430_0_0_q1;
output   v15430_0_0_we1;
output  [16:0] v15430_0_1_address0;
output   v15430_0_1_ce0;
output  [7:0] v15430_0_1_d0;
input  [7:0] v15430_0_1_q0;
output   v15430_0_1_we0;
output  [16:0] v15430_0_1_address1;
output   v15430_0_1_ce1;
output  [7:0] v15430_0_1_d1;
input  [7:0] v15430_0_1_q1;
output   v15430_0_1_we1;
output  [16:0] v15430_1_0_address0;
output   v15430_1_0_ce0;
output  [7:0] v15430_1_0_d0;
input  [7:0] v15430_1_0_q0;
output   v15430_1_0_we0;
output  [16:0] v15430_1_0_address1;
output   v15430_1_0_ce1;
output  [7:0] v15430_1_0_d1;
input  [7:0] v15430_1_0_q1;
output   v15430_1_0_we1;
output  [16:0] v15430_1_1_address0;
output   v15430_1_1_ce0;
output  [7:0] v15430_1_1_d0;
input  [7:0] v15430_1_1_q0;
output   v15430_1_1_we0;
output  [16:0] v15430_1_1_address1;
output   v15430_1_1_ce1;
output  [7:0] v15430_1_1_d1;
input  [7:0] v15430_1_1_q1;
output   v15430_1_1_we1;
input   v15147_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v15155_i_q0;
wire   [7:0] v15155_t_q0;
wire   [7:0] v15155_1_i_q0;
wire   [7:0] v15155_1_t_q0;
wire   [7:0] v15155_2_i_q0;
wire   [7:0] v15155_2_t_q0;
wire   [7:0] v15155_3_i_q0;
wire   [7:0] v15155_3_t_q0;
wire   [7:0] v15154_i_q0;
wire   [7:0] v15154_t_q0;
wire   [7:0] v15154_1_i_q0;
wire   [7:0] v15154_1_t_q0;
wire   [7:0] v15154_2_i_q0;
wire   [7:0] v15154_2_t_q0;
wire   [7:0] v15154_3_i_q0;
wire   [7:0] v15154_3_t_q0;
wire   [7:0] v15153_i_q0;
wire   [7:0] v15153_t_q0;
wire   [7:0] v15153_1_i_q0;
wire   [7:0] v15153_1_t_q0;
wire   [7:0] v15153_2_i_q0;
wire   [7:0] v15153_2_t_q0;
wire   [7:0] v15153_3_i_q0;
wire   [7:0] v15153_3_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_d0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_0_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_0_0_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_0_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_0_1_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_1_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_1_0_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_1_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_1_1_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_return;
wire    ap_channel_done_v15147_0_c128_channel2;
wire    v15147_0_c128_channel2_full_n;
reg    ap_sync_reg_channel_write_v15147_0_c128_channel2;
wire    ap_sync_channel_write_v15147_0_c128_channel2;
wire    ap_channel_done_v15154_3;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_full_n;
reg    ap_sync_reg_channel_write_v15154_3;
wire    ap_sync_channel_write_v15154_3;
wire    ap_channel_done_v15154_2;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_full_n;
reg    ap_sync_reg_channel_write_v15154_2;
wire    ap_sync_channel_write_v15154_2;
wire    ap_channel_done_v15154_1;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_full_n;
reg    ap_sync_reg_channel_write_v15154_1;
wire    ap_sync_channel_write_v15154_1;
wire    ap_channel_done_v15154;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_full_n;
reg    ap_sync_reg_channel_write_v15154;
wire    ap_sync_channel_write_v15154;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_d0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_0_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_0_0_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_0_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_0_1_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_1_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_1_0_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_1_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_1_1_ce0;
wire    ap_channel_done_v15153_3;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_full_n;
reg    ap_sync_reg_channel_write_v15153_3;
wire    ap_sync_channel_write_v15153_3;
wire    ap_channel_done_v15153_2;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_full_n;
reg    ap_sync_reg_channel_write_v15153_2;
wire    ap_sync_channel_write_v15153_2;
wire    ap_channel_done_v15153_1;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_full_n;
reg    ap_sync_reg_channel_write_v15153_1;
wire    ap_sync_channel_write_v15153_1;
wire    ap_channel_done_v15153;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_full_n;
reg    ap_sync_reg_channel_write_v15153;
wire    ap_sync_channel_write_v15153;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_3_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_3_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_2_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_2_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_return;
wire    ap_channel_done_v15147_0_c_channel1;
wire    v15147_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v15147_0_c_channel1;
wire    ap_sync_channel_write_v15147_0_c_channel1;
wire    ap_channel_done_v15155_3;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_full_n;
reg    ap_sync_reg_channel_write_v15155_3;
wire    ap_sync_channel_write_v15155_3;
wire    ap_channel_done_v15155_2;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_full_n;
reg    ap_sync_reg_channel_write_v15155_2;
wire    ap_sync_channel_write_v15155_2;
wire    ap_channel_done_v15155_1;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_full_n;
reg    ap_sync_reg_channel_write_v15155_1;
wire    ap_sync_channel_write_v15155_1;
wire    ap_channel_done_v15155;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_full_n;
reg    ap_sync_reg_channel_write_v15155;
wire    ap_sync_channel_write_v15155;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_1_d0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_0_d0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_1_d0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_0_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_3_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_2_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_address0;
wire    dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_ce0;
wire    v15154_i_full_n;
wire    v15154_t_empty_n;
wire    v15154_1_i_full_n;
wire    v15154_1_t_empty_n;
wire    v15154_2_i_full_n;
wire    v15154_2_t_empty_n;
wire    v15154_3_i_full_n;
wire    v15154_3_t_empty_n;
wire    v15153_i_full_n;
wire    v15153_t_empty_n;
wire    v15153_1_i_full_n;
wire    v15153_1_t_empty_n;
wire    v15153_2_i_full_n;
wire    v15153_2_t_empty_n;
wire    v15153_3_i_full_n;
wire    v15153_3_t_empty_n;
wire    v15155_i_full_n;
wire    v15155_t_empty_n;
wire    v15155_1_i_full_n;
wire    v15155_1_t_empty_n;
wire    v15155_2_i_full_n;
wire    v15155_2_t_empty_n;
wire    v15155_3_i_full_n;
wire    v15155_3_t_empty_n;
wire   [8:0] v15147_0_c128_channel2_dout;
wire   [2:0] v15147_0_c128_channel2_num_data_valid;
wire   [2:0] v15147_0_c128_channel2_fifo_cap;
wire    v15147_0_c128_channel2_empty_n;
wire   [4:0] v15147_0_c_channel1_dout;
wire   [2:0] v15147_0_c_channel1_num_data_valid;
wire   [2:0] v15147_0_c_channel1_fifo_cap;
wire    v15147_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v15147_0_c128_channel2 = 1'b0;
#0 ap_sync_reg_channel_write_v15154_3 = 1'b0;
#0 ap_sync_reg_channel_write_v15154_2 = 1'b0;
#0 ap_sync_reg_channel_write_v15154_1 = 1'b0;
#0 ap_sync_reg_channel_write_v15154 = 1'b0;
#0 ap_sync_reg_channel_write_v15153_3 = 1'b0;
#0 ap_sync_reg_channel_write_v15153_2 = 1'b0;
#0 ap_sync_reg_channel_write_v15153_1 = 1'b0;
#0 ap_sync_reg_channel_write_v15153 = 1'b0;
#0 ap_sync_reg_channel_write_v15147_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v15155_3 = 1'b0;
#0 ap_sync_reg_channel_write_v15155_2 = 1'b0;
#0 ap_sync_reg_channel_write_v15155_1 = 1'b0;
#0 ap_sync_reg_channel_write_v15155 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v15155_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_d0),.i_q0(v15155_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v15155_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v15155_i_full_n),.i_write(ap_channel_done_v15155),.t_empty_n(v15155_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v15155_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_d0),.i_q0(v15155_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v15155_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v15155_1_i_full_n),.i_write(ap_channel_done_v15155_1),.t_empty_n(v15155_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v15155_2_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_d0),.i_q0(v15155_2_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_2_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_2_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v15155_2_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v15155_2_i_full_n),.i_write(ap_channel_done_v15155_2),.t_empty_n(v15155_2_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v15155_3_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_d0),.i_q0(v15155_3_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_3_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_3_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v15155_3_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v15155_3_i_full_n),.i_write(ap_channel_done_v15155_3),.t_empty_n(v15155_3_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v15154_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_d0),.i_q0(v15154_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v15154_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v15154_i_full_n),.i_write(ap_channel_done_v15154),.t_empty_n(v15154_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v15154_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_d0),.i_q0(v15154_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v15154_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v15154_1_i_full_n),.i_write(ap_channel_done_v15154_1),.t_empty_n(v15154_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v15154_2_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_d0),.i_q0(v15154_2_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_2_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_2_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v15154_2_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v15154_2_i_full_n),.i_write(ap_channel_done_v15154_2),.t_empty_n(v15154_2_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v15154_3_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_d0),.i_q0(v15154_3_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_3_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_3_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v15154_3_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v15154_3_i_full_n),.i_write(ap_channel_done_v15154_3),.t_empty_n(v15154_3_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v15153_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_d0),.i_q0(v15153_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v15153_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v15153_i_full_n),.i_write(ap_channel_done_v15153),.t_empty_n(v15153_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v15153_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_d0),.i_q0(v15153_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v15153_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v15153_1_i_full_n),.i_write(ap_channel_done_v15153_1),.t_empty_n(v15153_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v15153_2_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_d0),.i_q0(v15153_2_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_2_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_2_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v15153_2_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v15153_2_i_full_n),.i_write(ap_channel_done_v15153_2),.t_empty_n(v15153_2_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v15153_3_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_d0),.i_q0(v15153_3_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_3_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_3_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v15153_3_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v15153_3_i_full_n),.i_write(ap_channel_done_v15153_3),.t_empty_n(v15153_3_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43 dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready),.v15154_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_address0),.v15154_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_ce0),.v15154_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_we0),.v15154_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_d0),.v15154_1_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_address0),.v15154_1_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_ce0),.v15154_1_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_we0),.v15154_1_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_d0),.v15154_2_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_address0),.v15154_2_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_ce0),.v15154_2_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_we0),.v15154_2_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_d0),.v15154_3_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_address0),.v15154_3_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_ce0),.v15154_3_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_we0),.v15154_3_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_d0),.v15147_0(v15147_0),.v15430_0_0_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_0_0_address0),.v15430_0_0_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_0_0_ce0),.v15430_0_0_q0(v15430_0_0_q0),.v15430_0_1_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_0_1_address0),.v15430_0_1_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_0_1_ce0),.v15430_0_1_q0(v15430_0_1_q0),.v15430_1_0_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_1_0_address0),.v15430_1_0_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_1_0_ce0),.v15430_1_0_q0(v15430_1_0_q0),.v15430_1_1_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_1_1_address0),.v15430_1_1_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_1_1_ce0),.v15430_1_1_q0(v15430_1_1_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42 dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready),.v15153_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_address0),.v15153_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_ce0),.v15153_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_we0),.v15153_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_d0),.v15153_1_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_address0),.v15153_1_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_ce0),.v15153_1_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_we0),.v15153_1_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_d0),.v15153_2_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_address0),.v15153_2_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_ce0),.v15153_2_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_we0),.v15153_2_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_d0),.v15153_3_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_address0),.v15153_3_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_ce0),.v15153_3_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_we0),.v15153_3_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_d0),.v15147_0(v15147_0),.v15432_0_0_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_0_0_address0),.v15432_0_0_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_0_0_ce0),.v15432_0_0_q0(v15432_0_0_q0),.v15432_0_1_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_0_1_address0),.v15432_0_1_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_0_1_ce0),.v15432_0_1_q0(v15432_0_1_q0),.v15432_1_0_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_1_0_address0),.v15432_1_0_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_1_0_ce0),.v15432_1_0_q0(v15432_1_0_q0),.v15432_1_1_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_1_1_address0),.v15432_1_1_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_1_1_ce0),.v15432_1_1_q0(v15432_1_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_ready),.p_read(v15147_0_c128_channel2_dout),.v15155_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_address0),.v15155_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_ce0),.v15155_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_we0),.v15155_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_d0),.v15155_1_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_address0),.v15155_1_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_ce0),.v15155_1_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_we0),.v15155_1_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_d0),.v15155_2_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_address0),.v15155_2_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_ce0),.v15155_2_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_we0),.v15155_2_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_d0),.v15155_3_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_address0),.v15155_3_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_ce0),.v15155_3_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_we0),.v15155_3_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_d0),.v15154_3_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_3_address0),.v15154_3_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_3_ce0),.v15154_3_q0(v15154_3_t_q0),.v15153_3_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_3_address0),.v15153_3_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_3_ce0),.v15153_3_q0(v15153_3_t_q0),.v15154_2_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_2_address0),.v15154_2_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_2_ce0),.v15154_2_q0(v15154_2_t_q0),.v15153_2_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_2_address0),.v15153_2_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_2_ce0),.v15153_2_q0(v15153_2_t_q0),.v15154_1_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_1_address0),.v15154_1_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_1_ce0),.v15154_1_q0(v15154_1_t_q0),.v15153_1_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_1_address0),.v15153_1_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_1_ce0),.v15153_1_q0(v15153_1_t_q0),.v15154_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_address0),.v15154_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15154_ce0),.v15154_q0(v15154_t_q0),.v15153_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_address0),.v15153_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15153_ce0),.v15153_q0(v15153_t_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44 dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_ready),.v15431_1_1_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_1_address0),.v15431_1_1_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_1_ce0),.v15431_1_1_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_1_we0),.v15431_1_1_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_1_d0),.v15431_1_0_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_0_address0),.v15431_1_0_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_0_ce0),.v15431_1_0_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_0_we0),.v15431_1_0_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_0_d0),.v15431_0_1_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_1_address0),.v15431_0_1_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_1_ce0),.v15431_0_1_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_1_we0),.v15431_0_1_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_1_d0),.v15431_0_0_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_0_address0),.v15431_0_0_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_0_ce0),.v15431_0_0_we0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_0_we0),.v15431_0_0_d0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_0_d0),.p_read(v15147_0_c_channel1_dout),.v15155_3_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_3_address0),.v15155_3_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_3_ce0),.v15155_3_q0(v15155_3_t_q0),.v15155_2_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_2_address0),.v15155_2_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_2_ce0),.v15155_2_q0(v15155_2_t_q0),.v15155_1_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_1_address0),.v15155_1_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_1_ce0),.v15155_1_q0(v15155_1_t_q0),.v15155_address0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_address0),.v15155_ce0(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15155_ce0),.v15155_q0(v15155_t_q0));
forward_fifo_w9_d2_S v15147_0_c128_channel2_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_return),.if_full_n(v15147_0_c128_channel2_full_n),.if_write(ap_channel_done_v15147_0_c128_channel2),.if_dout(v15147_0_c128_channel2_dout),.if_num_data_valid(v15147_0_c128_channel2_num_data_valid),.if_fifo_cap(v15147_0_c128_channel2_fifo_cap),.if_empty_n(v15147_0_c128_channel2_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_ready));
forward_fifo_w5_d2_S_x v15147_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_return),.if_full_n(v15147_0_c_channel1_full_n),.if_write(ap_channel_done_v15147_0_c_channel1),.if_dout(v15147_0_c_channel1_dout),.if_num_data_valid(v15147_0_c_channel1_num_data_valid),.if_fifo_cap(v15147_0_c_channel1_fifo_cap),.if_empty_n(v15147_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15147_0_c128_channel2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15147_0_c128_channel2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15147_0_c128_channel2 <= ap_sync_channel_write_v15147_0_c128_channel2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15147_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15147_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15147_0_c_channel1 <= ap_sync_channel_write_v15147_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15153 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15153 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15153 <= ap_sync_channel_write_v15153;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15153_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15153_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15153_1 <= ap_sync_channel_write_v15153_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15153_2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15153_2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15153_2 <= ap_sync_channel_write_v15153_2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15153_3 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15153_3 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15153_3 <= ap_sync_channel_write_v15153_3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15154 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15154 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15154 <= ap_sync_channel_write_v15154;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15154_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15154_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15154_1 <= ap_sync_channel_write_v15154_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15154_2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15154_2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15154_2 <= ap_sync_channel_write_v15154_2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15154_3 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15154_3 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15154_3 <= ap_sync_channel_write_v15154_3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15155 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15155 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15155 <= ap_sync_channel_write_v15155;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15155_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15155_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15155_1 <= ap_sync_channel_write_v15155_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15155_2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15155_2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15155_2 <= ap_sync_channel_write_v15155_2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v15155_3 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v15155_3 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v15155_3 <= ap_sync_channel_write_v15155_3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v15147_0_c128_channel2 = ((ap_sync_reg_channel_write_v15147_0_c128_channel2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_done);
assign ap_channel_done_v15147_0_c_channel1 = ((ap_sync_reg_channel_write_v15147_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_done);
assign ap_channel_done_v15153 = ((ap_sync_reg_channel_write_v15153 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_done);
assign ap_channel_done_v15153_1 = ((ap_sync_reg_channel_write_v15153_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_done);
assign ap_channel_done_v15153_2 = ((ap_sync_reg_channel_write_v15153_2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_done);
assign ap_channel_done_v15153_3 = ((ap_sync_reg_channel_write_v15153_3 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_done);
assign ap_channel_done_v15154 = ((ap_sync_reg_channel_write_v15154 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_done);
assign ap_channel_done_v15154_1 = ((ap_sync_reg_channel_write_v15154_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_done);
assign ap_channel_done_v15154_2 = ((ap_sync_reg_channel_write_v15154_2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_done);
assign ap_channel_done_v15154_3 = ((ap_sync_reg_channel_write_v15154_3 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_done);
assign ap_channel_done_v15155 = ((ap_sync_reg_channel_write_v15155 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_done);
assign ap_channel_done_v15155_1 = ((ap_sync_reg_channel_write_v15155_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_done);
assign ap_channel_done_v15155_2 = ((ap_sync_reg_channel_write_v15155_2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_done);
assign ap_channel_done_v15155_3 = ((ap_sync_reg_channel_write_v15155_3 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_done;
assign ap_idle = ((v15147_0_c_channel1_empty_n ^ 1'b1) & (v15147_0_c128_channel2_empty_n ^ 1'b1) & (v15155_3_t_empty_n ^ 1'b1) & (v15155_2_t_empty_n ^ 1'b1) & (v15155_1_t_empty_n ^ 1'b1) & (v15155_t_empty_n ^ 1'b1) & (v15153_3_t_empty_n ^ 1'b1) & (v15153_2_t_empty_n ^ 1'b1) & (v15153_1_t_empty_n ^ 1'b1) & (v15153_t_empty_n ^ 1'b1) & (v15154_3_t_empty_n ^ 1'b1) & (v15154_2_t_empty_n ^ 1'b1) & (v15154_1_t_empty_n ^ 1'b1) & (v15154_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v15147_0_c128_channel2 = ((v15147_0_c128_channel2_full_n & ap_channel_done_v15147_0_c128_channel2) | ap_sync_reg_channel_write_v15147_0_c128_channel2);
assign ap_sync_channel_write_v15147_0_c_channel1 = ((v15147_0_c_channel1_full_n & ap_channel_done_v15147_0_c_channel1) | ap_sync_reg_channel_write_v15147_0_c_channel1);
assign ap_sync_channel_write_v15153 = ((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_full_n & ap_channel_done_v15153) | ap_sync_reg_channel_write_v15153);
assign ap_sync_channel_write_v15153_1 = ((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_full_n & ap_channel_done_v15153_1) | ap_sync_reg_channel_write_v15153_1);
assign ap_sync_channel_write_v15153_2 = ((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_full_n & ap_channel_done_v15153_2) | ap_sync_reg_channel_write_v15153_2);
assign ap_sync_channel_write_v15153_3 = ((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_full_n & ap_channel_done_v15153_3) | ap_sync_reg_channel_write_v15153_3);
assign ap_sync_channel_write_v15154 = ((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_full_n & ap_channel_done_v15154) | ap_sync_reg_channel_write_v15154);
assign ap_sync_channel_write_v15154_1 = ((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_full_n & ap_channel_done_v15154_1) | ap_sync_reg_channel_write_v15154_1);
assign ap_sync_channel_write_v15154_2 = ((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_full_n & ap_channel_done_v15154_2) | ap_sync_reg_channel_write_v15154_2);
assign ap_sync_channel_write_v15154_3 = ((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_full_n & ap_channel_done_v15154_3) | ap_sync_reg_channel_write_v15154_3);
assign ap_sync_channel_write_v15155 = ((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_full_n & ap_channel_done_v15155) | ap_sync_reg_channel_write_v15155);
assign ap_sync_channel_write_v15155_1 = ((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_full_n & ap_channel_done_v15155_1) | ap_sync_reg_channel_write_v15155_1);
assign ap_sync_channel_write_v15155_2 = ((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_full_n & ap_channel_done_v15155_2) | ap_sync_reg_channel_write_v15155_2);
assign ap_sync_channel_write_v15155_3 = ((dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_full_n & ap_channel_done_v15155_3) | ap_sync_reg_channel_write_v15155_3);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_ap_start = (v15155_t_empty_n & v15155_3_t_empty_n & v15155_2_t_empty_n & v15155_1_t_empty_n & v15147_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_continue = (ap_sync_channel_write_v15155_3 & ap_sync_channel_write_v15155_2 & ap_sync_channel_write_v15155_1 & ap_sync_channel_write_v15155 & ap_sync_channel_write_v15147_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_ap_start = (v15154_t_empty_n & v15154_3_t_empty_n & v15154_2_t_empty_n & v15154_1_t_empty_n & v15153_t_empty_n & v15153_3_t_empty_n & v15153_2_t_empty_n & v15153_1_t_empty_n & v15147_0_c128_channel2_empty_n);
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_1_full_n = v15155_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_2_full_n = v15155_2_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_3_full_n = v15155_3_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19756_1_proc_U0_v15155_full_n = v15155_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_continue = (ap_sync_channel_write_v15153_3 & ap_sync_channel_write_v15153_2 & ap_sync_channel_write_v15153_1 & ap_sync_channel_write_v15153);
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_1_full_n = v15153_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_2_full_n = v15153_2_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_3_full_n = v15153_3_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15153_full_n = v15153_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_continue = (ap_sync_channel_write_v15154_3 & ap_sync_channel_write_v15154_2 & ap_sync_channel_write_v15154_1 & ap_sync_channel_write_v15154 & ap_sync_channel_write_v15147_0_c128_channel2);
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_1_full_n = v15154_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_2_full_n = v15154_2_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_3_full_n = v15154_3_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15154_full_n = v15154_i_full_n;
assign v15430_0_0_address0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_0_0_address0;
assign v15430_0_0_address1 = 17'd0;
assign v15430_0_0_ce0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_0_0_ce0;
assign v15430_0_0_ce1 = 1'b0;
assign v15430_0_0_d0 = 8'd0;
assign v15430_0_0_d1 = 8'd0;
assign v15430_0_0_we0 = 1'b0;
assign v15430_0_0_we1 = 1'b0;
assign v15430_0_1_address0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_0_1_address0;
assign v15430_0_1_address1 = 17'd0;
assign v15430_0_1_ce0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_0_1_ce0;
assign v15430_0_1_ce1 = 1'b0;
assign v15430_0_1_d0 = 8'd0;
assign v15430_0_1_d1 = 8'd0;
assign v15430_0_1_we0 = 1'b0;
assign v15430_0_1_we1 = 1'b0;
assign v15430_1_0_address0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_1_0_address0;
assign v15430_1_0_address1 = 17'd0;
assign v15430_1_0_ce0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_1_0_ce0;
assign v15430_1_0_ce1 = 1'b0;
assign v15430_1_0_d0 = 8'd0;
assign v15430_1_0_d1 = 8'd0;
assign v15430_1_0_we0 = 1'b0;
assign v15430_1_0_we1 = 1'b0;
assign v15430_1_1_address0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_1_1_address0;
assign v15430_1_1_address1 = 17'd0;
assign v15430_1_1_ce0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19859_1_proc43_U0_v15430_1_1_ce0;
assign v15430_1_1_ce1 = 1'b0;
assign v15430_1_1_d0 = 8'd0;
assign v15430_1_1_d1 = 8'd0;
assign v15430_1_1_we0 = 1'b0;
assign v15430_1_1_we1 = 1'b0;
assign v15431_0_0_address0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_0_address0;
assign v15431_0_0_address1 = 17'd0;
assign v15431_0_0_ce0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_0_ce0;
assign v15431_0_0_ce1 = 1'b0;
assign v15431_0_0_d0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_0_d0;
assign v15431_0_0_d1 = 8'd0;
assign v15431_0_0_we0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_0_we0;
assign v15431_0_0_we1 = 1'b0;
assign v15431_0_1_address0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_1_address0;
assign v15431_0_1_address1 = 17'd0;
assign v15431_0_1_ce0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_1_ce0;
assign v15431_0_1_ce1 = 1'b0;
assign v15431_0_1_d0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_1_d0;
assign v15431_0_1_d1 = 8'd0;
assign v15431_0_1_we0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_0_1_we0;
assign v15431_0_1_we1 = 1'b0;
assign v15431_1_0_address0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_0_address0;
assign v15431_1_0_address1 = 17'd0;
assign v15431_1_0_ce0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_0_ce0;
assign v15431_1_0_ce1 = 1'b0;
assign v15431_1_0_d0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_0_d0;
assign v15431_1_0_d1 = 8'd0;
assign v15431_1_0_we0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_0_we0;
assign v15431_1_0_we1 = 1'b0;
assign v15431_1_1_address0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_1_address0;
assign v15431_1_1_address1 = 17'd0;
assign v15431_1_1_ce0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_1_ce0;
assign v15431_1_1_ce1 = 1'b0;
assign v15431_1_1_d0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_1_d0;
assign v15431_1_1_d1 = 8'd0;
assign v15431_1_1_we0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19715_1_proc44_U0_v15431_1_1_we0;
assign v15431_1_1_we1 = 1'b0;
assign v15432_0_0_address0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_0_0_address0;
assign v15432_0_0_address1 = 17'd0;
assign v15432_0_0_ce0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_0_0_ce0;
assign v15432_0_0_ce1 = 1'b0;
assign v15432_0_0_d0 = 8'd0;
assign v15432_0_0_d1 = 8'd0;
assign v15432_0_0_we0 = 1'b0;
assign v15432_0_0_we1 = 1'b0;
assign v15432_0_1_address0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_0_1_address0;
assign v15432_0_1_address1 = 17'd0;
assign v15432_0_1_ce0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_0_1_ce0;
assign v15432_0_1_ce1 = 1'b0;
assign v15432_0_1_d0 = 8'd0;
assign v15432_0_1_d1 = 8'd0;
assign v15432_0_1_we0 = 1'b0;
assign v15432_0_1_we1 = 1'b0;
assign v15432_1_0_address0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_1_0_address0;
assign v15432_1_0_address1 = 17'd0;
assign v15432_1_0_ce0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_1_0_ce0;
assign v15432_1_0_ce1 = 1'b0;
assign v15432_1_0_d0 = 8'd0;
assign v15432_1_0_d1 = 8'd0;
assign v15432_1_0_we0 = 1'b0;
assign v15432_1_0_we1 = 1'b0;
assign v15432_1_1_address0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_1_1_address0;
assign v15432_1_1_address1 = 17'd0;
assign v15432_1_1_ce0 = dataflow_in_loop_VITIS_LOOP_19896_1_Loop_VITIS_LOOP_19825_1_proc42_U0_v15432_1_1_ce0;
assign v15432_1_1_ce1 = 1'b0;
assign v15432_1_1_d0 = 8'd0;
assign v15432_1_1_d1 = 8'd0;
assign v15432_1_1_we0 = 1'b0;
assign v15432_1_1_we1 = 1'b0;
endmodule 