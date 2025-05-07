module forward_dataflow_in_loop_VITIS_LOOP_12604_1 (ap_clk,ap_rst,v10197_0,v15473_address0,v15473_ce0,v15473_d0,v15473_q0,v15473_we0,v15473_address1,v15473_ce1,v15473_d1,v15473_q1,v15473_we1,v15474_address0,v15474_ce0,v15474_d0,v15474_q0,v15474_we0,v15474_address1,v15474_ce1,v15474_d1,v15474_q1,v15474_we1,v15421_address0,v15421_ce0,v15421_d0,v15421_q0,v15421_we0,v15421_address1,v15421_ce1,v15421_d1,v15421_q1,v15421_we1,v15472_address0,v15472_ce0,v15472_d0,v15472_q0,v15472_we0,v15472_address1,v15472_ce1,v15472_d1,v15472_q1,v15472_we1,v10197_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [9:0] v10197_0;
output  [16:0] v15473_address0;
output   v15473_ce0;
output  [7:0] v15473_d0;
input  [7:0] v15473_q0;
output   v15473_we0;
output  [16:0] v15473_address1;
output   v15473_ce1;
output  [7:0] v15473_d1;
input  [7:0] v15473_q1;
output   v15473_we1;
output  [16:0] v15474_address0;
output   v15474_ce0;
output  [7:0] v15474_d0;
input  [7:0] v15474_q0;
output   v15474_we0;
output  [16:0] v15474_address1;
output   v15474_ce1;
output  [7:0] v15474_d1;
input  [7:0] v15474_q1;
output   v15474_we1;
output  [12:0] v15421_address0;
output   v15421_ce0;
output  [7:0] v15421_d0;
input  [7:0] v15421_q0;
output   v15421_we0;
output  [12:0] v15421_address1;
output   v15421_ce1;
output  [7:0] v15421_d1;
input  [7:0] v15421_q1;
output   v15421_we1;
output  [16:0] v15472_address0;
output   v15472_ce0;
output  [7:0] v15472_d0;
input  [7:0] v15472_q0;
output   v15472_we0;
output  [16:0] v15472_address1;
output   v15472_ce1;
output  [7:0] v15472_d1;
input  [7:0] v15472_q1;
output   v15472_we1;
input   v10197_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v10206_i_q0;
wire   [7:0] v10206_t_q0;
wire   [7:0] v10205_i_q0;
wire   [7:0] v10205_t_q0;
wire   [7:0] v10204_i_q0;
wire   [7:0] v10204_t_q0;
wire   [7:0] v10203_i_q0;
wire   [7:0] v10203_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v15472_address0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v15472_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v10205_address0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v10205_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v10205_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v10205_d0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v15421_address0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v15421_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_address0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_return;
wire    ap_channel_done_v10197_0_c71_channel2;
wire    v10197_0_c71_channel2_full_n;
reg    ap_sync_reg_channel_write_v10197_0_c71_channel2;
wire    ap_sync_channel_write_v10197_0_c71_channel2;
wire    ap_channel_done_v10204;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_full_n;
reg    ap_sync_reg_channel_write_v10204;
wire    ap_sync_channel_write_v10204;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v15474_address0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v15474_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v10203_address0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v10203_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v10203_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v10203_d0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10204_address0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10204_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10205_address0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10205_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10203_address0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10203_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_address0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_d0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_return;
wire    ap_channel_done_v10197_0_c_channel1;
wire    v10197_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v10197_0_c_channel1;
wire    ap_sync_channel_write_v10197_0_c_channel1;
wire    ap_channel_done_v10206;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_full_n;
reg    ap_sync_reg_channel_write_v10206;
wire    ap_sync_channel_write_v10206;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_ready;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v10206_address0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v10206_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v15473_address0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v15473_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v15473_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v15473_d0;
wire    v10205_i_full_n;
wire    v10205_t_empty_n;
wire    v10204_i_full_n;
wire    v10204_t_empty_n;
wire    v10203_i_full_n;
wire    v10203_t_empty_n;
wire    v10206_i_full_n;
wire    v10206_t_empty_n;
wire   [9:0] v10197_0_c71_channel2_dout;
wire   [2:0] v10197_0_c71_channel2_num_data_valid;
wire   [2:0] v10197_0_c71_channel2_fifo_cap;
wire    v10197_0_c71_channel2_empty_n;
wire   [5:0] v10197_0_c_channel1_dout;
wire   [2:0] v10197_0_c_channel1_num_data_valid;
wire   [2:0] v10197_0_c_channel1_fifo_cap;
wire    v10197_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v10197_0_c71_channel2 = 1'b0;
#0 ap_sync_reg_channel_write_v10204 = 1'b0;
#0 ap_sync_reg_channel_write_v10197_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v10206 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v10206_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_d0),.i_q0(v10206_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v10206_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v10206_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v10206_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v10206_i_full_n),.i_write(ap_channel_done_v10206),.t_empty_n(v10206_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v10205_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v10205_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v10205_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v10205_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v10205_d0),.i_q0(v10205_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10205_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10205_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v10205_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v10205_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_done),.t_empty_n(v10205_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v10204_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_d0),.i_q0(v10204_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10204_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10204_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v10204_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v10204_i_full_n),.i_write(ap_channel_done_v10204),.t_empty_n(v10204_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v10203_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v10203_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v10203_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v10203_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v10203_d0),.i_q0(v10203_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10203_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10203_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v10203_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v10203_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_done),.t_empty_n(v10203_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139 dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready),.v10197_0(v10197_0),.v15472_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v15472_address0),.v15472_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v15472_ce0),.v15472_q0(v15472_q0),.v10205_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v10205_address0),.v10205_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v10205_ce0),.v10205_we0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v10205_we0),.v10205_d0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v10205_d0));
forward_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready),.v10197_0(v10197_0),.v15421_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v15421_address0),.v15421_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v15421_ce0),.v15421_q0(v15421_q0),.v10204_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_address0),.v10204_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_ce0),.v10204_we0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_we0),.v10204_d0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138 dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready),.v10197_0(v10197_0),.v15474_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v15474_address0),.v15474_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v15474_ce0),.v15474_q0(v15474_q0),.v10203_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v10203_address0),.v10203_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v10203_ce0),.v10203_we0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v10203_we0),.v10203_d0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v10203_d0));
forward_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_ready),.p_read(v10197_0_c71_channel2_dout),.v10204_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10204_address0),.v10204_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10204_ce0),.v10204_q0(v10204_t_q0),.v10205_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10205_address0),.v10205_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10205_ce0),.v10205_q0(v10205_t_q0),.v10203_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10203_address0),.v10203_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10203_ce0),.v10203_q0(v10203_t_q0),.v10206_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_address0),.v10206_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_ce0),.v10206_we0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_we0),.v10206_d0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140 dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_ready),.p_read(v10197_0_c_channel1_dout),.v10206_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v10206_address0),.v10206_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v10206_ce0),.v10206_q0(v10206_t_q0),.v15473_address0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v15473_address0),.v15473_ce0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v15473_ce0),.v15473_we0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v15473_we0),.v15473_d0(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v15473_d0));
forward_fifo_w10_d2_S_x1 v10197_0_c71_channel2_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_return),.if_full_n(v10197_0_c71_channel2_full_n),.if_write(ap_channel_done_v10197_0_c71_channel2),.if_dout(v10197_0_c71_channel2_dout),.if_num_data_valid(v10197_0_c71_channel2_num_data_valid),.if_fifo_cap(v10197_0_c71_channel2_fifo_cap),.if_empty_n(v10197_0_c71_channel2_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_ready));
forward_fifo_w6_d2_S_x3 v10197_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_return),.if_full_n(v10197_0_c_channel1_full_n),.if_write(ap_channel_done_v10197_0_c_channel1),.if_dout(v10197_0_c_channel1_dout),.if_num_data_valid(v10197_0_c_channel1_num_data_valid),.if_fifo_cap(v10197_0_c_channel1_fifo_cap),.if_empty_n(v10197_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v10197_0_c71_channel2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v10197_0_c71_channel2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v10197_0_c71_channel2 <= ap_sync_channel_write_v10197_0_c71_channel2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v10197_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v10197_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v10197_0_c_channel1 <= ap_sync_channel_write_v10197_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v10204 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v10204 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v10204 <= ap_sync_channel_write_v10204;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v10206 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v10206 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v10206 <= ap_sync_channel_write_v10206;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v10197_0_c71_channel2 = ((ap_sync_reg_channel_write_v10197_0_c71_channel2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_done);
assign ap_channel_done_v10197_0_c_channel1 = ((ap_sync_reg_channel_write_v10197_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_done);
assign ap_channel_done_v10204 = ((ap_sync_reg_channel_write_v10204 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_done);
assign ap_channel_done_v10206 = ((ap_sync_reg_channel_write_v10206 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_done;
assign ap_idle = ((v10197_0_c_channel1_empty_n ^ 1'b1) & (v10197_0_c71_channel2_empty_n ^ 1'b1) & (v10206_t_empty_n ^ 1'b1) & (v10203_t_empty_n ^ 1'b1) & (v10204_t_empty_n ^ 1'b1) & (v10205_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v10197_0_c71_channel2 = ((v10197_0_c71_channel2_full_n & ap_channel_done_v10197_0_c71_channel2) | ap_sync_reg_channel_write_v10197_0_c71_channel2);
assign ap_sync_channel_write_v10197_0_c_channel1 = ((v10197_0_c_channel1_full_n & ap_channel_done_v10197_0_c_channel1) | ap_sync_reg_channel_write_v10197_0_c_channel1);
assign ap_sync_channel_write_v10204 = ((dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_full_n & ap_channel_done_v10204) | ap_sync_reg_channel_write_v10204);
assign ap_sync_channel_write_v10206 = ((dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_full_n & ap_channel_done_v10206) | ap_sync_reg_channel_write_v10206);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_ap_start = (v10206_t_empty_n & v10197_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_continue = (ap_sync_channel_write_v10206 & ap_sync_channel_write_v10197_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_ap_start = (v10205_t_empty_n & v10204_t_empty_n & v10203_t_empty_n & v10197_0_c71_channel2_empty_n);
assign dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12513_1_proc_U0_v10206_full_n = v10206_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_continue = v10203_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_continue = (ap_sync_channel_write_v10204 & ap_sync_channel_write_v10197_0_c71_channel2);
assign dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v10204_full_n = v10204_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_continue = v10205_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_ap_ready ^ 1'b1) & ap_start);
assign v15421_address0 = dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v15421_address0;
assign v15421_address1 = 13'd0;
assign v15421_ce0 = dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12565_1_proc_U0_v15421_ce0;
assign v15421_ce1 = 1'b0;
assign v15421_d0 = 8'd0;
assign v15421_d1 = 8'd0;
assign v15421_we0 = 1'b0;
assign v15421_we1 = 1'b0;
assign v15472_address0 = dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v15472_address0;
assign v15472_address1 = 17'd0;
assign v15472_ce0 = dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12584_1_proc139_U0_v15472_ce0;
assign v15472_ce1 = 1'b0;
assign v15472_d0 = 8'd0;
assign v15472_d1 = 8'd0;
assign v15472_we0 = 1'b0;
assign v15472_we1 = 1'b0;
assign v15473_address0 = dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v15473_address0;
assign v15473_address1 = 17'd0;
assign v15473_ce0 = dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v15473_ce0;
assign v15473_ce1 = 1'b0;
assign v15473_d0 = dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v15473_d0;
assign v15473_d1 = 8'd0;
assign v15473_we0 = dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12485_1_proc140_U0_v15473_we0;
assign v15473_we1 = 1'b0;
assign v15474_address0 = dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v15474_address0;
assign v15474_address1 = 17'd0;
assign v15474_ce0 = dataflow_in_loop_VITIS_LOOP_12604_1_Loop_VITIS_LOOP_12544_1_proc138_U0_v15474_ce0;
assign v15474_ce1 = 1'b0;
assign v15474_d0 = 8'd0;
assign v15474_d1 = 8'd0;
assign v15474_we0 = 1'b0;
assign v15474_we1 = 1'b0;
endmodule 