
module forward_dataflow_in_loop_VITIS_LOOP_12497_1 (ap_clk,ap_rst,v9706_0,v13712_1_address0,v13712_1_ce0,v13712_1_d0,v13712_1_q0,v13712_1_we0,v13712_1_address1,v13712_1_ce1,v13712_1_d1,v13712_1_q1,v13712_1_we1,v13712_0_address0,v13712_0_ce0,v13712_0_d0,v13712_0_q0,v13712_0_we0,v13712_0_address1,v13712_0_ce1,v13712_0_d1,v13712_0_q1,v13712_0_we1,v13713_0_address0,v13713_0_ce0,v13713_0_d0,v13713_0_q0,v13713_0_we0,v13713_0_address1,v13713_0_ce1,v13713_0_d1,v13713_0_q1,v13713_0_we1,v13713_1_address0,v13713_1_ce0,v13713_1_d0,v13713_1_q0,v13713_1_we0,v13713_1_address1,v13713_1_ce1,v13713_1_d1,v13713_1_q1,v13713_1_we1,v13711_0_address0,v13711_0_ce0,v13711_0_d0,v13711_0_q0,v13711_0_we0,v13711_0_address1,v13711_0_ce1,v13711_0_d1,v13711_0_q1,v13711_0_we1,v13711_1_address0,v13711_1_ce0,v13711_1_d0,v13711_1_q0,v13711_1_we0,v13711_1_address1,v13711_1_ce1,v13711_1_d1,v13711_1_q1,v13711_1_we1,v13711_2_address0,v13711_2_ce0,v13711_2_d0,v13711_2_q0,v13711_2_we0,v13711_2_address1,v13711_2_ce1,v13711_2_d1,v13711_2_q1,v13711_2_we1,v13711_3_address0,v13711_3_ce0,v13711_3_d0,v13711_3_q0,v13711_3_we0,v13711_3_address1,v13711_3_ce1,v13711_3_d1,v13711_3_q1,v13711_3_we1,v9706_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [6:0] v9706_0;
output  [17:0] v13712_1_address0;
output   v13712_1_ce0;
output  [7:0] v13712_1_d0;
input  [7:0] v13712_1_q0;
output   v13712_1_we0;
output  [17:0] v13712_1_address1;
output   v13712_1_ce1;
output  [7:0] v13712_1_d1;
input  [7:0] v13712_1_q1;
output   v13712_1_we1;
output  [17:0] v13712_0_address0;
output   v13712_0_ce0;
output  [7:0] v13712_0_d0;
input  [7:0] v13712_0_q0;
output   v13712_0_we0;
output  [17:0] v13712_0_address1;
output   v13712_0_ce1;
output  [7:0] v13712_0_d1;
input  [7:0] v13712_0_q1;
output   v13712_0_we1;
output  [17:0] v13713_0_address0;
output   v13713_0_ce0;
output  [7:0] v13713_0_d0;
input  [7:0] v13713_0_q0;
output   v13713_0_we0;
output  [17:0] v13713_0_address1;
output   v13713_0_ce1;
output  [7:0] v13713_0_d1;
input  [7:0] v13713_0_q1;
output   v13713_0_we1;
output  [17:0] v13713_1_address0;
output   v13713_1_ce0;
output  [7:0] v13713_1_d0;
input  [7:0] v13713_1_q0;
output   v13713_1_we0;
output  [17:0] v13713_1_address1;
output   v13713_1_ce1;
output  [7:0] v13713_1_d1;
input  [7:0] v13713_1_q1;
output   v13713_1_we1;
output  [18:0] v13711_0_address0;
output   v13711_0_ce0;
output  [7:0] v13711_0_d0;
input  [7:0] v13711_0_q0;
output   v13711_0_we0;
output  [18:0] v13711_0_address1;
output   v13711_0_ce1;
output  [7:0] v13711_0_d1;
input  [7:0] v13711_0_q1;
output   v13711_0_we1;
output  [18:0] v13711_1_address0;
output   v13711_1_ce0;
output  [7:0] v13711_1_d0;
input  [7:0] v13711_1_q0;
output   v13711_1_we0;
output  [18:0] v13711_1_address1;
output   v13711_1_ce1;
output  [7:0] v13711_1_d1;
input  [7:0] v13711_1_q1;
output   v13711_1_we1;
output  [18:0] v13711_2_address0;
output   v13711_2_ce0;
output  [7:0] v13711_2_d0;
input  [7:0] v13711_2_q0;
output   v13711_2_we0;
output  [18:0] v13711_2_address1;
output   v13711_2_ce1;
output  [7:0] v13711_2_d1;
input  [7:0] v13711_2_q1;
output   v13711_2_we1;
output  [18:0] v13711_3_address0;
output   v13711_3_ce0;
output  [7:0] v13711_3_d0;
input  [7:0] v13711_3_q0;
output   v13711_3_we0;
output  [18:0] v13711_3_address1;
output   v13711_3_ce1;
output  [7:0] v13711_3_d1;
input  [7:0] v13711_3_q1;
output   v13711_3_we1;
input   v9706_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v9714_i_q0;
wire   [7:0] v9714_t_q0;
wire   [7:0] v9714_1_i_q0;
wire   [7:0] v9714_1_t_q0;
wire   [7:0] v9713_i_q0;
wire   [7:0] v9713_t_q0;
wire   [7:0] v9713_1_i_q0;
wire   [7:0] v9713_1_t_q0;
wire   [7:0] v9712_i_q0;
wire   [7:0] v9712_t_q0;
wire   [7:0] v9712_1_i_q0;
wire   [7:0] v9712_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_d0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_0_ce0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_1_ce0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_2_ce0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_3_ce0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_return;
wire    ap_channel_done_v9706_0_c_channel1;
wire    v9706_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v9706_0_c_channel1;
wire    ap_sync_channel_write_v9706_0_c_channel1;
wire    ap_channel_done_v9713_1;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_full_n;
reg    ap_sync_reg_channel_write_v9713_1;
wire    ap_sync_channel_write_v9713_1;
wire    ap_channel_done_v9713;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_full_n;
reg    ap_sync_reg_channel_write_v9713;
wire    ap_sync_channel_write_v9713;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_d0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v13713_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v13713_0_ce0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v13713_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v13713_1_ce0;
wire    ap_channel_done_v9712_1;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_full_n;
reg    ap_sync_reg_channel_write_v9712_1;
wire    ap_sync_channel_write_v9712_1;
wire    ap_channel_done_v9712;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_full_n;
reg    ap_sync_reg_channel_write_v9712;
wire    ap_sync_channel_write_v9712;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9713_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9713_1_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9712_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9712_1_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9713_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9713_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9712_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9712_ce0;
wire    ap_channel_done_v9714_1;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_full_n;
reg    ap_sync_reg_channel_write_v9714_1;
wire    ap_sync_channel_write_v9714_1;
wire    ap_channel_done_v9714;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_full_n;
reg    ap_sync_reg_channel_write_v9714;
wire    ap_sync_channel_write_v9714;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_ready;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_1_d0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_0_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v9714_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v9714_1_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v9714_address0;
wire    dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v9714_ce0;
wire    v9713_i_full_n;
wire    v9713_t_empty_n;
wire    v9713_1_i_full_n;
wire    v9713_1_t_empty_n;
wire    v9712_i_full_n;
wire    v9712_t_empty_n;
wire    v9712_1_i_full_n;
wire    v9712_1_t_empty_n;
wire    v9714_i_full_n;
wire    v9714_t_empty_n;
wire    v9714_1_i_full_n;
wire    v9714_1_t_empty_n;
wire   [6:0] v9706_0_c_channel1_dout;
wire   [2:0] v9706_0_c_channel1_num_data_valid;
wire   [2:0] v9706_0_c_channel1_fifo_cap;
wire    v9706_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v9706_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v9713_1 = 1'b0;
#0 ap_sync_reg_channel_write_v9713 = 1'b0;
#0 ap_sync_reg_channel_write_v9712_1 = 1'b0;
#0 ap_sync_reg_channel_write_v9712 = 1'b0;
#0 ap_sync_reg_channel_write_v9714_1 = 1'b0;
#0 ap_sync_reg_channel_write_v9714 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_12497_1_v9714_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12288 ),.AddressWidth( 14 ))
v9714_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_d0),.i_q0(v9714_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v9714_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v9714_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v9714_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v9714_i_full_n),.i_write(ap_channel_done_v9714),.t_empty_n(v9714_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12497_1_v9714_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12288 ),.AddressWidth( 14 ))
v9714_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_d0),.i_q0(v9714_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v9714_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v9714_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v9714_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v9714_1_i_full_n),.i_write(ap_channel_done_v9714_1),.t_empty_n(v9714_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12497_1_v9714_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12288 ),.AddressWidth( 14 ))
v9713_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_d0),.i_q0(v9713_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9713_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9713_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v9713_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v9713_i_full_n),.i_write(ap_channel_done_v9713),.t_empty_n(v9713_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12497_1_v9714_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12288 ),.AddressWidth( 14 ))
v9713_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_d0),.i_q0(v9713_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9713_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9713_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v9713_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v9713_1_i_full_n),.i_write(ap_channel_done_v9713_1),.t_empty_n(v9713_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12497_1_v9714_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12288 ),.AddressWidth( 14 ))
v9712_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_d0),.i_q0(v9712_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9712_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9712_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v9712_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v9712_i_full_n),.i_write(ap_channel_done_v9712),.t_empty_n(v9712_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12497_1_v9714_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12288 ),.AddressWidth( 14 ))
v9712_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_d0),.i_q0(v9712_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9712_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9712_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v9712_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v9712_1_i_full_n),.i_write(ap_channel_done_v9712_1),.t_empty_n(v9712_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62 dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready),.v9713_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_address0),.v9713_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_ce0),.v9713_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_we0),.v9713_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_d0),.v9713_1_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_address0),.v9713_1_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_ce0),.v9713_1_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_we0),.v9713_1_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_d0),.v9706_0(v9706_0),.v13711_0_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_0_address0),.v13711_0_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_0_ce0),.v13711_0_q0(v13711_0_q0),.v13711_1_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_1_address0),.v13711_1_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_1_ce0),.v13711_1_q0(v13711_1_q0),.v13711_2_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_2_address0),.v13711_2_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_2_ce0),.v13711_2_q0(v13711_2_q0),.v13711_3_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_3_address0),.v13711_3_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_3_ce0),.v13711_3_q0(v13711_3_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61 dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready),.v9712_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_address0),.v9712_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_ce0),.v9712_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_we0),.v9712_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_d0),.v9712_1_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_address0),.v9712_1_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_ce0),.v9712_1_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_we0),.v9712_1_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_d0),.v9706_0(v9706_0),.v13713_0_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v13713_0_address0),.v13713_0_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v13713_0_ce0),.v13713_0_q0(v13713_0_q0),.v13713_1_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v13713_1_address0),.v13713_1_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v13713_1_ce0),.v13713_1_q0(v13713_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_ready),.v9714_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_address0),.v9714_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_ce0),.v9714_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_we0),.v9714_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_d0),.v9714_1_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_address0),.v9714_1_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_ce0),.v9714_1_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_we0),.v9714_1_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_d0),.v9713_1_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9713_1_address0),.v9713_1_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9713_1_ce0),.v9713_1_q0(v9713_1_t_q0),.v9712_1_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9712_1_address0),.v9712_1_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9712_1_ce0),.v9712_1_q0(v9712_1_t_q0),.v9713_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9713_address0),.v9713_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9713_ce0),.v9713_q0(v9713_t_q0),.v9712_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9712_address0),.v9712_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9712_ce0),.v9712_q0(v9712_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63 dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_ready),.v13712_1_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_1_address0),.v13712_1_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_1_ce0),.v13712_1_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_1_we0),.v13712_1_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_1_d0),.v13712_0_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_0_address0),.v13712_0_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_0_ce0),.v13712_0_we0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_0_we0),.v13712_0_d0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_0_d0),.p_read(v9706_0_c_channel1_dout),.v9714_1_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v9714_1_address0),.v9714_1_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v9714_1_ce0),.v9714_1_q0(v9714_1_t_q0),.v9714_address0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v9714_address0),.v9714_ce0(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v9714_ce0),.v9714_q0(v9714_t_q0));
forward_fifo_w7_d3_S v9706_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_return),.if_full_n(v9706_0_c_channel1_full_n),.if_write(ap_channel_done_v9706_0_c_channel1),.if_dout(v9706_0_c_channel1_dout),.if_num_data_valid(v9706_0_c_channel1_num_data_valid),.if_fifo_cap(v9706_0_c_channel1_fifo_cap),.if_empty_n(v9706_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v9706_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v9706_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v9706_0_c_channel1 <= ap_sync_channel_write_v9706_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v9712 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v9712 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v9712 <= ap_sync_channel_write_v9712;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v9712_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v9712_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v9712_1 <= ap_sync_channel_write_v9712_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v9713 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v9713 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v9713 <= ap_sync_channel_write_v9713;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v9713_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v9713_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v9713_1 <= ap_sync_channel_write_v9713_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v9714 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v9714 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v9714 <= ap_sync_channel_write_v9714;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v9714_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v9714_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v9714_1 <= ap_sync_channel_write_v9714_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v9706_0_c_channel1 = ((ap_sync_reg_channel_write_v9706_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_done);
assign ap_channel_done_v9712 = ((ap_sync_reg_channel_write_v9712 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_done);
assign ap_channel_done_v9712_1 = ((ap_sync_reg_channel_write_v9712_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_done);
assign ap_channel_done_v9713 = ((ap_sync_reg_channel_write_v9713 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_done);
assign ap_channel_done_v9713_1 = ((ap_sync_reg_channel_write_v9713_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_done);
assign ap_channel_done_v9714 = ((ap_sync_reg_channel_write_v9714 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_done);
assign ap_channel_done_v9714_1 = ((ap_sync_reg_channel_write_v9714_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_done;
assign ap_idle = ((v9706_0_c_channel1_empty_n ^ 1'b1) & (v9714_1_t_empty_n ^ 1'b1) & (v9714_t_empty_n ^ 1'b1) & (v9712_1_t_empty_n ^ 1'b1) & (v9712_t_empty_n ^ 1'b1) & (v9713_1_t_empty_n ^ 1'b1) & (v9713_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v9706_0_c_channel1 = ((v9706_0_c_channel1_full_n & ap_channel_done_v9706_0_c_channel1) | ap_sync_reg_channel_write_v9706_0_c_channel1);
assign ap_sync_channel_write_v9712 = ((dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_full_n & ap_channel_done_v9712) | ap_sync_reg_channel_write_v9712);
assign ap_sync_channel_write_v9712_1 = ((dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_full_n & ap_channel_done_v9712_1) | ap_sync_reg_channel_write_v9712_1);
assign ap_sync_channel_write_v9713 = ((dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_full_n & ap_channel_done_v9713) | ap_sync_reg_channel_write_v9713);
assign ap_sync_channel_write_v9713_1 = ((dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_full_n & ap_channel_done_v9713_1) | ap_sync_reg_channel_write_v9713_1);
assign ap_sync_channel_write_v9714 = ((dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_full_n & ap_channel_done_v9714) | ap_sync_reg_channel_write_v9714);
assign ap_sync_channel_write_v9714_1 = ((dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_full_n & ap_channel_done_v9714_1) | ap_sync_reg_channel_write_v9714_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_ap_start = (v9714_t_empty_n & v9714_1_t_empty_n & v9706_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_continue = (ap_sync_channel_write_v9714_1 & ap_sync_channel_write_v9714);
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_ap_start = (v9713_t_empty_n & v9713_1_t_empty_n & v9712_t_empty_n & v9712_1_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_1_full_n = v9714_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12412_1_proc_U0_v9714_full_n = v9714_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_continue = (ap_sync_channel_write_v9712_1 & ap_sync_channel_write_v9712);
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_1_full_n = v9712_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v9712_full_n = v9712_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_continue = (ap_sync_channel_write_v9713_1 & ap_sync_channel_write_v9713 & ap_sync_channel_write_v9706_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_1_full_n = v9713_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v9713_full_n = v9713_i_full_n;
assign v13711_0_address0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_0_address0;
assign v13711_0_address1 = 19'd0;
assign v13711_0_ce0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_0_ce0;
assign v13711_0_ce1 = 1'b0;
assign v13711_0_d0 = 8'd0;
assign v13711_0_d1 = 8'd0;
assign v13711_0_we0 = 1'b0;
assign v13711_0_we1 = 1'b0;
assign v13711_1_address0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_1_address0;
assign v13711_1_address1 = 19'd0;
assign v13711_1_ce0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_1_ce0;
assign v13711_1_ce1 = 1'b0;
assign v13711_1_d0 = 8'd0;
assign v13711_1_d1 = 8'd0;
assign v13711_1_we0 = 1'b0;
assign v13711_1_we1 = 1'b0;
assign v13711_2_address0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_2_address0;
assign v13711_2_address1 = 19'd0;
assign v13711_2_ce0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_2_ce0;
assign v13711_2_ce1 = 1'b0;
assign v13711_2_d0 = 8'd0;
assign v13711_2_d1 = 8'd0;
assign v13711_2_we0 = 1'b0;
assign v13711_2_we1 = 1'b0;
assign v13711_3_address0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_3_address0;
assign v13711_3_address1 = 19'd0;
assign v13711_3_ce0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12470_1_proc62_U0_v13711_3_ce0;
assign v13711_3_ce1 = 1'b0;
assign v13711_3_d0 = 8'd0;
assign v13711_3_d1 = 8'd0;
assign v13711_3_we0 = 1'b0;
assign v13711_3_we1 = 1'b0;
assign v13712_0_address0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_0_address0;
assign v13712_0_address1 = 18'd0;
assign v13712_0_ce0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_0_ce0;
assign v13712_0_ce1 = 1'b0;
assign v13712_0_d0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_0_d0;
assign v13712_0_d1 = 8'd0;
assign v13712_0_we0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_0_we0;
assign v13712_0_we1 = 1'b0;
assign v13712_1_address0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_1_address0;
assign v13712_1_address1 = 18'd0;
assign v13712_1_ce0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_1_ce0;
assign v13712_1_ce1 = 1'b0;
assign v13712_1_d0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_1_d0;
assign v13712_1_d1 = 8'd0;
assign v13712_1_we0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12384_1_proc63_U0_v13712_1_we0;
assign v13712_1_we1 = 1'b0;
assign v13713_0_address0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v13713_0_address0;
assign v13713_0_address1 = 18'd0;
assign v13713_0_ce0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v13713_0_ce0;
assign v13713_0_ce1 = 1'b0;
assign v13713_0_d0 = 8'd0;
assign v13713_0_d1 = 8'd0;
assign v13713_0_we0 = 1'b0;
assign v13713_0_we1 = 1'b0;
assign v13713_1_address0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v13713_1_address0;
assign v13713_1_address1 = 18'd0;
assign v13713_1_ce0 = dataflow_in_loop_VITIS_LOOP_12497_1_Loop_VITIS_LOOP_12442_1_proc61_U0_v13713_1_ce0;
assign v13713_1_ce1 = 1'b0;
assign v13713_1_d0 = 8'd0;
assign v13713_1_d1 = 8'd0;
assign v13713_1_we0 = 1'b0;
assign v13713_1_we1 = 1'b0;
endmodule 
