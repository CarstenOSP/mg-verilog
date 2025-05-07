module forward_dataflow_in_loop_VITIS_LOOP_11446_1 (ap_clk,ap_rst,v9336_0,v15479_address0,v15479_ce0,v15479_d0,v15479_q0,v15479_we0,v15479_address1,v15479_ce1,v15479_d1,v15479_q1,v15479_we1,v15480_address0,v15480_ce0,v15480_d0,v15480_q0,v15480_we0,v15480_address1,v15480_ce1,v15480_d1,v15480_q1,v15480_we1,v15420_address0,v15420_ce0,v15420_d0,v15420_q0,v15420_we0,v15420_address1,v15420_ce1,v15420_d1,v15420_q1,v15420_we1,v15478_address0,v15478_ce0,v15478_d0,v15478_q0,v15478_we0,v15478_address1,v15478_ce1,v15478_d1,v15478_q1,v15478_we1,v9336_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [9:0] v9336_0;
output  [16:0] v15479_address0;
output   v15479_ce0;
output  [7:0] v15479_d0;
input  [7:0] v15479_q0;
output   v15479_we0;
output  [16:0] v15479_address1;
output   v15479_ce1;
output  [7:0] v15479_d1;
input  [7:0] v15479_q1;
output   v15479_we1;
output  [16:0] v15480_address0;
output   v15480_ce0;
output  [7:0] v15480_d0;
input  [7:0] v15480_q0;
output   v15480_we0;
output  [16:0] v15480_address1;
output   v15480_ce1;
output  [7:0] v15480_d1;
input  [7:0] v15480_q1;
output   v15480_we1;
output  [12:0] v15420_address0;
output   v15420_ce0;
output  [7:0] v15420_d0;
input  [7:0] v15420_q0;
output   v15420_we0;
output  [12:0] v15420_address1;
output   v15420_ce1;
output  [7:0] v15420_d1;
input  [7:0] v15420_q1;
output   v15420_we1;
output  [16:0] v15478_address0;
output   v15478_ce0;
output  [7:0] v15478_d0;
input  [7:0] v15478_q0;
output   v15478_we0;
output  [16:0] v15478_address1;
output   v15478_ce1;
output  [7:0] v15478_d1;
input  [7:0] v15478_q1;
output   v15478_we1;
input   v9336_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v9345_i_q0;
wire   [7:0] v9345_t_q0;
wire   [7:0] v9344_i_q0;
wire   [7:0] v9344_t_q0;
wire   [7:0] v9343_i_q0;
wire   [7:0] v9343_t_q0;
wire   [7:0] v9342_i_q0;
wire   [7:0] v9342_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v15478_address0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v15478_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v9344_address0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v9344_ce0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v9344_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v9344_d0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v15420_address0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v15420_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_address0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_ce0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_return;
wire    ap_channel_done_v9336_0_c71_channel2;
wire    v9336_0_c71_channel2_full_n;
reg    ap_sync_reg_channel_write_v9336_0_c71_channel2;
wire    ap_sync_channel_write_v9336_0_c71_channel2;
wire    ap_channel_done_v9343;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_full_n;
reg    ap_sync_reg_channel_write_v9343;
wire    ap_sync_channel_write_v9343;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v15480_address0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v15480_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v9342_address0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v9342_ce0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v9342_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v9342_d0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9343_address0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9343_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9344_address0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9344_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9342_address0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9342_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_address0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_ce0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_d0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_return;
wire    ap_channel_done_v9336_0_c_channel1;
wire    v9336_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v9336_0_c_channel1;
wire    ap_sync_channel_write_v9336_0_c_channel1;
wire    ap_channel_done_v9345;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_full_n;
reg    ap_sync_reg_channel_write_v9345;
wire    ap_sync_channel_write_v9345;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_ready;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v9345_address0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v9345_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v15479_address0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v15479_ce0;
wire    dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v15479_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v15479_d0;
wire    v9344_i_full_n;
wire    v9344_t_empty_n;
wire    v9343_i_full_n;
wire    v9343_t_empty_n;
wire    v9342_i_full_n;
wire    v9342_t_empty_n;
wire    v9345_i_full_n;
wire    v9345_t_empty_n;
wire   [9:0] v9336_0_c71_channel2_dout;
wire   [2:0] v9336_0_c71_channel2_num_data_valid;
wire   [2:0] v9336_0_c71_channel2_fifo_cap;
wire    v9336_0_c71_channel2_empty_n;
wire   [5:0] v9336_0_c_channel1_dout;
wire   [2:0] v9336_0_c_channel1_num_data_valid;
wire   [2:0] v9336_0_c_channel1_fifo_cap;
wire    v9336_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v9336_0_c71_channel2 = 1'b0;
#0 ap_sync_reg_channel_write_v9343 = 1'b0;
#0 ap_sync_reg_channel_write_v9336_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v9345 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v9345_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_d0),.i_q0(v9345_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v9345_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v9345_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v9345_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v9345_i_full_n),.i_write(ap_channel_done_v9345),.t_empty_n(v9345_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v9344_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v9344_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v9344_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v9344_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v9344_d0),.i_q0(v9344_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9344_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9344_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v9344_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v9344_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_done),.t_empty_n(v9344_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v9343_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_d0),.i_q0(v9343_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9343_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9343_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v9343_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v9343_i_full_n),.i_write(ap_channel_done_v9343),.t_empty_n(v9343_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v9342_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v9342_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v9342_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v9342_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v9342_d0),.i_q0(v9342_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9342_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9342_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v9342_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v9342_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_done),.t_empty_n(v9342_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153 dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready),.v9336_0(v9336_0),.v15478_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v15478_address0),.v15478_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v15478_ce0),.v15478_q0(v15478_q0),.v9344_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v9344_address0),.v9344_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v9344_ce0),.v9344_we0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v9344_we0),.v9344_d0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v9344_d0));
forward_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready),.v9336_0(v9336_0),.v15420_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v15420_address0),.v15420_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v15420_ce0),.v15420_q0(v15420_q0),.v9343_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_address0),.v9343_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_ce0),.v9343_we0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_we0),.v9343_d0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152 dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready),.v9336_0(v9336_0),.v15480_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v15480_address0),.v15480_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v15480_ce0),.v15480_q0(v15480_q0),.v9342_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v9342_address0),.v9342_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v9342_ce0),.v9342_we0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v9342_we0),.v9342_d0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v9342_d0));
forward_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_ready),.p_read(v9336_0_c71_channel2_dout),.v9343_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9343_address0),.v9343_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9343_ce0),.v9343_q0(v9343_t_q0),.v9344_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9344_address0),.v9344_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9344_ce0),.v9344_q0(v9344_t_q0),.v9342_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9342_address0),.v9342_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9342_ce0),.v9342_q0(v9342_t_q0),.v9345_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_address0),.v9345_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_ce0),.v9345_we0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_we0),.v9345_d0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154 dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_ready),.p_read(v9336_0_c_channel1_dout),.v9345_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v9345_address0),.v9345_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v9345_ce0),.v9345_q0(v9345_t_q0),.v15479_address0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v15479_address0),.v15479_ce0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v15479_ce0),.v15479_we0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v15479_we0),.v15479_d0(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v15479_d0));
forward_fifo_w10_d2_S_x3 v9336_0_c71_channel2_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_return),.if_full_n(v9336_0_c71_channel2_full_n),.if_write(ap_channel_done_v9336_0_c71_channel2),.if_dout(v9336_0_c71_channel2_dout),.if_num_data_valid(v9336_0_c71_channel2_num_data_valid),.if_fifo_cap(v9336_0_c71_channel2_fifo_cap),.if_empty_n(v9336_0_c71_channel2_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_ready));
forward_fifo_w6_d2_S_x5 v9336_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_return),.if_full_n(v9336_0_c_channel1_full_n),.if_write(ap_channel_done_v9336_0_c_channel1),.if_dout(v9336_0_c_channel1_dout),.if_num_data_valid(v9336_0_c_channel1_num_data_valid),.if_fifo_cap(v9336_0_c_channel1_fifo_cap),.if_empty_n(v9336_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v9336_0_c71_channel2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v9336_0_c71_channel2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v9336_0_c71_channel2 <= ap_sync_channel_write_v9336_0_c71_channel2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v9336_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v9336_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v9336_0_c_channel1 <= ap_sync_channel_write_v9336_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v9343 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v9343 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v9343 <= ap_sync_channel_write_v9343;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v9345 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v9345 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v9345 <= ap_sync_channel_write_v9345;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v9336_0_c71_channel2 = ((ap_sync_reg_channel_write_v9336_0_c71_channel2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_done);
assign ap_channel_done_v9336_0_c_channel1 = ((ap_sync_reg_channel_write_v9336_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_done);
assign ap_channel_done_v9343 = ((ap_sync_reg_channel_write_v9343 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_done);
assign ap_channel_done_v9345 = ((ap_sync_reg_channel_write_v9345 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_done;
assign ap_idle = ((v9336_0_c_channel1_empty_n ^ 1'b1) & (v9336_0_c71_channel2_empty_n ^ 1'b1) & (v9345_t_empty_n ^ 1'b1) & (v9342_t_empty_n ^ 1'b1) & (v9343_t_empty_n ^ 1'b1) & (v9344_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v9336_0_c71_channel2 = ((v9336_0_c71_channel2_full_n & ap_channel_done_v9336_0_c71_channel2) | ap_sync_reg_channel_write_v9336_0_c71_channel2);
assign ap_sync_channel_write_v9336_0_c_channel1 = ((v9336_0_c_channel1_full_n & ap_channel_done_v9336_0_c_channel1) | ap_sync_reg_channel_write_v9336_0_c_channel1);
assign ap_sync_channel_write_v9343 = ((dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_full_n & ap_channel_done_v9343) | ap_sync_reg_channel_write_v9343);
assign ap_sync_channel_write_v9345 = ((dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_full_n & ap_channel_done_v9345) | ap_sync_reg_channel_write_v9345);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_ap_start = (v9345_t_empty_n & v9336_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_continue = (ap_sync_channel_write_v9345 & ap_sync_channel_write_v9336_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_ap_start = (v9344_t_empty_n & v9343_t_empty_n & v9342_t_empty_n & v9336_0_c71_channel2_empty_n);
assign dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11355_1_proc_U0_v9345_full_n = v9345_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_continue = v9342_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_continue = (ap_sync_channel_write_v9343 & ap_sync_channel_write_v9336_0_c71_channel2);
assign dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v9343_full_n = v9343_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_continue = v9344_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_ap_ready ^ 1'b1) & ap_start);
assign v15420_address0 = dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v15420_address0;
assign v15420_address1 = 13'd0;
assign v15420_ce0 = dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11407_1_proc_U0_v15420_ce0;
assign v15420_ce1 = 1'b0;
assign v15420_d0 = 8'd0;
assign v15420_d1 = 8'd0;
assign v15420_we0 = 1'b0;
assign v15420_we1 = 1'b0;
assign v15478_address0 = dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v15478_address0;
assign v15478_address1 = 17'd0;
assign v15478_ce0 = dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11426_1_proc153_U0_v15478_ce0;
assign v15478_ce1 = 1'b0;
assign v15478_d0 = 8'd0;
assign v15478_d1 = 8'd0;
assign v15478_we0 = 1'b0;
assign v15478_we1 = 1'b0;
assign v15479_address0 = dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v15479_address0;
assign v15479_address1 = 17'd0;
assign v15479_ce0 = dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v15479_ce0;
assign v15479_ce1 = 1'b0;
assign v15479_d0 = dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v15479_d0;
assign v15479_d1 = 8'd0;
assign v15479_we0 = dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11327_1_proc154_U0_v15479_we0;
assign v15479_we1 = 1'b0;
assign v15480_address0 = dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v15480_address0;
assign v15480_address1 = 17'd0;
assign v15480_ce0 = dataflow_in_loop_VITIS_LOOP_11446_1_Loop_VITIS_LOOP_11386_1_proc152_U0_v15480_ce0;
assign v15480_ce1 = 1'b0;
assign v15480_d0 = 8'd0;
assign v15480_d1 = 8'd0;
assign v15480_we0 = 1'b0;
assign v15480_we1 = 1'b0;
endmodule 