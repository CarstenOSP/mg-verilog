module forward_dataflow_in_loop_VITIS_LOOP_19060_1 (ap_clk,ap_rst,v14644_0,v15437_1_address0,v15437_1_ce0,v15437_1_d0,v15437_1_q0,v15437_1_we0,v15437_1_address1,v15437_1_ce1,v15437_1_d1,v15437_1_q1,v15437_1_we1,v15437_0_address0,v15437_0_ce0,v15437_0_d0,v15437_0_q0,v15437_0_we0,v15437_0_address1,v15437_0_ce1,v15437_0_d1,v15437_0_q1,v15437_0_we1,v15438_0_address0,v15438_0_ce0,v15438_0_d0,v15438_0_q0,v15438_0_we0,v15438_0_address1,v15438_0_ce1,v15438_0_d1,v15438_0_q1,v15438_0_we1,v15438_1_address0,v15438_1_ce0,v15438_1_d0,v15438_1_q0,v15438_1_we0,v15438_1_address1,v15438_1_ce1,v15438_1_d1,v15438_1_q1,v15438_1_we1,v15436_0_address0,v15436_0_ce0,v15436_0_d0,v15436_0_q0,v15436_0_we0,v15436_0_address1,v15436_0_ce1,v15436_0_d1,v15436_0_q1,v15436_0_we1,v15436_1_address0,v15436_1_ce0,v15436_1_d0,v15436_1_q0,v15436_1_we0,v15436_1_address1,v15436_1_ce1,v15436_1_d1,v15436_1_q1,v15436_1_we1,v15436_2_address0,v15436_2_ce0,v15436_2_d0,v15436_2_q0,v15436_2_we0,v15436_2_address1,v15436_2_ce1,v15436_2_d1,v15436_2_q1,v15436_2_we1,v15436_3_address0,v15436_3_ce0,v15436_3_d0,v15436_3_q0,v15436_3_we0,v15436_3_address1,v15436_3_ce1,v15436_3_d1,v15436_3_q1,v15436_3_we1,v14644_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [6:0] v14644_0;
output  [16:0] v15437_1_address0;
output   v15437_1_ce0;
output  [7:0] v15437_1_d0;
input  [7:0] v15437_1_q0;
output   v15437_1_we0;
output  [16:0] v15437_1_address1;
output   v15437_1_ce1;
output  [7:0] v15437_1_d1;
input  [7:0] v15437_1_q1;
output   v15437_1_we1;
output  [16:0] v15437_0_address0;
output   v15437_0_ce0;
output  [7:0] v15437_0_d0;
input  [7:0] v15437_0_q0;
output   v15437_0_we0;
output  [16:0] v15437_0_address1;
output   v15437_0_ce1;
output  [7:0] v15437_0_d1;
input  [7:0] v15437_0_q1;
output   v15437_0_we1;
output  [16:0] v15438_0_address0;
output   v15438_0_ce0;
output  [7:0] v15438_0_d0;
input  [7:0] v15438_0_q0;
output   v15438_0_we0;
output  [16:0] v15438_0_address1;
output   v15438_0_ce1;
output  [7:0] v15438_0_d1;
input  [7:0] v15438_0_q1;
output   v15438_0_we1;
output  [16:0] v15438_1_address0;
output   v15438_1_ce0;
output  [7:0] v15438_1_d0;
input  [7:0] v15438_1_q0;
output   v15438_1_we0;
output  [16:0] v15438_1_address1;
output   v15438_1_ce1;
output  [7:0] v15438_1_d1;
input  [7:0] v15438_1_q1;
output   v15438_1_we1;
output  [17:0] v15436_0_address0;
output   v15436_0_ce0;
output  [7:0] v15436_0_d0;
input  [7:0] v15436_0_q0;
output   v15436_0_we0;
output  [17:0] v15436_0_address1;
output   v15436_0_ce1;
output  [7:0] v15436_0_d1;
input  [7:0] v15436_0_q1;
output   v15436_0_we1;
output  [17:0] v15436_1_address0;
output   v15436_1_ce0;
output  [7:0] v15436_1_d0;
input  [7:0] v15436_1_q0;
output   v15436_1_we0;
output  [17:0] v15436_1_address1;
output   v15436_1_ce1;
output  [7:0] v15436_1_d1;
input  [7:0] v15436_1_q1;
output   v15436_1_we1;
output  [17:0] v15436_2_address0;
output   v15436_2_ce0;
output  [7:0] v15436_2_d0;
input  [7:0] v15436_2_q0;
output   v15436_2_we0;
output  [17:0] v15436_2_address1;
output   v15436_2_ce1;
output  [7:0] v15436_2_d1;
input  [7:0] v15436_2_q1;
output   v15436_2_we1;
output  [17:0] v15436_3_address0;
output   v15436_3_ce0;
output  [7:0] v15436_3_d0;
input  [7:0] v15436_3_q0;
output   v15436_3_we0;
output  [17:0] v15436_3_address1;
output   v15436_3_ce1;
output  [7:0] v15436_3_d1;
input  [7:0] v15436_3_q1;
output   v15436_3_we1;
input   v14644_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v14652_i_q0;
wire   [7:0] v14652_t_q0;
wire   [7:0] v14652_1_i_q0;
wire   [7:0] v14652_1_t_q0;
wire   [7:0] v14651_i_q0;
wire   [7:0] v14651_t_q0;
wire   [7:0] v14651_1_i_q0;
wire   [7:0] v14651_1_t_q0;
wire   [7:0] v14650_i_q0;
wire   [7:0] v14650_t_q0;
wire   [7:0] v14650_1_i_q0;
wire   [7:0] v14650_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_d0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_0_ce0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_1_ce0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_2_ce0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_3_ce0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_return;
wire    ap_channel_done_v14644_0_c87_channel2;
wire    v14644_0_c87_channel2_full_n;
reg    ap_sync_reg_channel_write_v14644_0_c87_channel2;
wire    ap_sync_channel_write_v14644_0_c87_channel2;
wire    ap_channel_done_v14651_1;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_full_n;
reg    ap_sync_reg_channel_write_v14651_1;
wire    ap_sync_channel_write_v14651_1;
wire    ap_channel_done_v14651;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_full_n;
reg    ap_sync_reg_channel_write_v14651;
wire    ap_sync_channel_write_v14651;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_d0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v15438_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v15438_0_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v15438_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v15438_1_ce0;
wire    ap_channel_done_v14650_1;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_full_n;
reg    ap_sync_reg_channel_write_v14650_1;
wire    ap_sync_channel_write_v14650_1;
wire    ap_channel_done_v14650;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_full_n;
reg    ap_sync_reg_channel_write_v14650;
wire    ap_sync_channel_write_v14650;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14651_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14651_1_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14650_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14650_1_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14651_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14651_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14650_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14650_ce0;
wire   [2:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_return;
wire    ap_channel_done_v14644_0_c_channel1;
wire    v14644_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v14644_0_c_channel1;
wire    ap_sync_channel_write_v14644_0_c_channel1;
wire    ap_channel_done_v14652_1;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_full_n;
reg    ap_sync_reg_channel_write_v14652_1;
wire    ap_sync_channel_write_v14652_1;
wire    ap_channel_done_v14652;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_full_n;
reg    ap_sync_reg_channel_write_v14652;
wire    ap_sync_channel_write_v14652;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_1_d0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_0_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v14652_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v14652_1_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v14652_address0;
wire    dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v14652_ce0;
wire    v14651_i_full_n;
wire    v14651_t_empty_n;
wire    v14651_1_i_full_n;
wire    v14651_1_t_empty_n;
wire    v14650_i_full_n;
wire    v14650_t_empty_n;
wire    v14650_1_i_full_n;
wire    v14650_1_t_empty_n;
wire    v14652_i_full_n;
wire    v14652_t_empty_n;
wire    v14652_1_i_full_n;
wire    v14652_1_t_empty_n;
wire   [6:0] v14644_0_c87_channel2_dout;
wire   [2:0] v14644_0_c87_channel2_num_data_valid;
wire   [2:0] v14644_0_c87_channel2_fifo_cap;
wire    v14644_0_c87_channel2_empty_n;
wire   [2:0] v14644_0_c_channel1_dout;
wire   [2:0] v14644_0_c_channel1_num_data_valid;
wire   [2:0] v14644_0_c_channel1_fifo_cap;
wire    v14644_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v14644_0_c87_channel2 = 1'b0;
#0 ap_sync_reg_channel_write_v14651_1 = 1'b0;
#0 ap_sync_reg_channel_write_v14651 = 1'b0;
#0 ap_sync_reg_channel_write_v14650_1 = 1'b0;
#0 ap_sync_reg_channel_write_v14650 = 1'b0;
#0 ap_sync_reg_channel_write_v14644_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v14652_1 = 1'b0;
#0 ap_sync_reg_channel_write_v14652 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19060_1_v14652_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v14652_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_d0),.i_q0(v14652_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v14652_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v14652_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v14652_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v14652_i_full_n),.i_write(ap_channel_done_v14652),.t_empty_n(v14652_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19060_1_v14652_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v14652_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_d0),.i_q0(v14652_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v14652_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v14652_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v14652_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v14652_1_i_full_n),.i_write(ap_channel_done_v14652_1),.t_empty_n(v14652_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19060_1_v14652_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v14651_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_d0),.i_q0(v14651_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14651_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14651_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v14651_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v14651_i_full_n),.i_write(ap_channel_done_v14651),.t_empty_n(v14651_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19060_1_v14652_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v14651_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_d0),.i_q0(v14651_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14651_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14651_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v14651_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v14651_1_i_full_n),.i_write(ap_channel_done_v14651_1),.t_empty_n(v14651_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19060_1_v14652_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v14650_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_d0),.i_q0(v14650_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14650_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14650_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v14650_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v14650_i_full_n),.i_write(ap_channel_done_v14650),.t_empty_n(v14650_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19060_1_v14652_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v14650_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_d0),.i_q0(v14650_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14650_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14650_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v14650_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v14650_1_i_full_n),.i_write(ap_channel_done_v14650_1),.t_empty_n(v14650_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56 dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready),.v14651_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_address0),.v14651_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_ce0),.v14651_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_we0),.v14651_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_d0),.v14651_1_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_address0),.v14651_1_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_ce0),.v14651_1_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_we0),.v14651_1_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_d0),.v14644_0(v14644_0),.v15436_0_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_0_address0),.v15436_0_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_0_ce0),.v15436_0_q0(v15436_0_q0),.v15436_1_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_1_address0),.v15436_1_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_1_ce0),.v15436_1_q0(v15436_1_q0),.v15436_2_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_2_address0),.v15436_2_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_2_ce0),.v15436_2_q0(v15436_2_q0),.v15436_3_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_3_address0),.v15436_3_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_3_ce0),.v15436_3_q0(v15436_3_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55 dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready),.v14650_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_address0),.v14650_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_ce0),.v14650_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_we0),.v14650_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_d0),.v14650_1_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_address0),.v14650_1_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_ce0),.v14650_1_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_we0),.v14650_1_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_d0),.v14644_0(v14644_0),.v15438_0_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v15438_0_address0),.v15438_0_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v15438_0_ce0),.v15438_0_q0(v15438_0_q0),.v15438_1_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v15438_1_address0),.v15438_1_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v15438_1_ce0),.v15438_1_q0(v15438_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_ready),.p_read(v14644_0_c87_channel2_dout),.v14652_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_address0),.v14652_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_ce0),.v14652_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_we0),.v14652_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_d0),.v14652_1_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_address0),.v14652_1_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_ce0),.v14652_1_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_we0),.v14652_1_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_d0),.v14651_1_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14651_1_address0),.v14651_1_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14651_1_ce0),.v14651_1_q0(v14651_1_t_q0),.v14650_1_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14650_1_address0),.v14650_1_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14650_1_ce0),.v14650_1_q0(v14650_1_t_q0),.v14651_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14651_address0),.v14651_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14651_ce0),.v14651_q0(v14651_t_q0),.v14650_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14650_address0),.v14650_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14650_ce0),.v14650_q0(v14650_t_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57 dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_ready),.v15437_1_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_1_address0),.v15437_1_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_1_ce0),.v15437_1_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_1_we0),.v15437_1_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_1_d0),.v15437_0_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_0_address0),.v15437_0_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_0_ce0),.v15437_0_we0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_0_we0),.v15437_0_d0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_0_d0),.p_read(v14644_0_c_channel1_dout),.v14652_1_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v14652_1_address0),.v14652_1_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v14652_1_ce0),.v14652_1_q0(v14652_1_t_q0),.v14652_address0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v14652_address0),.v14652_ce0(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v14652_ce0),.v14652_q0(v14652_t_q0));
forward_fifo_w7_d2_S v14644_0_c87_channel2_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_return),.if_full_n(v14644_0_c87_channel2_full_n),.if_write(ap_channel_done_v14644_0_c87_channel2),.if_dout(v14644_0_c87_channel2_dout),.if_num_data_valid(v14644_0_c87_channel2_num_data_valid),.if_fifo_cap(v14644_0_c87_channel2_fifo_cap),.if_empty_n(v14644_0_c87_channel2_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_ready));
forward_fifo_w3_d2_S v14644_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_return),.if_full_n(v14644_0_c_channel1_full_n),.if_write(ap_channel_done_v14644_0_c_channel1),.if_dout(v14644_0_c_channel1_dout),.if_num_data_valid(v14644_0_c_channel1_num_data_valid),.if_fifo_cap(v14644_0_c_channel1_fifo_cap),.if_empty_n(v14644_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v14644_0_c87_channel2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v14644_0_c87_channel2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v14644_0_c87_channel2 <= ap_sync_channel_write_v14644_0_c87_channel2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v14644_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v14644_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v14644_0_c_channel1 <= ap_sync_channel_write_v14644_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v14650 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v14650 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v14650 <= ap_sync_channel_write_v14650;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v14650_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v14650_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v14650_1 <= ap_sync_channel_write_v14650_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v14651 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v14651 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v14651 <= ap_sync_channel_write_v14651;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v14651_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v14651_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v14651_1 <= ap_sync_channel_write_v14651_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v14652 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v14652 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v14652 <= ap_sync_channel_write_v14652;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v14652_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v14652_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v14652_1 <= ap_sync_channel_write_v14652_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v14644_0_c87_channel2 = ((ap_sync_reg_channel_write_v14644_0_c87_channel2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_done);
assign ap_channel_done_v14644_0_c_channel1 = ((ap_sync_reg_channel_write_v14644_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_done);
assign ap_channel_done_v14650 = ((ap_sync_reg_channel_write_v14650 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_done);
assign ap_channel_done_v14650_1 = ((ap_sync_reg_channel_write_v14650_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_done);
assign ap_channel_done_v14651 = ((ap_sync_reg_channel_write_v14651 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_done);
assign ap_channel_done_v14651_1 = ((ap_sync_reg_channel_write_v14651_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_done);
assign ap_channel_done_v14652 = ((ap_sync_reg_channel_write_v14652 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_done);
assign ap_channel_done_v14652_1 = ((ap_sync_reg_channel_write_v14652_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_done;
assign ap_idle = ((v14644_0_c_channel1_empty_n ^ 1'b1) & (v14644_0_c87_channel2_empty_n ^ 1'b1) & (v14652_1_t_empty_n ^ 1'b1) & (v14652_t_empty_n ^ 1'b1) & (v14650_1_t_empty_n ^ 1'b1) & (v14650_t_empty_n ^ 1'b1) & (v14651_1_t_empty_n ^ 1'b1) & (v14651_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v14644_0_c87_channel2 = ((v14644_0_c87_channel2_full_n & ap_channel_done_v14644_0_c87_channel2) | ap_sync_reg_channel_write_v14644_0_c87_channel2);
assign ap_sync_channel_write_v14644_0_c_channel1 = ((v14644_0_c_channel1_full_n & ap_channel_done_v14644_0_c_channel1) | ap_sync_reg_channel_write_v14644_0_c_channel1);
assign ap_sync_channel_write_v14650 = ((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_full_n & ap_channel_done_v14650) | ap_sync_reg_channel_write_v14650);
assign ap_sync_channel_write_v14650_1 = ((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_full_n & ap_channel_done_v14650_1) | ap_sync_reg_channel_write_v14650_1);
assign ap_sync_channel_write_v14651 = ((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_full_n & ap_channel_done_v14651) | ap_sync_reg_channel_write_v14651);
assign ap_sync_channel_write_v14651_1 = ((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_full_n & ap_channel_done_v14651_1) | ap_sync_reg_channel_write_v14651_1);
assign ap_sync_channel_write_v14652 = ((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_full_n & ap_channel_done_v14652) | ap_sync_reg_channel_write_v14652);
assign ap_sync_channel_write_v14652_1 = ((dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_full_n & ap_channel_done_v14652_1) | ap_sync_reg_channel_write_v14652_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_ap_start = (v14652_t_empty_n & v14652_1_t_empty_n & v14644_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_continue = (ap_sync_channel_write_v14652_1 & ap_sync_channel_write_v14652 & ap_sync_channel_write_v14644_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_ap_start = (v14651_t_empty_n & v14651_1_t_empty_n & v14650_t_empty_n & v14650_1_t_empty_n & v14644_0_c87_channel2_empty_n);
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_1_full_n = v14652_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18957_1_proc_U0_v14652_full_n = v14652_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_continue = (ap_sync_channel_write_v14650_1 & ap_sync_channel_write_v14650);
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_1_full_n = v14650_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v14650_full_n = v14650_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_continue = (ap_sync_channel_write_v14651_1 & ap_sync_channel_write_v14651 & ap_sync_channel_write_v14644_0_c87_channel2);
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_1_full_n = v14651_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v14651_full_n = v14651_i_full_n;
assign v15436_0_address0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_0_address0;
assign v15436_0_address1 = 18'd0;
assign v15436_0_ce0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_0_ce0;
assign v15436_0_ce1 = 1'b0;
assign v15436_0_d0 = 8'd0;
assign v15436_0_d1 = 8'd0;
assign v15436_0_we0 = 1'b0;
assign v15436_0_we1 = 1'b0;
assign v15436_1_address0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_1_address0;
assign v15436_1_address1 = 18'd0;
assign v15436_1_ce0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_1_ce0;
assign v15436_1_ce1 = 1'b0;
assign v15436_1_d0 = 8'd0;
assign v15436_1_d1 = 8'd0;
assign v15436_1_we0 = 1'b0;
assign v15436_1_we1 = 1'b0;
assign v15436_2_address0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_2_address0;
assign v15436_2_address1 = 18'd0;
assign v15436_2_ce0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_2_ce0;
assign v15436_2_ce1 = 1'b0;
assign v15436_2_d0 = 8'd0;
assign v15436_2_d1 = 8'd0;
assign v15436_2_we0 = 1'b0;
assign v15436_2_we1 = 1'b0;
assign v15436_3_address0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_3_address0;
assign v15436_3_address1 = 18'd0;
assign v15436_3_ce0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19030_1_proc56_U0_v15436_3_ce0;
assign v15436_3_ce1 = 1'b0;
assign v15436_3_d0 = 8'd0;
assign v15436_3_d1 = 8'd0;
assign v15436_3_we0 = 1'b0;
assign v15436_3_we1 = 1'b0;
assign v15437_0_address0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_0_address0;
assign v15437_0_address1 = 17'd0;
assign v15437_0_ce0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_0_ce0;
assign v15437_0_ce1 = 1'b0;
assign v15437_0_d0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_0_d0;
assign v15437_0_d1 = 8'd0;
assign v15437_0_we0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_0_we0;
assign v15437_0_we1 = 1'b0;
assign v15437_1_address0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_1_address0;
assign v15437_1_address1 = 17'd0;
assign v15437_1_ce0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_1_ce0;
assign v15437_1_ce1 = 1'b0;
assign v15437_1_d0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_1_d0;
assign v15437_1_d1 = 8'd0;
assign v15437_1_we0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_18923_1_proc57_U0_v15437_1_we0;
assign v15437_1_we1 = 1'b0;
assign v15438_0_address0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v15438_0_address0;
assign v15438_0_address1 = 17'd0;
assign v15438_0_ce0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v15438_0_ce0;
assign v15438_0_ce1 = 1'b0;
assign v15438_0_d0 = 8'd0;
assign v15438_0_d1 = 8'd0;
assign v15438_0_we0 = 1'b0;
assign v15438_0_we1 = 1'b0;
assign v15438_1_address0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v15438_1_address0;
assign v15438_1_address1 = 17'd0;
assign v15438_1_ce0 = dataflow_in_loop_VITIS_LOOP_19060_1_Loop_VITIS_LOOP_19002_1_proc55_U0_v15438_1_ce0;
assign v15438_1_ce1 = 1'b0;
assign v15438_1_d0 = 8'd0;
assign v15438_1_d1 = 8'd0;
assign v15438_1_we0 = 1'b0;
assign v15438_1_we1 = 1'b0;
endmodule 