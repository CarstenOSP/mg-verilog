
module forward_dataflow_in_loop_VITIS_LOOP_14528_1 (ap_clk,ap_rst,v11258_0,v13706_1_address0,v13706_1_ce0,v13706_1_d0,v13706_1_q0,v13706_1_we0,v13706_1_address1,v13706_1_ce1,v13706_1_d1,v13706_1_q1,v13706_1_we1,v13706_0_address0,v13706_0_ce0,v13706_0_d0,v13706_0_q0,v13706_0_we0,v13706_0_address1,v13706_0_ce1,v13706_0_d1,v13706_0_q1,v13706_0_we1,v13707_0_address0,v13707_0_ce0,v13707_0_d0,v13707_0_q0,v13707_0_we0,v13707_0_address1,v13707_0_ce1,v13707_0_d1,v13707_0_q1,v13707_0_we1,v13707_1_address0,v13707_1_ce0,v13707_1_d0,v13707_1_q0,v13707_1_we0,v13707_1_address1,v13707_1_ce1,v13707_1_d1,v13707_1_q1,v13707_1_we1,v13705_0_address0,v13705_0_ce0,v13705_0_d0,v13705_0_q0,v13705_0_we0,v13705_0_address1,v13705_0_ce1,v13705_0_d1,v13705_0_q1,v13705_0_we1,v13705_1_address0,v13705_1_ce0,v13705_1_d0,v13705_1_q0,v13705_1_we0,v13705_1_address1,v13705_1_ce1,v13705_1_d1,v13705_1_q1,v13705_1_we1,v13705_2_address0,v13705_2_ce0,v13705_2_d0,v13705_2_q0,v13705_2_we0,v13705_2_address1,v13705_2_ce1,v13705_2_d1,v13705_2_q1,v13705_2_we1,v13705_3_address0,v13705_3_ce0,v13705_3_d0,v13705_3_q0,v13705_3_we0,v13705_3_address1,v13705_3_ce1,v13705_3_d1,v13705_3_q1,v13705_3_we1,v11258_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [7:0] v11258_0;
output  [18:0] v13706_1_address0;
output   v13706_1_ce0;
output  [7:0] v13706_1_d0;
input  [7:0] v13706_1_q0;
output   v13706_1_we0;
output  [18:0] v13706_1_address1;
output   v13706_1_ce1;
output  [7:0] v13706_1_d1;
input  [7:0] v13706_1_q1;
output   v13706_1_we1;
output  [18:0] v13706_0_address0;
output   v13706_0_ce0;
output  [7:0] v13706_0_d0;
input  [7:0] v13706_0_q0;
output   v13706_0_we0;
output  [18:0] v13706_0_address1;
output   v13706_0_ce1;
output  [7:0] v13706_0_d1;
input  [7:0] v13706_0_q1;
output   v13706_0_we1;
output  [18:0] v13707_0_address0;
output   v13707_0_ce0;
output  [7:0] v13707_0_d0;
input  [7:0] v13707_0_q0;
output   v13707_0_we0;
output  [18:0] v13707_0_address1;
output   v13707_0_ce1;
output  [7:0] v13707_0_d1;
input  [7:0] v13707_0_q1;
output   v13707_0_we1;
output  [18:0] v13707_1_address0;
output   v13707_1_ce0;
output  [7:0] v13707_1_d0;
input  [7:0] v13707_1_q0;
output   v13707_1_we0;
output  [18:0] v13707_1_address1;
output   v13707_1_ce1;
output  [7:0] v13707_1_d1;
input  [7:0] v13707_1_q1;
output   v13707_1_we1;
output  [19:0] v13705_0_address0;
output   v13705_0_ce0;
output  [7:0] v13705_0_d0;
input  [7:0] v13705_0_q0;
output   v13705_0_we0;
output  [19:0] v13705_0_address1;
output   v13705_0_ce1;
output  [7:0] v13705_0_d1;
input  [7:0] v13705_0_q1;
output   v13705_0_we1;
output  [19:0] v13705_1_address0;
output   v13705_1_ce0;
output  [7:0] v13705_1_d0;
input  [7:0] v13705_1_q0;
output   v13705_1_we0;
output  [19:0] v13705_1_address1;
output   v13705_1_ce1;
output  [7:0] v13705_1_d1;
input  [7:0] v13705_1_q1;
output   v13705_1_we1;
output  [19:0] v13705_2_address0;
output   v13705_2_ce0;
output  [7:0] v13705_2_d0;
input  [7:0] v13705_2_q0;
output   v13705_2_we0;
output  [19:0] v13705_2_address1;
output   v13705_2_ce1;
output  [7:0] v13705_2_d1;
input  [7:0] v13705_2_q1;
output   v13705_2_we1;
output  [19:0] v13705_3_address0;
output   v13705_3_ce0;
output  [7:0] v13705_3_d0;
input  [7:0] v13705_3_q0;
output   v13705_3_we0;
output  [19:0] v13705_3_address1;
output   v13705_3_ce1;
output  [7:0] v13705_3_d1;
input  [7:0] v13705_3_q1;
output   v13705_3_we1;
input   v11258_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v11266_i_q0;
wire   [7:0] v11266_t_q0;
wire   [7:0] v11266_1_i_q0;
wire   [7:0] v11266_1_t_q0;
wire   [7:0] v11265_i_q0;
wire   [7:0] v11265_t_q0;
wire   [7:0] v11265_1_i_q0;
wire   [7:0] v11265_1_t_q0;
wire   [7:0] v11264_i_q0;
wire   [7:0] v11264_t_q0;
wire   [7:0] v11264_1_i_q0;
wire   [7:0] v11264_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_ce0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_d0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_d0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_0_ce0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_1_ce0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_2_ce0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_3_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_return;
wire    ap_channel_done_v11258_0_c_channel1;
wire    v11258_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v11258_0_c_channel1;
wire    ap_sync_channel_write_v11258_0_c_channel1;
wire    ap_channel_done_v11265_1;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_full_n;
reg    ap_sync_reg_channel_write_v11265_1;
wire    ap_sync_channel_write_v11265_1;
wire    ap_channel_done_v11265;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_full_n;
reg    ap_sync_reg_channel_write_v11265;
wire    ap_sync_channel_write_v11265;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_ce0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_d0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_d0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v13707_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v13707_0_ce0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v13707_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v13707_1_ce0;
wire    ap_channel_done_v11264_1;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_full_n;
reg    ap_sync_reg_channel_write_v11264_1;
wire    ap_sync_channel_write_v11264_1;
wire    ap_channel_done_v11264;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_full_n;
reg    ap_sync_reg_channel_write_v11264;
wire    ap_sync_channel_write_v11264;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_ready;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_ce0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_d0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_d0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11265_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11265_1_ce0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11264_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11264_1_ce0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11265_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11265_ce0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11264_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11264_ce0;
wire    ap_channel_done_v11266_1;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_full_n;
reg    ap_sync_reg_channel_write_v11266_1;
wire    ap_sync_channel_write_v11266_1;
wire    ap_channel_done_v11266;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_full_n;
reg    ap_sync_reg_channel_write_v11266;
wire    ap_sync_channel_write_v11266;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_ready;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_1_d0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_0_d0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v11266_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v11266_1_ce0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v11266_address0;
wire    dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v11266_ce0;
wire    v11265_i_full_n;
wire    v11265_t_empty_n;
wire    v11265_1_i_full_n;
wire    v11265_1_t_empty_n;
wire    v11264_i_full_n;
wire    v11264_t_empty_n;
wire    v11264_1_i_full_n;
wire    v11264_1_t_empty_n;
wire    v11266_i_full_n;
wire    v11266_t_empty_n;
wire    v11266_1_i_full_n;
wire    v11266_1_t_empty_n;
wire   [7:0] v11258_0_c_channel1_dout;
wire   [2:0] v11258_0_c_channel1_num_data_valid;
wire   [2:0] v11258_0_c_channel1_fifo_cap;
wire    v11258_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v11258_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v11265_1 = 1'b0;
#0 ap_sync_reg_channel_write_v11265 = 1'b0;
#0 ap_sync_reg_channel_write_v11264_1 = 1'b0;
#0 ap_sync_reg_channel_write_v11264 = 1'b0;
#0 ap_sync_reg_channel_write_v11266_1 = 1'b0;
#0 ap_sync_reg_channel_write_v11266 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_14528_1_v11266_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 8192 ),.AddressWidth( 13 ))
v11266_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_d0),.i_q0(v11266_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v11266_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v11266_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11266_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11266_i_full_n),.i_write(ap_channel_done_v11266),.t_empty_n(v11266_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_14528_1_v11266_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 8192 ),.AddressWidth( 13 ))
v11266_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_d0),.i_q0(v11266_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v11266_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v11266_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11266_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11266_1_i_full_n),.i_write(ap_channel_done_v11266_1),.t_empty_n(v11266_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_14528_1_v11266_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 8192 ),.AddressWidth( 13 ))
v11265_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_d0),.i_q0(v11265_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11265_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11265_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11265_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11265_i_full_n),.i_write(ap_channel_done_v11265),.t_empty_n(v11265_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_14528_1_v11266_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 8192 ),.AddressWidth( 13 ))
v11265_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_d0),.i_q0(v11265_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11265_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11265_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11265_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11265_1_i_full_n),.i_write(ap_channel_done_v11265_1),.t_empty_n(v11265_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_14528_1_v11266_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 8192 ),.AddressWidth( 13 ))
v11264_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_d0),.i_q0(v11264_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11264_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11264_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11264_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11264_i_full_n),.i_write(ap_channel_done_v11264),.t_empty_n(v11264_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_14528_1_v11266_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 8192 ),.AddressWidth( 13 ))
v11264_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_d0),.i_q0(v11264_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11264_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11264_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11264_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11264_1_i_full_n),.i_write(ap_channel_done_v11264_1),.t_empty_n(v11264_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49 dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready),.v11265_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_address0),.v11265_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_ce0),.v11265_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_we0),.v11265_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_d0),.v11265_1_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_address0),.v11265_1_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_ce0),.v11265_1_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_we0),.v11265_1_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_d0),.v11258_0(v11258_0),.v13705_0_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_0_address0),.v13705_0_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_0_ce0),.v13705_0_q0(v13705_0_q0),.v13705_1_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_1_address0),.v13705_1_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_1_ce0),.v13705_1_q0(v13705_1_q0),.v13705_2_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_2_address0),.v13705_2_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_2_ce0),.v13705_2_q0(v13705_2_q0),.v13705_3_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_3_address0),.v13705_3_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_3_ce0),.v13705_3_q0(v13705_3_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48 dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready),.v11264_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_address0),.v11264_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_ce0),.v11264_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_we0),.v11264_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_d0),.v11264_1_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_address0),.v11264_1_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_ce0),.v11264_1_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_we0),.v11264_1_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_d0),.v11258_0(v11258_0),.v13707_0_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v13707_0_address0),.v13707_0_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v13707_0_ce0),.v13707_0_q0(v13707_0_q0),.v13707_1_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v13707_1_address0),.v13707_1_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v13707_1_ce0),.v13707_1_q0(v13707_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_ready),.v11266_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_address0),.v11266_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_ce0),.v11266_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_we0),.v11266_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_d0),.v11266_1_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_address0),.v11266_1_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_ce0),.v11266_1_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_we0),.v11266_1_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_d0),.v11265_1_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11265_1_address0),.v11265_1_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11265_1_ce0),.v11265_1_q0(v11265_1_t_q0),.v11264_1_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11264_1_address0),.v11264_1_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11264_1_ce0),.v11264_1_q0(v11264_1_t_q0),.v11265_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11265_address0),.v11265_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11265_ce0),.v11265_q0(v11265_t_q0),.v11264_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11264_address0),.v11264_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11264_ce0),.v11264_q0(v11264_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50 dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_ready),.v13706_1_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_1_address0),.v13706_1_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_1_ce0),.v13706_1_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_1_we0),.v13706_1_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_1_d0),.v13706_0_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_0_address0),.v13706_0_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_0_ce0),.v13706_0_we0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_0_we0),.v13706_0_d0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_0_d0),.p_read(v11258_0_c_channel1_dout),.v11266_1_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v11266_1_address0),.v11266_1_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v11266_1_ce0),.v11266_1_q0(v11266_1_t_q0),.v11266_address0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v11266_address0),.v11266_ce0(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v11266_ce0),.v11266_q0(v11266_t_q0));
forward_fifo_w8_d3_S v11258_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_return),.if_full_n(v11258_0_c_channel1_full_n),.if_write(ap_channel_done_v11258_0_c_channel1),.if_dout(v11258_0_c_channel1_dout),.if_num_data_valid(v11258_0_c_channel1_num_data_valid),.if_fifo_cap(v11258_0_c_channel1_fifo_cap),.if_empty_n(v11258_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11258_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_done & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11258_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11258_0_c_channel1 <= ap_sync_channel_write_v11258_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11264 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_done & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11264 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11264 <= ap_sync_channel_write_v11264;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11264_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_done & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11264_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11264_1 <= ap_sync_channel_write_v11264_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11265 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_done & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11265 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11265 <= ap_sync_channel_write_v11265;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11265_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_done & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11265_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11265_1 <= ap_sync_channel_write_v11265_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11266 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11266 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11266 <= ap_sync_channel_write_v11266;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11266_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11266_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11266_1 <= ap_sync_channel_write_v11266_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v11258_0_c_channel1 = ((ap_sync_reg_channel_write_v11258_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_done);
assign ap_channel_done_v11264 = ((ap_sync_reg_channel_write_v11264 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_done);
assign ap_channel_done_v11264_1 = ((ap_sync_reg_channel_write_v11264_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_done);
assign ap_channel_done_v11265 = ((ap_sync_reg_channel_write_v11265 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_done);
assign ap_channel_done_v11265_1 = ((ap_sync_reg_channel_write_v11265_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_done);
assign ap_channel_done_v11266 = ((ap_sync_reg_channel_write_v11266 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_done);
assign ap_channel_done_v11266_1 = ((ap_sync_reg_channel_write_v11266_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_done;
assign ap_idle = ((v11258_0_c_channel1_empty_n ^ 1'b1) & (v11266_1_t_empty_n ^ 1'b1) & (v11266_t_empty_n ^ 1'b1) & (v11264_1_t_empty_n ^ 1'b1) & (v11264_t_empty_n ^ 1'b1) & (v11265_1_t_empty_n ^ 1'b1) & (v11265_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v11258_0_c_channel1 = ((v11258_0_c_channel1_full_n & ap_channel_done_v11258_0_c_channel1) | ap_sync_reg_channel_write_v11258_0_c_channel1);
assign ap_sync_channel_write_v11264 = ((dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_full_n & ap_channel_done_v11264) | ap_sync_reg_channel_write_v11264);
assign ap_sync_channel_write_v11264_1 = ((dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_full_n & ap_channel_done_v11264_1) | ap_sync_reg_channel_write_v11264_1);
assign ap_sync_channel_write_v11265 = ((dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_full_n & ap_channel_done_v11265) | ap_sync_reg_channel_write_v11265);
assign ap_sync_channel_write_v11265_1 = ((dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_full_n & ap_channel_done_v11265_1) | ap_sync_reg_channel_write_v11265_1);
assign ap_sync_channel_write_v11266 = ((dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_full_n & ap_channel_done_v11266) | ap_sync_reg_channel_write_v11266);
assign ap_sync_channel_write_v11266_1 = ((dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_full_n & ap_channel_done_v11266_1) | ap_sync_reg_channel_write_v11266_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_ap_start = (v11266_t_empty_n & v11266_1_t_empty_n & v11258_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_continue = (ap_sync_channel_write_v11266_1 & ap_sync_channel_write_v11266);
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_ap_start = (v11265_t_empty_n & v11265_1_t_empty_n & v11264_t_empty_n & v11264_1_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_1_full_n = v11266_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14443_1_proc_U0_v11266_full_n = v11266_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_continue = (ap_sync_channel_write_v11264_1 & ap_sync_channel_write_v11264);
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_1_full_n = v11264_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v11264_full_n = v11264_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_continue = (ap_sync_channel_write_v11265_1 & ap_sync_channel_write_v11265 & ap_sync_channel_write_v11258_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_1_full_n = v11265_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v11265_full_n = v11265_i_full_n;
assign v13705_0_address0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_0_address0;
assign v13705_0_address1 = 20'd0;
assign v13705_0_ce0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_0_ce0;
assign v13705_0_ce1 = 1'b0;
assign v13705_0_d0 = 8'd0;
assign v13705_0_d1 = 8'd0;
assign v13705_0_we0 = 1'b0;
assign v13705_0_we1 = 1'b0;
assign v13705_1_address0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_1_address0;
assign v13705_1_address1 = 20'd0;
assign v13705_1_ce0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_1_ce0;
assign v13705_1_ce1 = 1'b0;
assign v13705_1_d0 = 8'd0;
assign v13705_1_d1 = 8'd0;
assign v13705_1_we0 = 1'b0;
assign v13705_1_we1 = 1'b0;
assign v13705_2_address0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_2_address0;
assign v13705_2_address1 = 20'd0;
assign v13705_2_ce0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_2_ce0;
assign v13705_2_ce1 = 1'b0;
assign v13705_2_d0 = 8'd0;
assign v13705_2_d1 = 8'd0;
assign v13705_2_we0 = 1'b0;
assign v13705_2_we1 = 1'b0;
assign v13705_3_address0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_3_address0;
assign v13705_3_address1 = 20'd0;
assign v13705_3_ce0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14501_1_proc49_U0_v13705_3_ce0;
assign v13705_3_ce1 = 1'b0;
assign v13705_3_d0 = 8'd0;
assign v13705_3_d1 = 8'd0;
assign v13705_3_we0 = 1'b0;
assign v13705_3_we1 = 1'b0;
assign v13706_0_address0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_0_address0;
assign v13706_0_address1 = 19'd0;
assign v13706_0_ce0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_0_ce0;
assign v13706_0_ce1 = 1'b0;
assign v13706_0_d0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_0_d0;
assign v13706_0_d1 = 8'd0;
assign v13706_0_we0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_0_we0;
assign v13706_0_we1 = 1'b0;
assign v13706_1_address0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_1_address0;
assign v13706_1_address1 = 19'd0;
assign v13706_1_ce0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_1_ce0;
assign v13706_1_ce1 = 1'b0;
assign v13706_1_d0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_1_d0;
assign v13706_1_d1 = 8'd0;
assign v13706_1_we0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14415_1_proc50_U0_v13706_1_we0;
assign v13706_1_we1 = 1'b0;
assign v13707_0_address0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v13707_0_address0;
assign v13707_0_address1 = 19'd0;
assign v13707_0_ce0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v13707_0_ce0;
assign v13707_0_ce1 = 1'b0;
assign v13707_0_d0 = 8'd0;
assign v13707_0_d1 = 8'd0;
assign v13707_0_we0 = 1'b0;
assign v13707_0_we1 = 1'b0;
assign v13707_1_address0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v13707_1_address0;
assign v13707_1_address1 = 19'd0;
assign v13707_1_ce0 = dataflow_in_loop_VITIS_LOOP_14528_1_Loop_VITIS_LOOP_14473_1_proc48_U0_v13707_1_ce0;
assign v13707_1_ce1 = 1'b0;
assign v13707_1_d0 = 8'd0;
assign v13707_1_d1 = 8'd0;
assign v13707_1_we0 = 1'b0;
assign v13707_1_we1 = 1'b0;
endmodule 
