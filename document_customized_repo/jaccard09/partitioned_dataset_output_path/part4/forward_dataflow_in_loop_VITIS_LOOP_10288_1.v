
module forward_dataflow_in_loop_VITIS_LOOP_10288_1 (ap_clk,ap_rst,v8475_0,v15485_address0,v15485_ce0,v15485_d0,v15485_q0,v15485_we0,v15485_address1,v15485_ce1,v15485_d1,v15485_q1,v15485_we1,v15486_address0,v15486_ce0,v15486_d0,v15486_q0,v15486_we0,v15486_address1,v15486_ce1,v15486_d1,v15486_q1,v15486_we1,v15419_address0,v15419_ce0,v15419_d0,v15419_q0,v15419_we0,v15419_address1,v15419_ce1,v15419_d1,v15419_q1,v15419_we1,v15484_address0,v15484_ce0,v15484_d0,v15484_q0,v15484_we0,v15484_address1,v15484_ce1,v15484_d1,v15484_q1,v15484_we1,v8475_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [9:0] v8475_0;
output  [16:0] v15485_address0;
output   v15485_ce0;
output  [7:0] v15485_d0;
input  [7:0] v15485_q0;
output   v15485_we0;
output  [16:0] v15485_address1;
output   v15485_ce1;
output  [7:0] v15485_d1;
input  [7:0] v15485_q1;
output   v15485_we1;
output  [16:0] v15486_address0;
output   v15486_ce0;
output  [7:0] v15486_d0;
input  [7:0] v15486_q0;
output   v15486_we0;
output  [16:0] v15486_address1;
output   v15486_ce1;
output  [7:0] v15486_d1;
input  [7:0] v15486_q1;
output   v15486_we1;
output  [12:0] v15419_address0;
output   v15419_ce0;
output  [7:0] v15419_d0;
input  [7:0] v15419_q0;
output   v15419_we0;
output  [12:0] v15419_address1;
output   v15419_ce1;
output  [7:0] v15419_d1;
input  [7:0] v15419_q1;
output   v15419_we1;
output  [16:0] v15484_address0;
output   v15484_ce0;
output  [7:0] v15484_d0;
input  [7:0] v15484_q0;
output   v15484_we0;
output  [16:0] v15484_address1;
output   v15484_ce1;
output  [7:0] v15484_d1;
input  [7:0] v15484_q1;
output   v15484_we1;
input   v8475_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v8484_i_q0;
wire   [7:0] v8484_t_q0;
wire   [7:0] v8483_i_q0;
wire   [7:0] v8483_t_q0;
wire   [7:0] v8482_i_q0;
wire   [7:0] v8482_t_q0;
wire   [7:0] v8481_i_q0;
wire   [7:0] v8481_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v15484_address0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v15484_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v8483_address0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v8483_ce0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v8483_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v8483_d0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v15419_address0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v15419_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_address0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_ce0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_return;
wire    ap_channel_done_v8475_0_c71_channel2;
wire    v8475_0_c71_channel2_full_n;
reg    ap_sync_reg_channel_write_v8475_0_c71_channel2;
wire    ap_sync_channel_write_v8475_0_c71_channel2;
wire    ap_channel_done_v8482;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_full_n;
reg    ap_sync_reg_channel_write_v8482;
wire    ap_sync_channel_write_v8482;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v15486_address0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v15486_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v8481_address0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v8481_ce0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v8481_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v8481_d0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8482_address0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8482_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8483_address0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8483_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8481_address0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8481_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_address0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_ce0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_d0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_return;
wire    ap_channel_done_v8475_0_c_channel1;
wire    v8475_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v8475_0_c_channel1;
wire    ap_sync_channel_write_v8475_0_c_channel1;
wire    ap_channel_done_v8484;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_full_n;
reg    ap_sync_reg_channel_write_v8484;
wire    ap_sync_channel_write_v8484;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_ready;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v8484_address0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v8484_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v15485_address0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v15485_ce0;
wire    dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v15485_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v15485_d0;
wire    v8483_i_full_n;
wire    v8483_t_empty_n;
wire    v8482_i_full_n;
wire    v8482_t_empty_n;
wire    v8481_i_full_n;
wire    v8481_t_empty_n;
wire    v8484_i_full_n;
wire    v8484_t_empty_n;
wire   [9:0] v8475_0_c71_channel2_dout;
wire   [2:0] v8475_0_c71_channel2_num_data_valid;
wire   [2:0] v8475_0_c71_channel2_fifo_cap;
wire    v8475_0_c71_channel2_empty_n;
wire   [5:0] v8475_0_c_channel1_dout;
wire   [2:0] v8475_0_c_channel1_num_data_valid;
wire   [2:0] v8475_0_c_channel1_fifo_cap;
wire    v8475_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v8475_0_c71_channel2 = 1'b0;
#0 ap_sync_reg_channel_write_v8482 = 1'b0;
#0 ap_sync_reg_channel_write_v8475_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v8484 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v8484_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_d0),.i_q0(v8484_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v8484_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v8484_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8484_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8484_i_full_n),.i_write(ap_channel_done_v8484),.t_empty_n(v8484_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v8483_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v8483_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v8483_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v8483_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v8483_d0),.i_q0(v8483_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8483_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8483_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8483_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8483_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_done),.t_empty_n(v8483_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v8482_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_d0),.i_q0(v8482_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8482_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8482_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8482_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8482_i_full_n),.i_write(ap_channel_done_v8482),.t_empty_n(v8482_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v8481_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v8481_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v8481_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v8481_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v8481_d0),.i_q0(v8481_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8481_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8481_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8481_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8481_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_done),.t_empty_n(v8481_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167 dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready),.v8475_0(v8475_0),.v15484_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v15484_address0),.v15484_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v15484_ce0),.v15484_q0(v15484_q0),.v8483_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v8483_address0),.v8483_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v8483_ce0),.v8483_we0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v8483_we0),.v8483_d0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v8483_d0));
forward_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready),.v8475_0(v8475_0),.v15419_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v15419_address0),.v15419_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v15419_ce0),.v15419_q0(v15419_q0),.v8482_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_address0),.v8482_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_ce0),.v8482_we0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_we0),.v8482_d0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166 dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready),.v8475_0(v8475_0),.v15486_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v15486_address0),.v15486_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v15486_ce0),.v15486_q0(v15486_q0),.v8481_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v8481_address0),.v8481_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v8481_ce0),.v8481_we0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v8481_we0),.v8481_d0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v8481_d0));
forward_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_ready),.p_read(v8475_0_c71_channel2_dout),.v8482_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8482_address0),.v8482_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8482_ce0),.v8482_q0(v8482_t_q0),.v8483_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8483_address0),.v8483_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8483_ce0),.v8483_q0(v8483_t_q0),.v8481_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8481_address0),.v8481_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8481_ce0),.v8481_q0(v8481_t_q0),.v8484_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_address0),.v8484_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_ce0),.v8484_we0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_we0),.v8484_d0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168 dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_ready),.p_read(v8475_0_c_channel1_dout),.v8484_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v8484_address0),.v8484_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v8484_ce0),.v8484_q0(v8484_t_q0),.v15485_address0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v15485_address0),.v15485_ce0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v15485_ce0),.v15485_we0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v15485_we0),.v15485_d0(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v15485_d0));
forward_fifo_w10_d2_S_x5 v8475_0_c71_channel2_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_return),.if_full_n(v8475_0_c71_channel2_full_n),.if_write(ap_channel_done_v8475_0_c71_channel2),.if_dout(v8475_0_c71_channel2_dout),.if_num_data_valid(v8475_0_c71_channel2_num_data_valid),.if_fifo_cap(v8475_0_c71_channel2_fifo_cap),.if_empty_n(v8475_0_c71_channel2_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_ready));
forward_fifo_w6_d2_S_x7 v8475_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_return),.if_full_n(v8475_0_c_channel1_full_n),.if_write(ap_channel_done_v8475_0_c_channel1),.if_dout(v8475_0_c_channel1_dout),.if_num_data_valid(v8475_0_c_channel1_num_data_valid),.if_fifo_cap(v8475_0_c_channel1_fifo_cap),.if_empty_n(v8475_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8475_0_c71_channel2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8475_0_c71_channel2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8475_0_c71_channel2 <= ap_sync_channel_write_v8475_0_c71_channel2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8475_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8475_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8475_0_c_channel1 <= ap_sync_channel_write_v8475_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8482 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8482 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8482 <= ap_sync_channel_write_v8482;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8484 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8484 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8484 <= ap_sync_channel_write_v8484;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v8475_0_c71_channel2 = ((ap_sync_reg_channel_write_v8475_0_c71_channel2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_done);
assign ap_channel_done_v8475_0_c_channel1 = ((ap_sync_reg_channel_write_v8475_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_done);
assign ap_channel_done_v8482 = ((ap_sync_reg_channel_write_v8482 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_done);
assign ap_channel_done_v8484 = ((ap_sync_reg_channel_write_v8484 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_done;
assign ap_idle = ((v8475_0_c_channel1_empty_n ^ 1'b1) & (v8475_0_c71_channel2_empty_n ^ 1'b1) & (v8484_t_empty_n ^ 1'b1) & (v8481_t_empty_n ^ 1'b1) & (v8482_t_empty_n ^ 1'b1) & (v8483_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v8475_0_c71_channel2 = ((v8475_0_c71_channel2_full_n & ap_channel_done_v8475_0_c71_channel2) | ap_sync_reg_channel_write_v8475_0_c71_channel2);
assign ap_sync_channel_write_v8475_0_c_channel1 = ((v8475_0_c_channel1_full_n & ap_channel_done_v8475_0_c_channel1) | ap_sync_reg_channel_write_v8475_0_c_channel1);
assign ap_sync_channel_write_v8482 = ((dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_full_n & ap_channel_done_v8482) | ap_sync_reg_channel_write_v8482);
assign ap_sync_channel_write_v8484 = ((dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_full_n & ap_channel_done_v8484) | ap_sync_reg_channel_write_v8484);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_ap_start = (v8484_t_empty_n & v8475_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_continue = (ap_sync_channel_write_v8484 & ap_sync_channel_write_v8475_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_ap_start = (v8483_t_empty_n & v8482_t_empty_n & v8481_t_empty_n & v8475_0_c71_channel2_empty_n);
assign dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10197_1_proc_U0_v8484_full_n = v8484_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_continue = v8481_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_continue = (ap_sync_channel_write_v8482 & ap_sync_channel_write_v8475_0_c71_channel2);
assign dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v8482_full_n = v8482_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_continue = v8483_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_ap_ready ^ 1'b1) & ap_start);
assign v15419_address0 = dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v15419_address0;
assign v15419_address1 = 13'd0;
assign v15419_ce0 = dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10249_1_proc_U0_v15419_ce0;
assign v15419_ce1 = 1'b0;
assign v15419_d0 = 8'd0;
assign v15419_d1 = 8'd0;
assign v15419_we0 = 1'b0;
assign v15419_we1 = 1'b0;
assign v15484_address0 = dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v15484_address0;
assign v15484_address1 = 17'd0;
assign v15484_ce0 = dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10268_1_proc167_U0_v15484_ce0;
assign v15484_ce1 = 1'b0;
assign v15484_d0 = 8'd0;
assign v15484_d1 = 8'd0;
assign v15484_we0 = 1'b0;
assign v15484_we1 = 1'b0;
assign v15485_address0 = dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v15485_address0;
assign v15485_address1 = 17'd0;
assign v15485_ce0 = dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v15485_ce0;
assign v15485_ce1 = 1'b0;
assign v15485_d0 = dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v15485_d0;
assign v15485_d1 = 8'd0;
assign v15485_we0 = dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10169_1_proc168_U0_v15485_we0;
assign v15485_we1 = 1'b0;
assign v15486_address0 = dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v15486_address0;
assign v15486_address1 = 17'd0;
assign v15486_ce0 = dataflow_in_loop_VITIS_LOOP_10288_1_Loop_VITIS_LOOP_10228_1_proc166_U0_v15486_ce0;
assign v15486_ce1 = 1'b0;
assign v15486_d0 = 8'd0;
assign v15486_d1 = 8'd0;
assign v15486_we0 = 1'b0;
assign v15486_we1 = 1'b0;
endmodule 
