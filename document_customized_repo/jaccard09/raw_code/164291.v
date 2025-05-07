module forward_dataflow_in_loop_VITIS_LOOP_9130_1 (ap_clk,ap_rst,v7614_0,v15491_address0,v15491_ce0,v15491_d0,v15491_q0,v15491_we0,v15491_address1,v15491_ce1,v15491_d1,v15491_q1,v15491_we1,v15492_address0,v15492_ce0,v15492_d0,v15492_q0,v15492_we0,v15492_address1,v15492_ce1,v15492_d1,v15492_q1,v15492_we1,v15418_address0,v15418_ce0,v15418_d0,v15418_q0,v15418_we0,v15418_address1,v15418_ce1,v15418_d1,v15418_q1,v15418_we1,v15490_address0,v15490_ce0,v15490_d0,v15490_q0,v15490_we0,v15490_address1,v15490_ce1,v15490_d1,v15490_q1,v15490_we1,v7614_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [9:0] v7614_0;
output  [16:0] v15491_address0;
output   v15491_ce0;
output  [7:0] v15491_d0;
input  [7:0] v15491_q0;
output   v15491_we0;
output  [16:0] v15491_address1;
output   v15491_ce1;
output  [7:0] v15491_d1;
input  [7:0] v15491_q1;
output   v15491_we1;
output  [16:0] v15492_address0;
output   v15492_ce0;
output  [7:0] v15492_d0;
input  [7:0] v15492_q0;
output   v15492_we0;
output  [16:0] v15492_address1;
output   v15492_ce1;
output  [7:0] v15492_d1;
input  [7:0] v15492_q1;
output   v15492_we1;
output  [12:0] v15418_address0;
output   v15418_ce0;
output  [7:0] v15418_d0;
input  [7:0] v15418_q0;
output   v15418_we0;
output  [12:0] v15418_address1;
output   v15418_ce1;
output  [7:0] v15418_d1;
input  [7:0] v15418_q1;
output   v15418_we1;
output  [16:0] v15490_address0;
output   v15490_ce0;
output  [7:0] v15490_d0;
input  [7:0] v15490_q0;
output   v15490_we0;
output  [16:0] v15490_address1;
output   v15490_ce1;
output  [7:0] v15490_d1;
input  [7:0] v15490_q1;
output   v15490_we1;
input   v7614_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v7623_i_q0;
wire   [7:0] v7623_t_q0;
wire   [7:0] v7622_i_q0;
wire   [7:0] v7622_t_q0;
wire   [7:0] v7621_i_q0;
wire   [7:0] v7621_t_q0;
wire   [7:0] v7620_i_q0;
wire   [7:0] v7620_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v15490_address0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v15490_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v7622_address0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v7622_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v7622_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v7622_d0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v15418_address0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v15418_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_address0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_return;
wire    ap_channel_done_v7614_0_c71_channel2;
wire    v7614_0_c71_channel2_full_n;
reg    ap_sync_reg_channel_write_v7614_0_c71_channel2;
wire    ap_sync_channel_write_v7614_0_c71_channel2;
wire    ap_channel_done_v7621;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_full_n;
reg    ap_sync_reg_channel_write_v7621;
wire    ap_sync_channel_write_v7621;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v15492_address0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v15492_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v7620_address0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v7620_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v7620_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v7620_d0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7621_address0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7621_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7622_address0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7622_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7620_address0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7620_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_address0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_d0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_return;
wire    ap_channel_done_v7614_0_c_channel1;
wire    v7614_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v7614_0_c_channel1;
wire    ap_sync_channel_write_v7614_0_c_channel1;
wire    ap_channel_done_v7623;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_full_n;
reg    ap_sync_reg_channel_write_v7623;
wire    ap_sync_channel_write_v7623;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_ready;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v7623_address0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v7623_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v15491_address0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v15491_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v15491_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v15491_d0;
wire    v7622_i_full_n;
wire    v7622_t_empty_n;
wire    v7621_i_full_n;
wire    v7621_t_empty_n;
wire    v7620_i_full_n;
wire    v7620_t_empty_n;
wire    v7623_i_full_n;
wire    v7623_t_empty_n;
wire   [9:0] v7614_0_c71_channel2_dout;
wire   [2:0] v7614_0_c71_channel2_num_data_valid;
wire   [2:0] v7614_0_c71_channel2_fifo_cap;
wire    v7614_0_c71_channel2_empty_n;
wire   [5:0] v7614_0_c_channel1_dout;
wire   [2:0] v7614_0_c_channel1_num_data_valid;
wire   [2:0] v7614_0_c_channel1_fifo_cap;
wire    v7614_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v7614_0_c71_channel2 = 1'b0;
#0 ap_sync_reg_channel_write_v7621 = 1'b0;
#0 ap_sync_reg_channel_write_v7614_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v7623 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v7623_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_d0),.i_q0(v7623_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v7623_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v7623_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7623_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7623_i_full_n),.i_write(ap_channel_done_v7623),.t_empty_n(v7623_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v7622_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v7622_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v7622_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v7622_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v7622_d0),.i_q0(v7622_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7622_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7622_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7622_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7622_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_done),.t_empty_n(v7622_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v7621_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_d0),.i_q0(v7621_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7621_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7621_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7621_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7621_i_full_n),.i_write(ap_channel_done_v7621),.t_empty_n(v7621_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v7620_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v7620_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v7620_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v7620_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v7620_d0),.i_q0(v7620_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7620_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7620_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7620_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7620_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_done),.t_empty_n(v7620_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181 dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready),.v7614_0(v7614_0),.v15490_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v15490_address0),.v15490_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v15490_ce0),.v15490_q0(v15490_q0),.v7622_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v7622_address0),.v7622_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v7622_ce0),.v7622_we0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v7622_we0),.v7622_d0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v7622_d0));
forward_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready),.v7614_0(v7614_0),.v15418_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v15418_address0),.v15418_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v15418_ce0),.v15418_q0(v15418_q0),.v7621_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_address0),.v7621_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_ce0),.v7621_we0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_we0),.v7621_d0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180 dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready),.v7614_0(v7614_0),.v15492_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v15492_address0),.v15492_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v15492_ce0),.v15492_q0(v15492_q0),.v7620_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v7620_address0),.v7620_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v7620_ce0),.v7620_we0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v7620_we0),.v7620_d0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v7620_d0));
forward_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_ready),.p_read(v7614_0_c71_channel2_dout),.v7621_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7621_address0),.v7621_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7621_ce0),.v7621_q0(v7621_t_q0),.v7622_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7622_address0),.v7622_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7622_ce0),.v7622_q0(v7622_t_q0),.v7620_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7620_address0),.v7620_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7620_ce0),.v7620_q0(v7620_t_q0),.v7623_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_address0),.v7623_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_ce0),.v7623_we0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_we0),.v7623_d0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182 dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_ready),.p_read(v7614_0_c_channel1_dout),.v7623_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v7623_address0),.v7623_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v7623_ce0),.v7623_q0(v7623_t_q0),.v15491_address0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v15491_address0),.v15491_ce0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v15491_ce0),.v15491_we0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v15491_we0),.v15491_d0(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v15491_d0));
forward_fifo_w10_d2_S_x7 v7614_0_c71_channel2_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_return),.if_full_n(v7614_0_c71_channel2_full_n),.if_write(ap_channel_done_v7614_0_c71_channel2),.if_dout(v7614_0_c71_channel2_dout),.if_num_data_valid(v7614_0_c71_channel2_num_data_valid),.if_fifo_cap(v7614_0_c71_channel2_fifo_cap),.if_empty_n(v7614_0_c71_channel2_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_ready));
forward_fifo_w6_d2_S_x9 v7614_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_return),.if_full_n(v7614_0_c_channel1_full_n),.if_write(ap_channel_done_v7614_0_c_channel1),.if_dout(v7614_0_c_channel1_dout),.if_num_data_valid(v7614_0_c_channel1_num_data_valid),.if_fifo_cap(v7614_0_c_channel1_fifo_cap),.if_empty_n(v7614_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7614_0_c71_channel2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7614_0_c71_channel2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7614_0_c71_channel2 <= ap_sync_channel_write_v7614_0_c71_channel2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7614_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7614_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7614_0_c_channel1 <= ap_sync_channel_write_v7614_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7621 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7621 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7621 <= ap_sync_channel_write_v7621;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7623 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7623 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7623 <= ap_sync_channel_write_v7623;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v7614_0_c71_channel2 = ((ap_sync_reg_channel_write_v7614_0_c71_channel2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_done);
assign ap_channel_done_v7614_0_c_channel1 = ((ap_sync_reg_channel_write_v7614_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_done);
assign ap_channel_done_v7621 = ((ap_sync_reg_channel_write_v7621 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_done);
assign ap_channel_done_v7623 = ((ap_sync_reg_channel_write_v7623 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_done;
assign ap_idle = ((v7614_0_c_channel1_empty_n ^ 1'b1) & (v7614_0_c71_channel2_empty_n ^ 1'b1) & (v7623_t_empty_n ^ 1'b1) & (v7620_t_empty_n ^ 1'b1) & (v7621_t_empty_n ^ 1'b1) & (v7622_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v7614_0_c71_channel2 = ((v7614_0_c71_channel2_full_n & ap_channel_done_v7614_0_c71_channel2) | ap_sync_reg_channel_write_v7614_0_c71_channel2);
assign ap_sync_channel_write_v7614_0_c_channel1 = ((v7614_0_c_channel1_full_n & ap_channel_done_v7614_0_c_channel1) | ap_sync_reg_channel_write_v7614_0_c_channel1);
assign ap_sync_channel_write_v7621 = ((dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_full_n & ap_channel_done_v7621) | ap_sync_reg_channel_write_v7621);
assign ap_sync_channel_write_v7623 = ((dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_full_n & ap_channel_done_v7623) | ap_sync_reg_channel_write_v7623);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_ap_start = (v7623_t_empty_n & v7614_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_continue = (ap_sync_channel_write_v7623 & ap_sync_channel_write_v7614_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_ap_start = (v7622_t_empty_n & v7621_t_empty_n & v7620_t_empty_n & v7614_0_c71_channel2_empty_n);
assign dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9039_1_proc_U0_v7623_full_n = v7623_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_continue = v7620_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_continue = (ap_sync_channel_write_v7621 & ap_sync_channel_write_v7614_0_c71_channel2);
assign dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v7621_full_n = v7621_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_continue = v7622_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_ap_ready ^ 1'b1) & ap_start);
assign v15418_address0 = dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v15418_address0;
assign v15418_address1 = 13'd0;
assign v15418_ce0 = dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9091_1_proc_U0_v15418_ce0;
assign v15418_ce1 = 1'b0;
assign v15418_d0 = 8'd0;
assign v15418_d1 = 8'd0;
assign v15418_we0 = 1'b0;
assign v15418_we1 = 1'b0;
assign v15490_address0 = dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v15490_address0;
assign v15490_address1 = 17'd0;
assign v15490_ce0 = dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9110_1_proc181_U0_v15490_ce0;
assign v15490_ce1 = 1'b0;
assign v15490_d0 = 8'd0;
assign v15490_d1 = 8'd0;
assign v15490_we0 = 1'b0;
assign v15490_we1 = 1'b0;
assign v15491_address0 = dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v15491_address0;
assign v15491_address1 = 17'd0;
assign v15491_ce0 = dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v15491_ce0;
assign v15491_ce1 = 1'b0;
assign v15491_d0 = dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v15491_d0;
assign v15491_d1 = 8'd0;
assign v15491_we0 = dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9011_1_proc182_U0_v15491_we0;
assign v15491_we1 = 1'b0;
assign v15492_address0 = dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v15492_address0;
assign v15492_address1 = 17'd0;
assign v15492_ce0 = dataflow_in_loop_VITIS_LOOP_9130_1_Loop_VITIS_LOOP_9070_1_proc180_U0_v15492_ce0;
assign v15492_ce1 = 1'b0;
assign v15492_d0 = 8'd0;
assign v15492_d1 = 8'd0;
assign v15492_we0 = 1'b0;
assign v15492_we1 = 1'b0;
endmodule 