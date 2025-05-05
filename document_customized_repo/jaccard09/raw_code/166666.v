module forward_dataflow_in_loop_VITIS_LOOP_1095_1 (ap_clk,ap_rst,v554_0,v9033_1_address0,v9033_1_ce0,v9033_1_d0,v9033_1_q0,v9033_1_we0,v9033_1_address1,v9033_1_ce1,v9033_1_d1,v9033_1_q1,v9033_1_we1,v9033_0_address0,v9033_0_ce0,v9033_0_d0,v9033_0_q0,v9033_0_we0,v9033_0_address1,v9033_0_ce1,v9033_0_d1,v9033_0_q1,v9033_0_we1,v9034_0_address0,v9034_0_ce0,v9034_0_d0,v9034_0_q0,v9034_0_we0,v9034_0_address1,v9034_0_ce1,v9034_0_d1,v9034_0_q1,v9034_0_we1,v9034_1_address0,v9034_1_ce0,v9034_1_d0,v9034_1_q0,v9034_1_we0,v9034_1_address1,v9034_1_ce1,v9034_1_d1,v9034_1_q1,v9034_1_we1,v9032_0_address0,v9032_0_ce0,v9032_0_d0,v9032_0_q0,v9032_0_we0,v9032_0_address1,v9032_0_ce1,v9032_0_d1,v9032_0_q1,v9032_0_we1,v9032_1_address0,v9032_1_ce0,v9032_1_d0,v9032_1_q0,v9032_1_we0,v9032_1_address1,v9032_1_ce1,v9032_1_d1,v9032_1_q1,v9032_1_we1,v554_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [10:0] v554_0;
output  [11:0] v9033_1_address0;
output   v9033_1_ce0;
output  [7:0] v9033_1_d0;
input  [7:0] v9033_1_q0;
output   v9033_1_we0;
output  [11:0] v9033_1_address1;
output   v9033_1_ce1;
output  [7:0] v9033_1_d1;
input  [7:0] v9033_1_q1;
output   v9033_1_we1;
output  [11:0] v9033_0_address0;
output   v9033_0_ce0;
output  [7:0] v9033_0_d0;
input  [7:0] v9033_0_q0;
output   v9033_0_we0;
output  [11:0] v9033_0_address1;
output   v9033_0_ce1;
output  [7:0] v9033_0_d1;
input  [7:0] v9033_0_q1;
output   v9033_0_we1;
output  [11:0] v9034_0_address0;
output   v9034_0_ce0;
output  [7:0] v9034_0_d0;
input  [7:0] v9034_0_q0;
output   v9034_0_we0;
output  [11:0] v9034_0_address1;
output   v9034_0_ce1;
output  [7:0] v9034_0_d1;
input  [7:0] v9034_0_q1;
output   v9034_0_we1;
output  [11:0] v9034_1_address0;
output   v9034_1_ce0;
output  [7:0] v9034_1_d0;
input  [7:0] v9034_1_q0;
output   v9034_1_we0;
output  [11:0] v9034_1_address1;
output   v9034_1_ce1;
output  [7:0] v9034_1_d1;
input  [7:0] v9034_1_q1;
output   v9034_1_we1;
output  [14:0] v9032_0_address0;
output   v9032_0_ce0;
output  [7:0] v9032_0_d0;
input  [7:0] v9032_0_q0;
output   v9032_0_we0;
output  [14:0] v9032_0_address1;
output   v9032_0_ce1;
output  [7:0] v9032_0_d1;
input  [7:0] v9032_0_q1;
output   v9032_0_we1;
output  [14:0] v9032_1_address0;
output   v9032_1_ce0;
output  [7:0] v9032_1_d0;
input  [7:0] v9032_1_q0;
output   v9032_1_we0;
output  [14:0] v9032_1_address1;
output   v9032_1_ce1;
output  [7:0] v9032_1_d1;
input  [7:0] v9032_1_q1;
output   v9032_1_we1;
input   v554_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v562_i_q0;
wire   [7:0] v562_t_q0;
wire   [7:0] v562_1_i_q0;
wire   [7:0] v562_1_t_q0;
wire   [7:0] v561_i_q0;
wire   [7:0] v561_t_q0;
wire   [7:0] v561_1_i_q0;
wire   [7:0] v561_1_t_q0;
wire   [7:0] v560_i_q0;
wire   [7:0] v560_t_q0;
wire   [7:0] v560_1_i_q0;
wire   [7:0] v560_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_d0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v9032_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v9032_0_ce0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v9032_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v9032_1_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_return;
wire    ap_channel_done_v554_0_c_channel1;
wire    v554_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v554_0_c_channel1;
wire    ap_sync_channel_write_v554_0_c_channel1;
wire    ap_channel_done_v561_1;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_full_n;
reg    ap_sync_reg_channel_write_v561_1;
wire    ap_sync_channel_write_v561_1;
wire    ap_channel_done_v561;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_full_n;
reg    ap_sync_reg_channel_write_v561;
wire    ap_sync_channel_write_v561;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v9034_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v9034_0_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v9034_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v9034_1_ce0;
wire    ap_channel_done_v560_1;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_full_n;
reg    ap_sync_reg_channel_write_v560_1;
wire    ap_sync_channel_write_v560_1;
wire    ap_channel_done_v560;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_full_n;
reg    ap_sync_reg_channel_write_v560;
wire    ap_sync_channel_write_v560;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v561_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v561_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v560_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v560_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v561_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v561_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v560_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v560_ce0;
wire    ap_channel_done_v562_1;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_full_n;
reg    ap_sync_reg_channel_write_v562_1;
wire    ap_sync_channel_write_v562_1;
wire    ap_channel_done_v562;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_full_n;
reg    ap_sync_reg_channel_write_v562;
wire    ap_sync_channel_write_v562;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_1_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_0_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v562_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v562_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v562_address0;
wire    dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v562_ce0;
wire    v561_i_full_n;
wire    v561_t_empty_n;
wire    v561_1_i_full_n;
wire    v561_1_t_empty_n;
wire    v560_i_full_n;
wire    v560_t_empty_n;
wire    v560_1_i_full_n;
wire    v560_1_t_empty_n;
wire    v562_i_full_n;
wire    v562_t_empty_n;
wire    v562_1_i_full_n;
wire    v562_1_t_empty_n;
wire   [10:0] v554_0_c_channel1_dout;
wire   [2:0] v554_0_c_channel1_num_data_valid;
wire   [2:0] v554_0_c_channel1_fifo_cap;
wire    v554_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v554_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v561_1 = 1'b0;
#0 ap_sync_reg_channel_write_v561 = 1'b0;
#0 ap_sync_reg_channel_write_v560_1 = 1'b0;
#0 ap_sync_reg_channel_write_v560 = 1'b0;
#0 ap_sync_reg_channel_write_v562_1 = 1'b0;
#0 ap_sync_reg_channel_write_v562 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_1095_1_v562_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v562_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_d0),.i_q0(v562_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v562_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v562_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v562_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v562_i_full_n),.i_write(ap_channel_done_v562),.t_empty_n(v562_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_1095_1_v562_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v562_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_d0),.i_q0(v562_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v562_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v562_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v562_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v562_1_i_full_n),.i_write(ap_channel_done_v562_1),.t_empty_n(v562_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_1095_1_v562_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v561_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_d0),.i_q0(v561_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v561_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v561_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v561_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v561_i_full_n),.i_write(ap_channel_done_v561),.t_empty_n(v561_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_1095_1_v562_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v561_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_d0),.i_q0(v561_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v561_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v561_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v561_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v561_1_i_full_n),.i_write(ap_channel_done_v561_1),.t_empty_n(v561_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_1095_1_v562_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v560_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_d0),.i_q0(v560_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v560_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v560_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v560_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v560_i_full_n),.i_write(ap_channel_done_v560),.t_empty_n(v560_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_1095_1_v562_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v560_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_d0),.i_q0(v560_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v560_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v560_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v560_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v560_1_i_full_n),.i_write(ap_channel_done_v560_1),.t_empty_n(v560_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready),.v561_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_address0),.v561_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_ce0),.v561_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_we0),.v561_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_d0),.v561_1_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_address0),.v561_1_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_ce0),.v561_1_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_we0),.v561_1_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_d0),.v554_0(v554_0),.v9032_0_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v9032_0_address0),.v9032_0_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v9032_0_ce0),.v9032_0_q0(v9032_0_q0),.v9032_1_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v9032_1_address0),.v9032_1_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v9032_1_ce0),.v9032_1_q0(v9032_1_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready),.v560_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_address0),.v560_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_ce0),.v560_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_we0),.v560_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_d0),.v560_1_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_address0),.v560_1_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_ce0),.v560_1_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_we0),.v560_1_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_d0),.v554_0(v554_0),.v9034_0_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v9034_0_address0),.v9034_0_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v9034_0_ce0),.v9034_0_q0(v9034_0_q0),.v9034_1_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v9034_1_address0),.v9034_1_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v9034_1_ce0),.v9034_1_q0(v9034_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_ready),.v562_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_address0),.v562_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_ce0),.v562_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_we0),.v562_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_d0),.v562_1_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_address0),.v562_1_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_ce0),.v562_1_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_we0),.v562_1_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_d0),.v561_1_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v561_1_address0),.v561_1_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v561_1_ce0),.v561_1_q0(v561_1_t_q0),.v560_1_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v560_1_address0),.v560_1_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v560_1_ce0),.v560_1_q0(v560_1_t_q0),.v561_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v561_address0),.v561_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v561_ce0),.v561_q0(v561_t_q0),.v560_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v560_address0),.v560_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v560_ce0),.v560_q0(v560_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_ready),.v9033_1_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_1_address0),.v9033_1_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_1_ce0),.v9033_1_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_1_we0),.v9033_1_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_1_d0),.v9033_0_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_0_address0),.v9033_0_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_0_ce0),.v9033_0_we0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_0_we0),.v9033_0_d0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_0_d0),.v562_1_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v562_1_address0),.v562_1_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v562_1_ce0),.v562_1_q0(v562_1_t_q0),.p_read(v554_0_c_channel1_dout),.v562_address0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v562_address0),.v562_ce0(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v562_ce0),.v562_q0(v562_t_q0));
forward_fifo_w11_d3_S v554_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_return),.if_full_n(v554_0_c_channel1_full_n),.if_write(ap_channel_done_v554_0_c_channel1),.if_dout(v554_0_c_channel1_dout),.if_num_data_valid(v554_0_c_channel1_num_data_valid),.if_fifo_cap(v554_0_c_channel1_fifo_cap),.if_empty_n(v554_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v554_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v554_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v554_0_c_channel1 <= ap_sync_channel_write_v554_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v560 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v560 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v560 <= ap_sync_channel_write_v560;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v560_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v560_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v560_1 <= ap_sync_channel_write_v560_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v561 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v561 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v561 <= ap_sync_channel_write_v561;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v561_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v561_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v561_1 <= ap_sync_channel_write_v561_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v562 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v562 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v562 <= ap_sync_channel_write_v562;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v562_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v562_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v562_1 <= ap_sync_channel_write_v562_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v554_0_c_channel1 = ((ap_sync_reg_channel_write_v554_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_done);
assign ap_channel_done_v560 = ((ap_sync_reg_channel_write_v560 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_done);
assign ap_channel_done_v560_1 = ((ap_sync_reg_channel_write_v560_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_done);
assign ap_channel_done_v561 = ((ap_sync_reg_channel_write_v561 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_done);
assign ap_channel_done_v561_1 = ((ap_sync_reg_channel_write_v561_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_done);
assign ap_channel_done_v562 = ((ap_sync_reg_channel_write_v562 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_done);
assign ap_channel_done_v562_1 = ((ap_sync_reg_channel_write_v562_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_done;
assign ap_idle = ((v554_0_c_channel1_empty_n ^ 1'b1) & (v562_1_t_empty_n ^ 1'b1) & (v562_t_empty_n ^ 1'b1) & (v560_1_t_empty_n ^ 1'b1) & (v560_t_empty_n ^ 1'b1) & (v561_1_t_empty_n ^ 1'b1) & (v561_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v554_0_c_channel1 = ((v554_0_c_channel1_full_n & ap_channel_done_v554_0_c_channel1) | ap_sync_reg_channel_write_v554_0_c_channel1);
assign ap_sync_channel_write_v560 = ((dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_full_n & ap_channel_done_v560) | ap_sync_reg_channel_write_v560);
assign ap_sync_channel_write_v560_1 = ((dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_full_n & ap_channel_done_v560_1) | ap_sync_reg_channel_write_v560_1);
assign ap_sync_channel_write_v561 = ((dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_full_n & ap_channel_done_v561) | ap_sync_reg_channel_write_v561);
assign ap_sync_channel_write_v561_1 = ((dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_full_n & ap_channel_done_v561_1) | ap_sync_reg_channel_write_v561_1);
assign ap_sync_channel_write_v562 = ((dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_full_n & ap_channel_done_v562) | ap_sync_reg_channel_write_v562);
assign ap_sync_channel_write_v562_1 = ((dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_full_n & ap_channel_done_v562_1) | ap_sync_reg_channel_write_v562_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_continue = (ap_sync_channel_write_v562_1 & ap_sync_channel_write_v562);
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_ap_start = (v561_t_empty_n & v561_1_t_empty_n & v560_t_empty_n & v560_1_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_1_full_n = v562_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1022_1_proc_U0_v562_full_n = v562_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_continue = (ap_sync_channel_write_v560_1 & ap_sync_channel_write_v560);
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_1_full_n = v560_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v560_full_n = v560_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_continue = (ap_sync_channel_write_v561_1 & ap_sync_channel_write_v561 & ap_sync_channel_write_v554_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_1_full_n = v561_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v561_full_n = v561_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_ap_start = (v562_t_empty_n & v562_1_t_empty_n & v554_0_c_channel1_empty_n);
assign v9032_0_address0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v9032_0_address0;
assign v9032_0_address1 = 15'd0;
assign v9032_0_ce0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v9032_0_ce0;
assign v9032_0_ce1 = 1'b0;
assign v9032_0_d0 = 8'd0;
assign v9032_0_d1 = 8'd0;
assign v9032_0_we0 = 1'b0;
assign v9032_0_we1 = 1'b0;
assign v9032_1_address0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v9032_1_address0;
assign v9032_1_address1 = 15'd0;
assign v9032_1_ce0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1072_1_proc_U0_v9032_1_ce0;
assign v9032_1_ce1 = 1'b0;
assign v9032_1_d0 = 8'd0;
assign v9032_1_d1 = 8'd0;
assign v9032_1_we0 = 1'b0;
assign v9032_1_we1 = 1'b0;
assign v9033_0_address0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_0_address0;
assign v9033_0_address1 = 12'd0;
assign v9033_0_ce0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_0_ce0;
assign v9033_0_ce1 = 1'b0;
assign v9033_0_d0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_0_d0;
assign v9033_0_d1 = 8'd0;
assign v9033_0_we0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_0_we0;
assign v9033_0_we1 = 1'b0;
assign v9033_1_address0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_1_address0;
assign v9033_1_address1 = 12'd0;
assign v9033_1_ce0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_1_ce0;
assign v9033_1_ce1 = 1'b0;
assign v9033_1_d0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_1_d0;
assign v9033_1_d1 = 8'd0;
assign v9033_1_we0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_998_1_proc_U0_v9033_1_we0;
assign v9033_1_we1 = 1'b0;
assign v9034_0_address0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v9034_0_address0;
assign v9034_0_address1 = 12'd0;
assign v9034_0_ce0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v9034_0_ce0;
assign v9034_0_ce1 = 1'b0;
assign v9034_0_d0 = 8'd0;
assign v9034_0_d1 = 8'd0;
assign v9034_0_we0 = 1'b0;
assign v9034_0_we1 = 1'b0;
assign v9034_1_address0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v9034_1_address0;
assign v9034_1_address1 = 12'd0;
assign v9034_1_ce0 = dataflow_in_loop_VITIS_LOOP_1095_1_Loop_VITIS_LOOP_1048_1_proc_U0_v9034_1_ce0;
assign v9034_1_ce1 = 1'b0;
assign v9034_1_d0 = 8'd0;
assign v9034_1_d1 = 8'd0;
assign v9034_1_we0 = 1'b0;
assign v9034_1_we1 = 1'b0;
endmodule 