
module forward_dataflow_in_loop_VITIS_LOOP_143_1 (ap_clk,ap_rst,v52_0,v15402_address0,v15402_ce0,v15402_d0,v15402_q0,v15402_we0,v15402_address1,v15402_ce1,v15402_d1,v15402_q1,v15402_we1,v15427_0_address0,v15427_0_ce0,v15427_0_d0,v15427_0_q0,v15427_0_we0,v15427_0_address1,v15427_0_ce1,v15427_0_d1,v15427_0_q1,v15427_0_we1,v15427_1_address0,v15427_1_ce0,v15427_1_d0,v15427_1_q0,v15427_1_we0,v15427_1_address1,v15427_1_ce1,v15427_1_d1,v15427_1_q1,v15427_1_we1,v15511_0_address0,v15511_0_ce0,v15511_0_d0,v15511_0_q0,v15511_0_we0,v15511_0_address1,v15511_0_ce1,v15511_0_d1,v15511_0_q1,v15511_0_we1,v15511_1_address0,v15511_1_ce0,v15511_1_d0,v15511_1_q0,v15511_1_we0,v15511_1_address1,v15511_1_ce1,v15511_1_d1,v15511_1_q1,v15511_1_we1,v52_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [10:0] v52_0;
output  [9:0] v15402_address0;
output   v15402_ce0;
output  [7:0] v15402_d0;
input  [7:0] v15402_q0;
output   v15402_we0;
output  [9:0] v15402_address1;
output   v15402_ce1;
output  [7:0] v15402_d1;
input  [7:0] v15402_q1;
output   v15402_we1;
output  [18:0] v15427_0_address0;
output   v15427_0_ce0;
output  [7:0] v15427_0_d0;
input  [7:0] v15427_0_q0;
output   v15427_0_we0;
output  [18:0] v15427_0_address1;
output   v15427_0_ce1;
output  [7:0] v15427_0_d1;
input  [7:0] v15427_0_q1;
output   v15427_0_we1;
output  [18:0] v15427_1_address0;
output   v15427_1_ce0;
output  [7:0] v15427_1_d0;
input  [7:0] v15427_1_q0;
output   v15427_1_we0;
output  [18:0] v15427_1_address1;
output   v15427_1_ce1;
output  [7:0] v15427_1_d1;
input  [7:0] v15427_1_q1;
output   v15427_1_we1;
output  [8:0] v15511_0_address0;
output   v15511_0_ce0;
output  [7:0] v15511_0_d0;
input  [7:0] v15511_0_q0;
output   v15511_0_we0;
output  [8:0] v15511_0_address1;
output   v15511_0_ce1;
output  [7:0] v15511_0_d1;
input  [7:0] v15511_0_q1;
output   v15511_0_we1;
output  [8:0] v15511_1_address0;
output   v15511_1_ce0;
output  [7:0] v15511_1_d0;
input  [7:0] v15511_1_q0;
output   v15511_1_we0;
output  [8:0] v15511_1_address1;
output   v15511_1_ce1;
output  [7:0] v15511_1_d1;
input  [7:0] v15511_1_q1;
output   v15511_1_we1;
input   v52_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v57_i_q0;
wire   [7:0] v57_t_q0;
wire   [7:0] v57_1_i_q0;
wire   [7:0] v57_1_t_q0;
wire   [7:0] v56_i_q0;
wire   [7:0] v56_t_q0;
wire   [7:0] v56_1_i_q0;
wire   [7:0] v56_1_t_q0;
wire   [7:0] v55_i_q0;
wire   [7:0] v55_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_ce0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v15511_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v15511_0_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v15511_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v15511_1_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_return;
wire    ap_channel_done_v52_0_c48_channel;
wire    v52_0_c48_channel_full_n;
reg    ap_sync_reg_channel_write_v52_0_c48_channel;
wire    ap_sync_channel_write_v52_0_c48_channel;
wire    ap_channel_done_v57_1;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_full_n;
reg    ap_sync_reg_channel_write_v57_1;
wire    ap_sync_channel_write_v57_1;
wire    ap_channel_done_v57;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_full_n;
reg    ap_sync_reg_channel_write_v57;
wire    ap_sync_channel_write_v57;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_ce0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_d0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v15427_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v15427_0_ce0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v15427_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v15427_1_ce0;
wire    ap_channel_done_v56_1;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_full_n;
reg    ap_sync_reg_channel_write_v56_1;
wire    ap_sync_channel_write_v56_1;
wire    ap_channel_done_v56;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_full_n;
reg    ap_sync_reg_channel_write_v56;
wire    ap_sync_channel_write_v56;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_ce0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v57_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v57_1_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v56_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v56_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v57_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v57_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v56_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v56_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_return;
wire    ap_channel_done_v52_0_c_channel1;
wire    v52_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v52_0_c_channel1;
wire    ap_sync_channel_write_v52_0_c_channel1;
wire    ap_channel_done_v55;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_full_n;
reg    ap_sync_reg_channel_write_v55;
wire    ap_sync_channel_write_v55;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v55_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v55_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v15402_address0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v15402_ce0;
wire    dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v15402_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v15402_d0;
wire    v57_i_full_n;
wire    v57_t_empty_n;
wire    v57_1_i_full_n;
wire    v57_1_t_empty_n;
wire    v56_i_full_n;
wire    v56_t_empty_n;
wire    v56_1_i_full_n;
wire    v56_1_t_empty_n;
wire    v55_i_full_n;
wire    v55_t_empty_n;
wire   [10:0] v52_0_c48_channel_dout;
wire   [2:0] v52_0_c48_channel_num_data_valid;
wire   [2:0] v52_0_c48_channel_fifo_cap;
wire    v52_0_c48_channel_empty_n;
wire   [10:0] v52_0_c_channel1_dout;
wire   [2:0] v52_0_c_channel1_num_data_valid;
wire   [2:0] v52_0_c_channel1_fifo_cap;
wire    v52_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v52_0_c48_channel = 1'b0;
#0 ap_sync_reg_channel_write_v57_1 = 1'b0;
#0 ap_sync_reg_channel_write_v57 = 1'b0;
#0 ap_sync_reg_channel_write_v56_1 = 1'b0;
#0 ap_sync_reg_channel_write_v56 = 1'b0;
#0 ap_sync_reg_channel_write_v52_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v55 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_13601_1_v10993_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v57_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_d0),.i_q0(v57_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v57_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v57_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v57_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v57_i_full_n),.i_write(ap_channel_done_v57),.t_empty_n(v57_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_13601_1_v10993_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v57_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_d0),.i_q0(v57_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v57_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v57_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v57_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v57_1_i_full_n),.i_write(ap_channel_done_v57_1),.t_empty_n(v57_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_143_1_v56_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 400 ),.AddressWidth( 9 ))
v56_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_d0),.i_q0(v56_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v56_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v56_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v56_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v56_i_full_n),.i_write(ap_channel_done_v56),.t_empty_n(v56_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_143_1_v56_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 400 ),.AddressWidth( 9 ))
v56_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_d0),.i_q0(v56_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v56_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v56_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v56_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v56_1_i_full_n),.i_write(ap_channel_done_v56_1),.t_empty_n(v56_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_143_1_v55_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 25 ),.AddressWidth( 5 ))
v55_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_d0),.i_q0(v55_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v55_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v55_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v55_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v55_i_full_n),.i_write(ap_channel_done_v55),.t_empty_n(v55_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready),.v57_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_address0),.v57_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_ce0),.v57_we0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_we0),.v57_d0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_d0),.v57_1_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_address0),.v57_1_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_ce0),.v57_1_we0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_we0),.v57_1_d0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_d0),.v52_0(v52_0),.v15511_0_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v15511_0_address0),.v15511_0_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v15511_0_ce0),.v15511_0_q0(v15511_0_q0),.v15511_1_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v15511_1_address0),.v15511_1_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v15511_1_ce0),.v15511_1_q0(v15511_1_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32 dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready),.v56_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_address0),.v56_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_ce0),.v56_we0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_we0),.v56_d0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_d0),.v56_1_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_address0),.v56_1_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_ce0),.v56_1_we0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_we0),.v56_1_d0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_d0),.v52_0(v52_0),.v15427_0_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v15427_0_address0),.v15427_0_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v15427_0_ce0),.v15427_0_q0(v15427_0_q0),.v15427_1_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v15427_1_address0),.v15427_1_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v15427_1_ce0),.v15427_1_q0(v15427_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_ready),.p_read(v52_0_c48_channel_dout),.v55_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_address0),.v55_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_ce0),.v55_we0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_we0),.v55_d0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_d0),.v57_1_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v57_1_address0),.v57_1_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v57_1_ce0),.v57_1_q0(v57_1_t_q0),.v56_1_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v56_1_address0),.v56_1_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v56_1_ce0),.v56_1_q0(v56_1_t_q0),.v57_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v57_address0),.v57_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v57_ce0),.v57_q0(v57_t_q0),.v56_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v56_address0),.v56_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v56_ce0),.v56_q0(v56_t_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_ready),.v55_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v55_address0),.v55_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v55_ce0),.v55_q0(v55_t_q0),.p_read(v52_0_c_channel1_dout),.v15402_address0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v15402_address0),.v15402_ce0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v15402_ce0),.v15402_we0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v15402_we0),.v15402_d0(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v15402_d0));
forward_fifo_w11_d2_S_x v52_0_c48_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_return),.if_full_n(v52_0_c48_channel_full_n),.if_write(ap_channel_done_v52_0_c48_channel),.if_dout(v52_0_c48_channel_dout),.if_num_data_valid(v52_0_c48_channel_num_data_valid),.if_fifo_cap(v52_0_c48_channel_fifo_cap),.if_empty_n(v52_0_c48_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_ready));
forward_fifo_w11_d2_S_x v52_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_return),.if_full_n(v52_0_c_channel1_full_n),.if_write(ap_channel_done_v52_0_c_channel1),.if_dout(v52_0_c_channel1_dout),.if_num_data_valid(v52_0_c_channel1_num_data_valid),.if_fifo_cap(v52_0_c_channel1_fifo_cap),.if_empty_n(v52_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v52_0_c48_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v52_0_c48_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v52_0_c48_channel <= ap_sync_channel_write_v52_0_c48_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v52_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v52_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v52_0_c_channel1 <= ap_sync_channel_write_v52_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v55 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v55 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v55 <= ap_sync_channel_write_v55;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v56 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_done & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v56 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v56 <= ap_sync_channel_write_v56;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v56_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_done & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v56_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v56_1 <= ap_sync_channel_write_v56_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v57 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v57 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v57 <= ap_sync_channel_write_v57;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v57_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v57_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v57_1 <= ap_sync_channel_write_v57_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v52_0_c48_channel = ((ap_sync_reg_channel_write_v52_0_c48_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_done);
assign ap_channel_done_v52_0_c_channel1 = ((ap_sync_reg_channel_write_v52_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_done);
assign ap_channel_done_v55 = ((ap_sync_reg_channel_write_v55 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_done);
assign ap_channel_done_v56 = ((ap_sync_reg_channel_write_v56 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_done);
assign ap_channel_done_v56_1 = ((ap_sync_reg_channel_write_v56_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_done);
assign ap_channel_done_v57 = ((ap_sync_reg_channel_write_v57 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_done);
assign ap_channel_done_v57_1 = ((ap_sync_reg_channel_write_v57_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_done;
assign ap_idle = ((v52_0_c_channel1_empty_n ^ 1'b1) & (v52_0_c48_channel_empty_n ^ 1'b1) & (v55_t_empty_n ^ 1'b1) & (v56_1_t_empty_n ^ 1'b1) & (v56_t_empty_n ^ 1'b1) & (v57_1_t_empty_n ^ 1'b1) & (v57_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v52_0_c48_channel = ((v52_0_c48_channel_full_n & ap_channel_done_v52_0_c48_channel) | ap_sync_reg_channel_write_v52_0_c48_channel);
assign ap_sync_channel_write_v52_0_c_channel1 = ((v52_0_c_channel1_full_n & ap_channel_done_v52_0_c_channel1) | ap_sync_reg_channel_write_v52_0_c_channel1);
assign ap_sync_channel_write_v55 = ((dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_full_n & ap_channel_done_v55) | ap_sync_reg_channel_write_v55);
assign ap_sync_channel_write_v56 = ((dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_full_n & ap_channel_done_v56) | ap_sync_reg_channel_write_v56);
assign ap_sync_channel_write_v56_1 = ((dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_full_n & ap_channel_done_v56_1) | ap_sync_reg_channel_write_v56_1);
assign ap_sync_channel_write_v57 = ((dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_full_n & ap_channel_done_v57) | ap_sync_reg_channel_write_v57);
assign ap_sync_channel_write_v57_1 = ((dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_full_n & ap_channel_done_v57_1) | ap_sync_reg_channel_write_v57_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_continue = (ap_sync_channel_write_v57_1 & ap_sync_channel_write_v57 & ap_sync_channel_write_v52_0_c48_channel);
assign dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_1_full_n = v57_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v57_full_n = v57_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_start = (v55_t_empty_n & v52_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_continue = (ap_sync_channel_write_v55 & ap_sync_channel_write_v52_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_ap_start = (v57_t_empty_n & v57_1_t_empty_n & v56_t_empty_n & v56_1_t_empty_n & v52_0_c48_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_55_1_proc_U0_v55_full_n = v55_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_continue = (ap_sync_channel_write_v56_1 & ap_sync_channel_write_v56);
assign dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_1_full_n = v56_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v56_full_n = v56_i_full_n;
assign v15402_address0 = dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v15402_address0;
assign v15402_address1 = 10'd0;
assign v15402_ce0 = dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v15402_ce0;
assign v15402_ce1 = 1'b0;
assign v15402_d0 = dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v15402_d0;
assign v15402_d1 = 8'd0;
assign v15402_we0 = dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_28_1_proc_U0_v15402_we0;
assign v15402_we1 = 1'b0;
assign v15427_0_address0 = dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v15427_0_address0;
assign v15427_0_address1 = 19'd0;
assign v15427_0_ce0 = dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v15427_0_ce0;
assign v15427_0_ce1 = 1'b0;
assign v15427_0_d0 = 8'd0;
assign v15427_0_d1 = 8'd0;
assign v15427_0_we0 = 1'b0;
assign v15427_0_we1 = 1'b0;
assign v15427_1_address0 = dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v15427_1_address0;
assign v15427_1_address1 = 19'd0;
assign v15427_1_ce0 = dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_U0_v15427_1_ce0;
assign v15427_1_ce1 = 1'b0;
assign v15427_1_d0 = 8'd0;
assign v15427_1_d1 = 8'd0;
assign v15427_1_we0 = 1'b0;
assign v15427_1_we1 = 1'b0;
assign v15511_0_address0 = dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v15511_0_address0;
assign v15511_0_address1 = 9'd0;
assign v15511_0_ce0 = dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v15511_0_ce0;
assign v15511_0_ce1 = 1'b0;
assign v15511_0_d0 = 8'd0;
assign v15511_0_d1 = 8'd0;
assign v15511_0_we0 = 1'b0;
assign v15511_0_we1 = 1'b0;
assign v15511_1_address0 = dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v15511_1_address0;
assign v15511_1_address1 = 9'd0;
assign v15511_1_ce0 = dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_119_1_proc_U0_v15511_1_ce0;
assign v15511_1_ce1 = 1'b0;
assign v15511_1_d0 = 8'd0;
assign v15511_1_d1 = 8'd0;
assign v15511_1_we0 = 1'b0;
assign v15511_1_we1 = 1'b0;
endmodule 
