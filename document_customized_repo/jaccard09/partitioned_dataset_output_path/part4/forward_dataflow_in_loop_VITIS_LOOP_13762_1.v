
module forward_dataflow_in_loop_VITIS_LOOP_13762_1 (ap_clk,ap_rst,v11058_0,v15467_address0,v15467_ce0,v15467_d0,v15467_q0,v15467_we0,v15467_address1,v15467_ce1,v15467_d1,v15467_q1,v15467_we1,v15468_address0,v15468_ce0,v15468_d0,v15468_q0,v15468_we0,v15468_address1,v15468_ce1,v15468_d1,v15468_q1,v15468_we1,v15422_address0,v15422_ce0,v15422_d0,v15422_q0,v15422_we0,v15422_address1,v15422_ce1,v15422_d1,v15422_q1,v15422_we1,v15466_address0,v15466_ce0,v15466_d0,v15466_q0,v15466_we0,v15466_address1,v15466_ce1,v15466_d1,v15466_q1,v15466_we1,v11058_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [9:0] v11058_0;
output  [16:0] v15467_address0;
output   v15467_ce0;
output  [7:0] v15467_d0;
input  [7:0] v15467_q0;
output   v15467_we0;
output  [16:0] v15467_address1;
output   v15467_ce1;
output  [7:0] v15467_d1;
input  [7:0] v15467_q1;
output   v15467_we1;
output  [16:0] v15468_address0;
output   v15468_ce0;
output  [7:0] v15468_d0;
input  [7:0] v15468_q0;
output   v15468_we0;
output  [16:0] v15468_address1;
output   v15468_ce1;
output  [7:0] v15468_d1;
input  [7:0] v15468_q1;
output   v15468_we1;
output  [12:0] v15422_address0;
output   v15422_ce0;
output  [7:0] v15422_d0;
input  [7:0] v15422_q0;
output   v15422_we0;
output  [12:0] v15422_address1;
output   v15422_ce1;
output  [7:0] v15422_d1;
input  [7:0] v15422_q1;
output   v15422_we1;
output  [16:0] v15466_address0;
output   v15466_ce0;
output  [7:0] v15466_d0;
input  [7:0] v15466_q0;
output   v15466_we0;
output  [16:0] v15466_address1;
output   v15466_ce1;
output  [7:0] v15466_d1;
input  [7:0] v15466_q1;
output   v15466_we1;
input   v11058_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v11067_i_q0;
wire   [7:0] v11067_t_q0;
wire   [7:0] v11066_i_q0;
wire   [7:0] v11066_t_q0;
wire   [7:0] v11065_i_q0;
wire   [7:0] v11065_t_q0;
wire   [7:0] v11064_i_q0;
wire   [7:0] v11064_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v15466_address0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v15466_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v11066_address0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v11066_ce0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v11066_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v11066_d0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v15422_address0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v15422_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_address0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_ce0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_return;
wire    ap_channel_done_v11058_0_c71_channel2;
wire    v11058_0_c71_channel2_full_n;
reg    ap_sync_reg_channel_write_v11058_0_c71_channel2;
wire    ap_sync_channel_write_v11058_0_c71_channel2;
wire    ap_channel_done_v11065;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_full_n;
reg    ap_sync_reg_channel_write_v11065;
wire    ap_sync_channel_write_v11065;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v15468_address0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v15468_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v11064_address0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v11064_ce0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v11064_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v11064_d0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11065_address0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11065_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11066_address0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11066_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11064_address0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11064_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_address0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_ce0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_d0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_return;
wire    ap_channel_done_v11058_0_c_channel1;
wire    v11058_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v11058_0_c_channel1;
wire    ap_sync_channel_write_v11058_0_c_channel1;
wire    ap_channel_done_v11067;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_full_n;
reg    ap_sync_reg_channel_write_v11067;
wire    ap_sync_channel_write_v11067;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_ready;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v11067_address0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v11067_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v15467_address0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v15467_ce0;
wire    dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v15467_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v15467_d0;
wire    v11066_i_full_n;
wire    v11066_t_empty_n;
wire    v11065_i_full_n;
wire    v11065_t_empty_n;
wire    v11064_i_full_n;
wire    v11064_t_empty_n;
wire    v11067_i_full_n;
wire    v11067_t_empty_n;
wire   [9:0] v11058_0_c71_channel2_dout;
wire   [2:0] v11058_0_c71_channel2_num_data_valid;
wire   [2:0] v11058_0_c71_channel2_fifo_cap;
wire    v11058_0_c71_channel2_empty_n;
wire   [5:0] v11058_0_c_channel1_dout;
wire   [2:0] v11058_0_c_channel1_num_data_valid;
wire   [2:0] v11058_0_c_channel1_fifo_cap;
wire    v11058_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v11058_0_c71_channel2 = 1'b0;
#0 ap_sync_reg_channel_write_v11065 = 1'b0;
#0 ap_sync_reg_channel_write_v11058_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v11067 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v11067_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_d0),.i_q0(v11067_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v11067_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v11067_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11067_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11067_i_full_n),.i_write(ap_channel_done_v11067),.t_empty_n(v11067_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v11066_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v11066_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v11066_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v11066_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v11066_d0),.i_q0(v11066_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11066_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11066_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11066_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11066_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_done),.t_empty_n(v11066_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v11065_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_d0),.i_q0(v11065_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11065_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11065_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11065_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11065_i_full_n),.i_write(ap_channel_done_v11065),.t_empty_n(v11065_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v11064_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v11064_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v11064_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v11064_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v11064_d0),.i_q0(v11064_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11064_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11064_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11064_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11064_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_done),.t_empty_n(v11064_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125 dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready),.v11058_0(v11058_0),.v15466_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v15466_address0),.v15466_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v15466_ce0),.v15466_q0(v15466_q0),.v11066_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v11066_address0),.v11066_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v11066_ce0),.v11066_we0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v11066_we0),.v11066_d0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v11066_d0));
forward_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready),.v11058_0(v11058_0),.v15422_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v15422_address0),.v15422_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v15422_ce0),.v15422_q0(v15422_q0),.v11065_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_address0),.v11065_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_ce0),.v11065_we0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_we0),.v11065_d0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124 dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready),.v11058_0(v11058_0),.v15468_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v15468_address0),.v15468_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v15468_ce0),.v15468_q0(v15468_q0),.v11064_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v11064_address0),.v11064_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v11064_ce0),.v11064_we0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v11064_we0),.v11064_d0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v11064_d0));
forward_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_ready),.p_read(v11058_0_c71_channel2_dout),.v11065_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11065_address0),.v11065_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11065_ce0),.v11065_q0(v11065_t_q0),.v11066_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11066_address0),.v11066_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11066_ce0),.v11066_q0(v11066_t_q0),.v11064_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11064_address0),.v11064_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11064_ce0),.v11064_q0(v11064_t_q0),.v11067_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_address0),.v11067_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_ce0),.v11067_we0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_we0),.v11067_d0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126 dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_ready),.p_read(v11058_0_c_channel1_dout),.v11067_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v11067_address0),.v11067_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v11067_ce0),.v11067_q0(v11067_t_q0),.v15467_address0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v15467_address0),.v15467_ce0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v15467_ce0),.v15467_we0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v15467_we0),.v15467_d0(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v15467_d0));
forward_fifo_w10_d2_S_x v11058_0_c71_channel2_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_return),.if_full_n(v11058_0_c71_channel2_full_n),.if_write(ap_channel_done_v11058_0_c71_channel2),.if_dout(v11058_0_c71_channel2_dout),.if_num_data_valid(v11058_0_c71_channel2_num_data_valid),.if_fifo_cap(v11058_0_c71_channel2_fifo_cap),.if_empty_n(v11058_0_c71_channel2_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_ready));
forward_fifo_w6_d2_S_x1 v11058_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_return),.if_full_n(v11058_0_c_channel1_full_n),.if_write(ap_channel_done_v11058_0_c_channel1),.if_dout(v11058_0_c_channel1_dout),.if_num_data_valid(v11058_0_c_channel1_num_data_valid),.if_fifo_cap(v11058_0_c_channel1_fifo_cap),.if_empty_n(v11058_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11058_0_c71_channel2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11058_0_c71_channel2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11058_0_c71_channel2 <= ap_sync_channel_write_v11058_0_c71_channel2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11058_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11058_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11058_0_c_channel1 <= ap_sync_channel_write_v11058_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11065 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11065 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11065 <= ap_sync_channel_write_v11065;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11067 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11067 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11067 <= ap_sync_channel_write_v11067;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v11058_0_c71_channel2 = ((ap_sync_reg_channel_write_v11058_0_c71_channel2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_done);
assign ap_channel_done_v11058_0_c_channel1 = ((ap_sync_reg_channel_write_v11058_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_done);
assign ap_channel_done_v11065 = ((ap_sync_reg_channel_write_v11065 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_done);
assign ap_channel_done_v11067 = ((ap_sync_reg_channel_write_v11067 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_done;
assign ap_idle = ((v11058_0_c_channel1_empty_n ^ 1'b1) & (v11058_0_c71_channel2_empty_n ^ 1'b1) & (v11067_t_empty_n ^ 1'b1) & (v11064_t_empty_n ^ 1'b1) & (v11065_t_empty_n ^ 1'b1) & (v11066_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v11058_0_c71_channel2 = ((v11058_0_c71_channel2_full_n & ap_channel_done_v11058_0_c71_channel2) | ap_sync_reg_channel_write_v11058_0_c71_channel2);
assign ap_sync_channel_write_v11058_0_c_channel1 = ((v11058_0_c_channel1_full_n & ap_channel_done_v11058_0_c_channel1) | ap_sync_reg_channel_write_v11058_0_c_channel1);
assign ap_sync_channel_write_v11065 = ((dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_full_n & ap_channel_done_v11065) | ap_sync_reg_channel_write_v11065);
assign ap_sync_channel_write_v11067 = ((dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_full_n & ap_channel_done_v11067) | ap_sync_reg_channel_write_v11067);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_ap_start = (v11067_t_empty_n & v11058_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_continue = (ap_sync_channel_write_v11067 & ap_sync_channel_write_v11058_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_ap_start = (v11066_t_empty_n & v11065_t_empty_n & v11064_t_empty_n & v11058_0_c71_channel2_empty_n);
assign dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13671_1_proc_U0_v11067_full_n = v11067_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_continue = v11064_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_continue = (ap_sync_channel_write_v11065 & ap_sync_channel_write_v11058_0_c71_channel2);
assign dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v11065_full_n = v11065_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_continue = v11066_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_ap_ready ^ 1'b1) & ap_start);
assign v15422_address0 = dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v15422_address0;
assign v15422_address1 = 13'd0;
assign v15422_ce0 = dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13723_1_proc_U0_v15422_ce0;
assign v15422_ce1 = 1'b0;
assign v15422_d0 = 8'd0;
assign v15422_d1 = 8'd0;
assign v15422_we0 = 1'b0;
assign v15422_we1 = 1'b0;
assign v15466_address0 = dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v15466_address0;
assign v15466_address1 = 17'd0;
assign v15466_ce0 = dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13742_1_proc125_U0_v15466_ce0;
assign v15466_ce1 = 1'b0;
assign v15466_d0 = 8'd0;
assign v15466_d1 = 8'd0;
assign v15466_we0 = 1'b0;
assign v15466_we1 = 1'b0;
assign v15467_address0 = dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v15467_address0;
assign v15467_address1 = 17'd0;
assign v15467_ce0 = dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v15467_ce0;
assign v15467_ce1 = 1'b0;
assign v15467_d0 = dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v15467_d0;
assign v15467_d1 = 8'd0;
assign v15467_we0 = dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13643_1_proc126_U0_v15467_we0;
assign v15467_we1 = 1'b0;
assign v15468_address0 = dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v15468_address0;
assign v15468_address1 = 17'd0;
assign v15468_ce0 = dataflow_in_loop_VITIS_LOOP_13762_1_Loop_VITIS_LOOP_13702_1_proc124_U0_v15468_ce0;
assign v15468_ce1 = 1'b0;
assign v15468_d0 = 8'd0;
assign v15468_d1 = 8'd0;
assign v15468_we0 = 1'b0;
assign v15468_we1 = 1'b0;
endmodule 
