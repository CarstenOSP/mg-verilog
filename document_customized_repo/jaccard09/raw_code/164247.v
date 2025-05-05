module forward_dataflow_in_loop_VITIS_LOOP_6846_1 (ap_clk,ap_rst,v5908_0,v15503_address0,v15503_ce0,v15503_d0,v15503_q0,v15503_we0,v15503_address1,v15503_ce1,v15503_d1,v15503_q1,v15503_we1,v15504_address0,v15504_ce0,v15504_d0,v15504_q0,v15504_we0,v15504_address1,v15504_ce1,v15504_d1,v15504_q1,v15504_we1,v15416_address0,v15416_ce0,v15416_d0,v15416_q0,v15416_we0,v15416_address1,v15416_ce1,v15416_d1,v15416_q1,v15416_we1,v15502_address0,v15502_ce0,v15502_d0,v15502_q0,v15502_we0,v15502_address1,v15502_ce1,v15502_d1,v15502_q1,v15502_we1,v5908_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [13:0] v5908_0;
output  [15:0] v15503_address0;
output   v15503_ce0;
output  [7:0] v15503_d0;
input  [7:0] v15503_q0;
output   v15503_we0;
output  [15:0] v15503_address1;
output   v15503_ce1;
output  [7:0] v15503_d1;
input  [7:0] v15503_q1;
output   v15503_we1;
output  [15:0] v15504_address0;
output   v15504_ce0;
output  [7:0] v15504_d0;
input  [7:0] v15504_q0;
output   v15504_we0;
output  [15:0] v15504_address1;
output   v15504_ce1;
output  [7:0] v15504_d1;
input  [7:0] v15504_q1;
output   v15504_we1;
output  [13:0] v15416_address0;
output   v15416_ce0;
output  [7:0] v15416_d0;
input  [7:0] v15416_q0;
output   v15416_we0;
output  [13:0] v15416_address1;
output   v15416_ce1;
output  [7:0] v15416_d1;
input  [7:0] v15416_q1;
output   v15416_we1;
output  [15:0] v15502_address0;
output   v15502_ce0;
output  [7:0] v15502_d0;
input  [7:0] v15502_q0;
output   v15502_we0;
output  [15:0] v15502_address1;
output   v15502_ce1;
output  [7:0] v15502_d1;
input  [7:0] v15502_q1;
output   v15502_we1;
input   v5908_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v5917_i_q0;
wire   [7:0] v5917_t_q0;
wire   [7:0] v5916_i_q0;
wire   [7:0] v5916_t_q0;
wire   [7:0] v5915_i_q0;
wire   [7:0] v5915_t_q0;
wire   [7:0] v5914_i_q0;
wire   [7:0] v5914_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v15502_address0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v15502_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_address0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_ce0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_return;
wire    ap_channel_done_v5908_0_c39_channel1;
wire    v5908_0_c39_channel1_full_n;
reg    ap_sync_reg_channel_write_v5908_0_c39_channel1;
wire    ap_sync_channel_write_v5908_0_c39_channel1;
wire    ap_channel_done_v5916;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_full_n;
reg    ap_sync_reg_channel_write_v5916;
wire    ap_sync_channel_write_v5916;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v15416_address0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v15416_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v5915_address0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v5915_ce0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v5915_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v5915_d0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v15504_address0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v15504_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v5914_address0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v5914_ce0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v5914_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v5914_d0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5916_address0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5916_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5915_address0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5915_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5914_address0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5914_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_address0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_ce0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_return;
wire    ap_channel_done_v5908_0_c_channel;
wire    v5908_0_c_channel_full_n;
reg    ap_sync_reg_channel_write_v5908_0_c_channel;
wire    ap_sync_channel_write_v5908_0_c_channel;
wire    ap_channel_done_v5917;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_full_n;
reg    ap_sync_reg_channel_write_v5917;
wire    ap_sync_channel_write_v5917;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v5917_address0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v5917_ce0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v15503_address0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v15503_ce0;
wire    dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v15503_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v15503_d0;
wire    v5916_i_full_n;
wire    v5916_t_empty_n;
wire    v5915_i_full_n;
wire    v5915_t_empty_n;
wire    v5914_i_full_n;
wire    v5914_t_empty_n;
wire    v5917_i_full_n;
wire    v5917_t_empty_n;
wire   [13:0] v5908_0_c39_channel1_dout;
wire   [2:0] v5908_0_c39_channel1_num_data_valid;
wire   [2:0] v5908_0_c39_channel1_fifo_cap;
wire    v5908_0_c39_channel1_empty_n;
wire   [13:0] v5908_0_c_channel_dout;
wire   [2:0] v5908_0_c_channel_num_data_valid;
wire   [2:0] v5908_0_c_channel_fifo_cap;
wire    v5908_0_c_channel_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v5908_0_c39_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v5916 = 1'b0;
#0 ap_sync_reg_channel_write_v5908_0_c_channel = 1'b0;
#0 ap_sync_reg_channel_write_v5917 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v5917_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_d0),.i_q0(v5917_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v5917_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v5917_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v5917_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v5917_i_full_n),.i_write(ap_channel_done_v5917),.t_empty_n(v5917_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v5916_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_d0),.i_q0(v5916_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5916_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5916_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v5916_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v5916_i_full_n),.i_write(ap_channel_done_v5916),.t_empty_n(v5916_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v5915_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v5915_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v5915_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v5915_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v5915_d0),.i_q0(v5915_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5915_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5915_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v5915_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v5915_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_done),.t_empty_n(v5915_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v5914_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v5914_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v5914_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v5914_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v5914_d0),.i_q0(v5914_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5914_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5914_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v5914_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v5914_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_done),.t_empty_n(v5914_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready),.v5908_0(v5908_0),.v15502_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v15502_address0),.v15502_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v15502_ce0),.v15502_q0(v15502_q0),.v5916_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_address0),.v5916_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_ce0),.v5916_we0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_we0),.v5916_d0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready),.v5908_0(v5908_0),.v15416_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v15416_address0),.v15416_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v15416_ce0),.v15416_q0(v15416_q0),.v5915_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v5915_address0),.v5915_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v5915_ce0),.v5915_we0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v5915_we0),.v5915_d0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v5915_d0));
forward_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready),.v5908_0(v5908_0),.v15504_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v15504_address0),.v15504_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v15504_ce0),.v15504_q0(v15504_q0),.v5914_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v5914_address0),.v5914_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v5914_ce0),.v5914_we0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v5914_we0),.v5914_d0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v5914_d0));
forward_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_ready),.p_read(v5908_0_c39_channel1_dout),.v5916_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5916_address0),.v5916_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5916_ce0),.v5916_q0(v5916_t_q0),.v5915_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5915_address0),.v5915_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5915_ce0),.v5915_q0(v5915_t_q0),.v5914_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5914_address0),.v5914_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5914_ce0),.v5914_q0(v5914_t_q0),.v5917_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_address0),.v5917_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_ce0),.v5917_we0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_we0),.v5917_d0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_ready),.v5917_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v5917_address0),.v5917_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v5917_ce0),.v5917_q0(v5917_t_q0),.p_read(v5908_0_c_channel_dout),.v15503_address0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v15503_address0),.v15503_ce0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v15503_ce0),.v15503_we0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v15503_we0),.v15503_d0(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v15503_d0));
forward_fifo_w14_d2_S v5908_0_c39_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_return),.if_full_n(v5908_0_c39_channel1_full_n),.if_write(ap_channel_done_v5908_0_c39_channel1),.if_dout(v5908_0_c39_channel1_dout),.if_num_data_valid(v5908_0_c39_channel1_num_data_valid),.if_fifo_cap(v5908_0_c39_channel1_fifo_cap),.if_empty_n(v5908_0_c39_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_ready));
forward_fifo_w14_d2_S v5908_0_c_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_return),.if_full_n(v5908_0_c_channel_full_n),.if_write(ap_channel_done_v5908_0_c_channel),.if_dout(v5908_0_c_channel_dout),.if_num_data_valid(v5908_0_c_channel_num_data_valid),.if_fifo_cap(v5908_0_c_channel_fifo_cap),.if_empty_n(v5908_0_c_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v5908_0_c39_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v5908_0_c39_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v5908_0_c39_channel1 <= ap_sync_channel_write_v5908_0_c39_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v5908_0_c_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v5908_0_c_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v5908_0_c_channel <= ap_sync_channel_write_v5908_0_c_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v5916 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v5916 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v5916 <= ap_sync_channel_write_v5916;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v5917 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v5917 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v5917 <= ap_sync_channel_write_v5917;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v5908_0_c39_channel1 = ((ap_sync_reg_channel_write_v5908_0_c39_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_done);
assign ap_channel_done_v5908_0_c_channel = ((ap_sync_reg_channel_write_v5908_0_c_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_done);
assign ap_channel_done_v5916 = ((ap_sync_reg_channel_write_v5916 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_done);
assign ap_channel_done_v5917 = ((ap_sync_reg_channel_write_v5917 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_done;
assign ap_idle = ((v5908_0_c_channel_empty_n ^ 1'b1) & (v5908_0_c39_channel1_empty_n ^ 1'b1) & (v5917_t_empty_n ^ 1'b1) & (v5914_t_empty_n ^ 1'b1) & (v5915_t_empty_n ^ 1'b1) & (v5916_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v5908_0_c39_channel1 = ((v5908_0_c39_channel1_full_n & ap_channel_done_v5908_0_c39_channel1) | ap_sync_reg_channel_write_v5908_0_c39_channel1);
assign ap_sync_channel_write_v5908_0_c_channel = ((v5908_0_c_channel_full_n & ap_channel_done_v5908_0_c_channel) | ap_sync_reg_channel_write_v5908_0_c_channel);
assign ap_sync_channel_write_v5916 = ((dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_full_n & ap_channel_done_v5916) | ap_sync_reg_channel_write_v5916);
assign ap_sync_channel_write_v5917 = ((dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_full_n & ap_channel_done_v5917) | ap_sync_reg_channel_write_v5917);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_ap_start = (v5917_t_empty_n & v5908_0_c_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_continue = (ap_sync_channel_write_v5917 & ap_sync_channel_write_v5908_0_c_channel);
assign dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_ap_start = (v5916_t_empty_n & v5915_t_empty_n & v5914_t_empty_n & v5908_0_c39_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6767_1_proc_U0_v5917_full_n = v5917_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_continue = v5914_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_continue = v5915_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_continue = (ap_sync_channel_write_v5916 & ap_sync_channel_write_v5908_0_c39_channel1);
assign dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v5916_full_n = v5916_i_full_n;
assign v15416_address0 = dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v15416_address0;
assign v15416_address1 = 14'd0;
assign v15416_ce0 = dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6811_1_proc_U0_v15416_ce0;
assign v15416_ce1 = 1'b0;
assign v15416_d0 = 8'd0;
assign v15416_d1 = 8'd0;
assign v15416_we0 = 1'b0;
assign v15416_we1 = 1'b0;
assign v15502_address0 = dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v15502_address0;
assign v15502_address1 = 16'd0;
assign v15502_ce0 = dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6830_1_proc_U0_v15502_ce0;
assign v15502_ce1 = 1'b0;
assign v15502_d0 = 8'd0;
assign v15502_d1 = 8'd0;
assign v15502_we0 = 1'b0;
assign v15502_we1 = 1'b0;
assign v15503_address0 = dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v15503_address0;
assign v15503_address1 = 16'd0;
assign v15503_ce0 = dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v15503_ce0;
assign v15503_ce1 = 1'b0;
assign v15503_d0 = dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v15503_d0;
assign v15503_d1 = 8'd0;
assign v15503_we0 = dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6743_1_proc_U0_v15503_we0;
assign v15503_we1 = 1'b0;
assign v15504_address0 = dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v15504_address0;
assign v15504_address1 = 16'd0;
assign v15504_ce0 = dataflow_in_loop_VITIS_LOOP_6846_1_Loop_VITIS_LOOP_6794_1_proc_U0_v15504_ce0;
assign v15504_ce1 = 1'b0;
assign v15504_d0 = 8'd0;
assign v15504_d1 = 8'd0;
assign v15504_we0 = 1'b0;
assign v15504_we1 = 1'b0;
endmodule 