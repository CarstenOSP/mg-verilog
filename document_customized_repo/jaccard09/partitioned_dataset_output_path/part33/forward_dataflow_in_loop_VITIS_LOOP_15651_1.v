
module forward_dataflow_in_loop_VITIS_LOOP_15651_1 (ap_clk,ap_rst,v12353_0,v15455_1_address0,v15455_1_ce0,v15455_1_d0,v15455_1_q0,v15455_1_we0,v15455_1_address1,v15455_1_ce1,v15455_1_d1,v15455_1_q1,v15455_1_we1,v15455_0_address0,v15455_0_ce0,v15455_0_d0,v15455_0_q0,v15455_0_we0,v15455_0_address1,v15455_0_ce1,v15455_0_d1,v15455_0_q1,v15455_0_we1,v15456_0_address0,v15456_0_ce0,v15456_0_d0,v15456_0_q0,v15456_0_we0,v15456_0_address1,v15456_0_ce1,v15456_0_d1,v15456_0_q1,v15456_0_we1,v15456_1_address0,v15456_1_ce0,v15456_1_d0,v15456_1_q0,v15456_1_we0,v15456_1_address1,v15456_1_ce1,v15456_1_d1,v15456_1_q1,v15456_1_we1,v15424_address0,v15424_ce0,v15424_d0,v15424_q0,v15424_we0,v15424_address1,v15424_ce1,v15424_d1,v15424_q1,v15424_we1,v15454_0_address0,v15454_0_ce0,v15454_0_d0,v15454_0_q0,v15454_0_we0,v15454_0_address1,v15454_0_ce1,v15454_0_d1,v15454_0_q1,v15454_0_we1,v15454_1_address0,v15454_1_ce0,v15454_1_d0,v15454_1_q0,v15454_1_we0,v15454_1_address1,v15454_1_ce1,v15454_1_d1,v15454_1_q1,v15454_1_we1,v12353_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [8:0] v12353_0;
output  [16:0] v15455_1_address0;
output   v15455_1_ce0;
output  [7:0] v15455_1_d0;
input  [7:0] v15455_1_q0;
output   v15455_1_we0;
output  [16:0] v15455_1_address1;
output   v15455_1_ce1;
output  [7:0] v15455_1_d1;
input  [7:0] v15455_1_q1;
output   v15455_1_we1;
output  [16:0] v15455_0_address0;
output   v15455_0_ce0;
output  [7:0] v15455_0_d0;
input  [7:0] v15455_0_q0;
output   v15455_0_we0;
output  [16:0] v15455_0_address1;
output   v15455_0_ce1;
output  [7:0] v15455_0_d1;
input  [7:0] v15455_0_q1;
output   v15455_0_we1;
output  [16:0] v15456_0_address0;
output   v15456_0_ce0;
output  [7:0] v15456_0_d0;
input  [7:0] v15456_0_q0;
output   v15456_0_we0;
output  [16:0] v15456_0_address1;
output   v15456_0_ce1;
output  [7:0] v15456_0_d1;
input  [7:0] v15456_0_q1;
output   v15456_0_we1;
output  [16:0] v15456_1_address0;
output   v15456_1_ce0;
output  [7:0] v15456_1_d0;
input  [7:0] v15456_1_q0;
output   v15456_1_we0;
output  [16:0] v15456_1_address1;
output   v15456_1_ce1;
output  [7:0] v15456_1_d1;
input  [7:0] v15456_1_q1;
output   v15456_1_we1;
output  [11:0] v15424_address0;
output   v15424_ce0;
output  [7:0] v15424_d0;
input  [7:0] v15424_q0;
output   v15424_we0;
output  [11:0] v15424_address1;
output   v15424_ce1;
output  [7:0] v15424_d1;
input  [7:0] v15424_q1;
output   v15424_we1;
output  [16:0] v15454_0_address0;
output   v15454_0_ce0;
output  [7:0] v15454_0_d0;
input  [7:0] v15454_0_q0;
output   v15454_0_we0;
output  [16:0] v15454_0_address1;
output   v15454_0_ce1;
output  [7:0] v15454_0_d1;
input  [7:0] v15454_0_q1;
output   v15454_0_we1;
output  [16:0] v15454_1_address0;
output   v15454_1_ce0;
output  [7:0] v15454_1_d0;
input  [7:0] v15454_1_q0;
output   v15454_1_we0;
output  [16:0] v15454_1_address1;
output   v15454_1_ce1;
output  [7:0] v15454_1_d1;
input  [7:0] v15454_1_q1;
output   v15454_1_we1;
input   v12353_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v12362_i_q0;
wire   [7:0] v12362_t_q0;
wire   [7:0] v12362_1_i_q0;
wire   [7:0] v12362_1_t_q0;
wire   [7:0] v12361_i_q0;
wire   [7:0] v12361_t_q0;
wire   [7:0] v12361_1_i_q0;
wire   [7:0] v12361_1_t_q0;
wire   [7:0] v12360_i_q0;
wire   [7:0] v12360_t_q0;
wire   [7:0] v12359_i_q0;
wire   [7:0] v12359_t_q0;
wire   [7:0] v12359_1_i_q0;
wire   [7:0] v12359_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_d0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v15454_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v15454_0_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v15454_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v15454_1_ce0;
wire    ap_channel_done_v12361_1;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_full_n;
reg    ap_sync_reg_channel_write_v12361_1;
wire    ap_sync_channel_write_v12361_1;
wire    ap_channel_done_v12361;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_full_n;
reg    ap_sync_reg_channel_write_v12361;
wire    ap_sync_channel_write_v12361;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v15424_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v15424_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_return;
wire    ap_channel_done_v12353_0_c91_channel2;
wire    v12353_0_c91_channel2_full_n;
reg    ap_sync_reg_channel_write_v12353_0_c91_channel2;
wire    ap_sync_channel_write_v12353_0_c91_channel2;
wire    ap_channel_done_v12360;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_full_n;
reg    ap_sync_reg_channel_write_v12360;
wire    ap_sync_channel_write_v12360;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_d0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v15456_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v15456_0_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v15456_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v15456_1_ce0;
wire    ap_channel_done_v12359_1;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_full_n;
reg    ap_sync_reg_channel_write_v12359_1;
wire    ap_sync_channel_write_v12359_1;
wire    ap_channel_done_v12359;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_full_n;
reg    ap_sync_reg_channel_write_v12359;
wire    ap_sync_channel_write_v12359;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_d0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12360_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12360_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12361_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12361_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12359_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12359_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12361_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12361_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12359_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12359_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_return;
wire    ap_channel_done_v12353_0_c_channel1;
wire    v12353_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v12353_0_c_channel1;
wire    ap_sync_channel_write_v12353_0_c_channel1;
wire    ap_channel_done_v12362_1;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_full_n;
reg    ap_sync_reg_channel_write_v12362_1;
wire    ap_sync_channel_write_v12362_1;
wire    ap_channel_done_v12362;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_full_n;
reg    ap_sync_reg_channel_write_v12362;
wire    ap_sync_channel_write_v12362;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_1_d0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_0_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v12362_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v12362_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v12362_address0;
wire    dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v12362_ce0;
wire    v12361_i_full_n;
wire    v12361_t_empty_n;
wire    v12361_1_i_full_n;
wire    v12361_1_t_empty_n;
wire    v12360_i_full_n;
wire    v12360_t_empty_n;
wire    v12359_i_full_n;
wire    v12359_t_empty_n;
wire    v12359_1_i_full_n;
wire    v12359_1_t_empty_n;
wire    v12362_i_full_n;
wire    v12362_t_empty_n;
wire    v12362_1_i_full_n;
wire    v12362_1_t_empty_n;
wire   [8:0] v12353_0_c91_channel2_dout;
wire   [2:0] v12353_0_c91_channel2_num_data_valid;
wire   [2:0] v12353_0_c91_channel2_fifo_cap;
wire    v12353_0_c91_channel2_empty_n;
wire   [4:0] v12353_0_c_channel1_dout;
wire   [2:0] v12353_0_c_channel1_num_data_valid;
wire   [2:0] v12353_0_c_channel1_fifo_cap;
wire    v12353_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v12361_1 = 1'b0;
#0 ap_sync_reg_channel_write_v12361 = 1'b0;
#0 ap_sync_reg_channel_write_v12353_0_c91_channel2 = 1'b0;
#0 ap_sync_reg_channel_write_v12360 = 1'b0;
#0 ap_sync_reg_channel_write_v12359_1 = 1'b0;
#0 ap_sync_reg_channel_write_v12359 = 1'b0;
#0 ap_sync_reg_channel_write_v12353_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v12362_1 = 1'b0;
#0 ap_sync_reg_channel_write_v12362 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v12362_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_d0),.i_q0(v12362_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v12362_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v12362_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12362_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12362_i_full_n),.i_write(ap_channel_done_v12362),.t_empty_n(v12362_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v12362_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_d0),.i_q0(v12362_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v12362_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v12362_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12362_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12362_1_i_full_n),.i_write(ap_channel_done_v12362_1),.t_empty_n(v12362_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v12361_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_d0),.i_q0(v12361_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12361_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12361_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12361_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12361_i_full_n),.i_write(ap_channel_done_v12361),.t_empty_n(v12361_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v12361_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_d0),.i_q0(v12361_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12361_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12361_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12361_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12361_1_i_full_n),.i_write(ap_channel_done_v12361_1),.t_empty_n(v12361_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v12360_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_d0),.i_q0(v12360_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12360_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12360_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12360_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12360_i_full_n),.i_write(ap_channel_done_v12360),.t_empty_n(v12360_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v12359_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_d0),.i_q0(v12359_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12359_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12359_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12359_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12359_i_full_n),.i_write(ap_channel_done_v12359),.t_empty_n(v12359_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19896_1_v15155_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v12359_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_d0),.i_q0(v12359_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12359_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12359_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12359_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12359_1_i_full_n),.i_write(ap_channel_done_v12359_1),.t_empty_n(v12359_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97 dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready),.v12361_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_address0),.v12361_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_ce0),.v12361_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_we0),.v12361_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_d0),.v12361_1_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_address0),.v12361_1_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_ce0),.v12361_1_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_we0),.v12361_1_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_d0),.v12353_0(v12353_0),.v15454_0_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v15454_0_address0),.v15454_0_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v15454_0_ce0),.v15454_0_q0(v15454_0_q0),.v15454_1_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v15454_1_address0),.v15454_1_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v15454_1_ce0),.v15454_1_q0(v15454_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready),.v12353_0(v12353_0),.v15424_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v15424_address0),.v15424_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v15424_ce0),.v15424_q0(v15424_q0),.v12360_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_address0),.v12360_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_ce0),.v12360_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_we0),.v12360_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96 dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready),.v12359_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_address0),.v12359_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_ce0),.v12359_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_we0),.v12359_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_d0),.v12359_1_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_address0),.v12359_1_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_ce0),.v12359_1_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_we0),.v12359_1_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_d0),.v12353_0(v12353_0),.v15456_0_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v15456_0_address0),.v15456_0_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v15456_0_ce0),.v15456_0_q0(v15456_0_q0),.v15456_1_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v15456_1_address0),.v15456_1_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v15456_1_ce0),.v15456_1_q0(v15456_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_ready),.p_read(v12353_0_c91_channel2_dout),.v12362_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_address0),.v12362_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_ce0),.v12362_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_we0),.v12362_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_d0),.v12362_1_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_address0),.v12362_1_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_ce0),.v12362_1_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_we0),.v12362_1_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_d0),.v12360_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12360_address0),.v12360_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12360_ce0),.v12360_q0(v12360_t_q0),.v12361_1_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12361_1_address0),.v12361_1_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12361_1_ce0),.v12361_1_q0(v12361_1_t_q0),.v12359_1_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12359_1_address0),.v12359_1_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12359_1_ce0),.v12359_1_q0(v12359_1_t_q0),.v12361_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12361_address0),.v12361_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12361_ce0),.v12361_q0(v12361_t_q0),.v12359_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12359_address0),.v12359_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12359_ce0),.v12359_q0(v12359_t_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98 dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_ready),.v15455_1_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_1_address0),.v15455_1_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_1_ce0),.v15455_1_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_1_we0),.v15455_1_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_1_d0),.v15455_0_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_0_address0),.v15455_0_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_0_ce0),.v15455_0_we0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_0_we0),.v15455_0_d0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_0_d0),.p_read(v12353_0_c_channel1_dout),.v12362_1_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v12362_1_address0),.v12362_1_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v12362_1_ce0),.v12362_1_q0(v12362_1_t_q0),.v12362_address0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v12362_address0),.v12362_ce0(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v12362_ce0),.v12362_q0(v12362_t_q0));
forward_fifo_w9_d2_S_x v12353_0_c91_channel2_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_return),.if_full_n(v12353_0_c91_channel2_full_n),.if_write(ap_channel_done_v12353_0_c91_channel2),.if_dout(v12353_0_c91_channel2_dout),.if_num_data_valid(v12353_0_c91_channel2_num_data_valid),.if_fifo_cap(v12353_0_c91_channel2_fifo_cap),.if_empty_n(v12353_0_c91_channel2_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_ready));
forward_fifo_w5_d2_S_x3 v12353_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_return),.if_full_n(v12353_0_c_channel1_full_n),.if_write(ap_channel_done_v12353_0_c_channel1),.if_dout(v12353_0_c_channel1_dout),.if_num_data_valid(v12353_0_c_channel1_num_data_valid),.if_fifo_cap(v12353_0_c_channel1_fifo_cap),.if_empty_n(v12353_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12353_0_c91_channel2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12353_0_c91_channel2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12353_0_c91_channel2 <= ap_sync_channel_write_v12353_0_c91_channel2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12353_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12353_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12353_0_c_channel1 <= ap_sync_channel_write_v12353_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12359 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12359 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12359 <= ap_sync_channel_write_v12359;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12359_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12359_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12359_1 <= ap_sync_channel_write_v12359_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12360 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12360 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12360 <= ap_sync_channel_write_v12360;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12361 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12361 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12361 <= ap_sync_channel_write_v12361;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12361_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12361_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12361_1 <= ap_sync_channel_write_v12361_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12362 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12362 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12362 <= ap_sync_channel_write_v12362;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12362_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12362_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12362_1 <= ap_sync_channel_write_v12362_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v12353_0_c91_channel2 = ((ap_sync_reg_channel_write_v12353_0_c91_channel2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_done);
assign ap_channel_done_v12353_0_c_channel1 = ((ap_sync_reg_channel_write_v12353_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_done);
assign ap_channel_done_v12359 = ((ap_sync_reg_channel_write_v12359 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_done);
assign ap_channel_done_v12359_1 = ((ap_sync_reg_channel_write_v12359_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_done);
assign ap_channel_done_v12360 = ((ap_sync_reg_channel_write_v12360 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_done);
assign ap_channel_done_v12361 = ((ap_sync_reg_channel_write_v12361 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_done);
assign ap_channel_done_v12361_1 = ((ap_sync_reg_channel_write_v12361_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_done);
assign ap_channel_done_v12362 = ((ap_sync_reg_channel_write_v12362 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_done);
assign ap_channel_done_v12362_1 = ((ap_sync_reg_channel_write_v12362_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_done;
assign ap_idle = ((v12353_0_c_channel1_empty_n ^ 1'b1) & (v12353_0_c91_channel2_empty_n ^ 1'b1) & (v12362_1_t_empty_n ^ 1'b1) & (v12362_t_empty_n ^ 1'b1) & (v12359_1_t_empty_n ^ 1'b1) & (v12359_t_empty_n ^ 1'b1) & (v12360_t_empty_n ^ 1'b1) & (v12361_1_t_empty_n ^ 1'b1) & (v12361_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v12353_0_c91_channel2 = ((v12353_0_c91_channel2_full_n & ap_channel_done_v12353_0_c91_channel2) | ap_sync_reg_channel_write_v12353_0_c91_channel2);
assign ap_sync_channel_write_v12353_0_c_channel1 = ((v12353_0_c_channel1_full_n & ap_channel_done_v12353_0_c_channel1) | ap_sync_reg_channel_write_v12353_0_c_channel1);
assign ap_sync_channel_write_v12359 = ((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_full_n & ap_channel_done_v12359) | ap_sync_reg_channel_write_v12359);
assign ap_sync_channel_write_v12359_1 = ((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_full_n & ap_channel_done_v12359_1) | ap_sync_reg_channel_write_v12359_1);
assign ap_sync_channel_write_v12360 = ((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_full_n & ap_channel_done_v12360) | ap_sync_reg_channel_write_v12360);
assign ap_sync_channel_write_v12361 = ((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_full_n & ap_channel_done_v12361) | ap_sync_reg_channel_write_v12361);
assign ap_sync_channel_write_v12361_1 = ((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_full_n & ap_channel_done_v12361_1) | ap_sync_reg_channel_write_v12361_1);
assign ap_sync_channel_write_v12362 = ((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_full_n & ap_channel_done_v12362) | ap_sync_reg_channel_write_v12362);
assign ap_sync_channel_write_v12362_1 = ((dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_full_n & ap_channel_done_v12362_1) | ap_sync_reg_channel_write_v12362_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_ap_start = (v12362_t_empty_n & v12362_1_t_empty_n & v12353_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_continue = (ap_sync_channel_write_v12362_1 & ap_sync_channel_write_v12362 & ap_sync_channel_write_v12353_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_ap_start = (v12361_t_empty_n & v12361_1_t_empty_n & v12360_t_empty_n & v12359_t_empty_n & v12359_1_t_empty_n & v12353_0_c91_channel2_empty_n);
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_1_full_n = v12362_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15533_1_proc_U0_v12362_full_n = v12362_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_continue = (ap_sync_channel_write_v12359_1 & ap_sync_channel_write_v12359);
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_1_full_n = v12359_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v12359_full_n = v12359_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_continue = (ap_sync_channel_write_v12360 & ap_sync_channel_write_v12353_0_c91_channel2);
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v12360_full_n = v12360_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_continue = (ap_sync_channel_write_v12361_1 & ap_sync_channel_write_v12361);
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_1_full_n = v12361_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v12361_full_n = v12361_i_full_n;
assign v15424_address0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v15424_address0;
assign v15424_address1 = 12'd0;
assign v15424_ce0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15601_1_proc_U0_v15424_ce0;
assign v15424_ce1 = 1'b0;
assign v15424_d0 = 8'd0;
assign v15424_d1 = 8'd0;
assign v15424_we0 = 1'b0;
assign v15424_we1 = 1'b0;
assign v15454_0_address0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v15454_0_address0;
assign v15454_0_address1 = 17'd0;
assign v15454_0_ce0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v15454_0_ce0;
assign v15454_0_ce1 = 1'b0;
assign v15454_0_d0 = 8'd0;
assign v15454_0_d1 = 8'd0;
assign v15454_0_we0 = 1'b0;
assign v15454_0_we1 = 1'b0;
assign v15454_1_address0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v15454_1_address0;
assign v15454_1_address1 = 17'd0;
assign v15454_1_ce0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15623_1_proc97_U0_v15454_1_ce0;
assign v15454_1_ce1 = 1'b0;
assign v15454_1_d0 = 8'd0;
assign v15454_1_d1 = 8'd0;
assign v15454_1_we0 = 1'b0;
assign v15454_1_we1 = 1'b0;
assign v15455_0_address0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_0_address0;
assign v15455_0_address1 = 17'd0;
assign v15455_0_ce0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_0_ce0;
assign v15455_0_ce1 = 1'b0;
assign v15455_0_d0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_0_d0;
assign v15455_0_d1 = 8'd0;
assign v15455_0_we0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_0_we0;
assign v15455_0_we1 = 1'b0;
assign v15455_1_address0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_1_address0;
assign v15455_1_address1 = 17'd0;
assign v15455_1_ce0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_1_ce0;
assign v15455_1_ce1 = 1'b0;
assign v15455_1_d0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_1_d0;
assign v15455_1_d1 = 8'd0;
assign v15455_1_we0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15500_1_proc98_U0_v15455_1_we0;
assign v15455_1_we1 = 1'b0;
assign v15456_0_address0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v15456_0_address0;
assign v15456_0_address1 = 17'd0;
assign v15456_0_ce0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v15456_0_ce0;
assign v15456_0_ce1 = 1'b0;
assign v15456_0_d0 = 8'd0;
assign v15456_0_d1 = 8'd0;
assign v15456_0_we0 = 1'b0;
assign v15456_0_we1 = 1'b0;
assign v15456_1_address0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v15456_1_address0;
assign v15456_1_address1 = 17'd0;
assign v15456_1_ce0 = dataflow_in_loop_VITIS_LOOP_15651_1_Loop_VITIS_LOOP_15578_1_proc96_U0_v15456_1_ce0;
assign v15456_1_ce1 = 1'b0;
assign v15456_1_d0 = 8'd0;
assign v15456_1_d1 = 8'd0;
assign v15456_1_we0 = 1'b0;
assign v15456_1_we1 = 1'b0;
endmodule 
