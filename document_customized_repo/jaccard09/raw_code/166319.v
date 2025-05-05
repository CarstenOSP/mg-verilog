module forward_dataflow_in_loop_VITIS_LOOP_230_1 (ap_clk,ap_rst,v82_0,v13746_1_address0,v13746_1_ce0,v13746_1_d0,v13746_1_q0,v13746_1_we0,v13746_1_address1,v13746_1_ce1,v13746_1_d1,v13746_1_q1,v13746_1_we1,v13746_0_address0,v13746_0_ce0,v13746_0_d0,v13746_0_q0,v13746_0_we0,v13746_0_address1,v13746_0_ce1,v13746_0_d1,v13746_0_q1,v13746_0_we1,v13681_1_address0,v13681_1_ce0,v13681_1_d0,v13681_1_q0,v13681_1_we0,v13681_1_address1,v13681_1_ce1,v13681_1_d1,v13681_1_q1,v13681_1_we1,v13681_0_address0,v13681_0_ce0,v13681_0_d0,v13681_0_q0,v13681_0_we0,v13681_0_address1,v13681_0_ce1,v13681_0_d1,v13681_0_q1,v13681_0_we1,v13694_0_address0,v13694_0_ce0,v13694_0_d0,v13694_0_q0,v13694_0_we0,v13694_0_address1,v13694_0_ce1,v13694_0_d1,v13694_0_q1,v13694_0_we1,v13694_1_address0,v13694_1_ce0,v13694_1_d0,v13694_1_q0,v13694_1_we0,v13694_1_address1,v13694_1_ce1,v13694_1_d1,v13694_1_q1,v13694_1_we1,v13747_0_address0,v13747_0_ce0,v13747_0_d0,v13747_0_q0,v13747_0_we0,v13747_0_address1,v13747_0_ce1,v13747_0_d1,v13747_0_q1,v13747_0_we1,v13747_1_address0,v13747_1_ce0,v13747_1_d0,v13747_1_q0,v13747_1_we0,v13747_1_address1,v13747_1_ce1,v13747_1_d1,v13747_1_q1,v13747_1_we1,v13696_0_address0,v13696_0_ce0,v13696_0_d0,v13696_0_q0,v13696_0_we0,v13696_0_address1,v13696_0_ce1,v13696_0_d1,v13696_0_q1,v13696_0_we1,v13696_1_address0,v13696_1_ce0,v13696_1_d0,v13696_1_q0,v13696_1_we0,v13696_1_address1,v13696_1_ce1,v13696_1_d1,v13696_1_q1,v13696_1_we1,v13743_address0,v13743_ce0,v13743_d0,v13743_q0,v13743_we0,v13743_address1,v13743_ce1,v13743_d1,v13743_q1,v13743_we1,v82_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [12:0] v82_0;
output  [9:0] v13746_1_address0;
output   v13746_1_ce0;
output  [7:0] v13746_1_d0;
input  [7:0] v13746_1_q0;
output   v13746_1_we0;
output  [9:0] v13746_1_address1;
output   v13746_1_ce1;
output  [7:0] v13746_1_d1;
input  [7:0] v13746_1_q1;
output   v13746_1_we1;
output  [9:0] v13746_0_address0;
output   v13746_0_ce0;
output  [7:0] v13746_0_d0;
input  [7:0] v13746_0_q0;
output   v13746_0_we0;
output  [9:0] v13746_0_address1;
output   v13746_0_ce1;
output  [7:0] v13746_0_d1;
input  [7:0] v13746_0_q1;
output   v13746_0_we1;
output  [9:0] v13681_1_address0;
output   v13681_1_ce0;
output  [7:0] v13681_1_d0;
input  [7:0] v13681_1_q0;
output   v13681_1_we0;
output  [9:0] v13681_1_address1;
output   v13681_1_ce1;
output  [7:0] v13681_1_d1;
input  [7:0] v13681_1_q1;
output   v13681_1_we1;
output  [9:0] v13681_0_address0;
output   v13681_0_ce0;
output  [7:0] v13681_0_d0;
input  [7:0] v13681_0_q0;
output   v13681_0_we0;
output  [9:0] v13681_0_address1;
output   v13681_0_ce1;
output  [7:0] v13681_0_d1;
input  [7:0] v13681_0_q1;
output   v13681_0_we1;
output  [9:0] v13694_0_address0;
output   v13694_0_ce0;
output  [7:0] v13694_0_d0;
input  [7:0] v13694_0_q0;
output   v13694_0_we0;
output  [9:0] v13694_0_address1;
output   v13694_0_ce1;
output  [7:0] v13694_0_d1;
input  [7:0] v13694_0_q1;
output   v13694_0_we1;
output  [9:0] v13694_1_address0;
output   v13694_1_ce0;
output  [7:0] v13694_1_d0;
input  [7:0] v13694_1_q0;
output   v13694_1_we0;
output  [9:0] v13694_1_address1;
output   v13694_1_ce1;
output  [7:0] v13694_1_d1;
input  [7:0] v13694_1_q1;
output   v13694_1_we1;
output  [9:0] v13747_0_address0;
output   v13747_0_ce0;
output  [7:0] v13747_0_d0;
input  [7:0] v13747_0_q0;
output   v13747_0_we0;
output  [9:0] v13747_0_address1;
output   v13747_0_ce1;
output  [7:0] v13747_0_d1;
input  [7:0] v13747_0_q1;
output   v13747_0_we1;
output  [9:0] v13747_1_address0;
output   v13747_1_ce0;
output  [7:0] v13747_1_d0;
input  [7:0] v13747_1_q0;
output   v13747_1_we0;
output  [9:0] v13747_1_address1;
output   v13747_1_ce1;
output  [7:0] v13747_1_d1;
input  [7:0] v13747_1_q1;
output   v13747_1_we1;
output  [21:0] v13696_0_address0;
output   v13696_0_ce0;
output  [7:0] v13696_0_d0;
input  [7:0] v13696_0_q0;
output   v13696_0_we0;
output  [21:0] v13696_0_address1;
output   v13696_0_ce1;
output  [7:0] v13696_0_d1;
input  [7:0] v13696_0_q1;
output   v13696_0_we1;
output  [21:0] v13696_1_address0;
output   v13696_1_ce0;
output  [7:0] v13696_1_d0;
input  [7:0] v13696_1_q0;
output   v13696_1_we0;
output  [21:0] v13696_1_address1;
output   v13696_1_ce1;
output  [7:0] v13696_1_d1;
input  [7:0] v13696_1_q1;
output   v13696_1_we1;
output  [11:0] v13743_address0;
output   v13743_ce0;
output  [7:0] v13743_d0;
input  [7:0] v13743_q0;
output   v13743_we0;
output  [11:0] v13743_address1;
output   v13743_ce1;
output  [7:0] v13743_d1;
input  [7:0] v13743_q1;
output   v13743_we1;
input   v82_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v90_i_q0;
wire   [7:0] v90_i_q1;
wire   [7:0] v90_t_q0;
wire   [7:0] v90_t_q1;
wire   [7:0] v90_1_i_q0;
wire   [7:0] v90_1_i_q1;
wire   [7:0] v90_1_t_q0;
wire   [7:0] v90_1_t_q1;
wire   [7:0] v89_i_q0;
wire   [7:0] v89_t_q0;
wire   [7:0] v88_i_q0;
wire   [7:0] v88_t_q0;
wire   [7:0] v88_1_i_q0;
wire   [7:0] v88_1_t_q0;
wire   [7:0] v87_i_q0;
wire   [7:0] v87_t_q0;
wire   [7:0] v87_1_i_q0;
wire   [7:0] v87_1_t_q0;
wire   [7:0] v86_i_q0;
wire   [7:0] v86_t_q0;
wire   [7:0] v86_1_i_q0;
wire   [7:0] v86_1_t_q0;
wire   [7:0] v85_i_q0;
wire   [7:0] v85_t_q0;
wire   [7:0] v85_1_i_q0;
wire   [7:0] v85_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v13743_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v13743_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_d0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_return;
wire    ap_channel_done_v82_0_c50_channel;
wire    v82_0_c50_channel_full_n;
reg    ap_sync_reg_channel_write_v82_0_c50_channel;
wire    ap_sync_channel_write_v82_0_c50_channel;
wire    ap_channel_done_v89;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_full_n;
reg    ap_sync_reg_channel_write_v89;
wire    ap_sync_channel_write_v89;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_d0;
wire   [21:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v13696_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v13696_0_ce0;
wire   [21:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v13696_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v13696_1_ce0;
wire    ap_channel_done_v88_1;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_full_n;
reg    ap_sync_reg_channel_write_v88_1;
wire    ap_sync_channel_write_v88_1;
wire    ap_channel_done_v88;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_full_n;
reg    ap_sync_reg_channel_write_v88;
wire    ap_sync_channel_write_v88;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v13747_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v13747_0_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v13747_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v13747_1_ce0;
wire    ap_channel_done_v87_1;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_full_n;
reg    ap_sync_reg_channel_write_v87_1;
wire    ap_sync_channel_write_v87_1;
wire    ap_channel_done_v87;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_full_n;
reg    ap_sync_reg_channel_write_v87;
wire    ap_sync_channel_write_v87;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v13694_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v13694_0_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v13694_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v13694_1_ce0;
wire    ap_channel_done_v86_1;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_full_n;
reg    ap_sync_reg_channel_write_v86_1;
wire    ap_sync_channel_write_v86_1;
wire    ap_channel_done_v86;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_full_n;
reg    ap_sync_reg_channel_write_v86;
wire    ap_sync_channel_write_v86;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_d0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v89_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v89_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_address1;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_ce1;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_address1;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_ce1;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v88_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v88_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v87_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v87_1_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v88_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v88_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v87_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v87_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v86_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v86_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v86_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v86_ce0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_return_0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_return_1;
wire    ap_channel_done_v82_0_c49_channel;
wire    v82_0_c49_channel_full_n;
reg    ap_sync_reg_channel_write_v82_0_c49_channel;
wire    ap_sync_channel_write_v82_0_c49_channel;
wire    ap_channel_done_v82_0_c_channel;
wire    v82_0_c_channel_full_n;
reg    ap_sync_reg_channel_write_v82_0_c_channel;
wire    ap_sync_channel_write_v82_0_c_channel;
wire    ap_channel_done_v90_1;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_full_n;
reg    ap_sync_reg_channel_write_v90_1;
wire    ap_sync_channel_write_v90_1;
wire    ap_channel_done_v90;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_full_n;
reg    ap_sync_reg_channel_write_v90;
wire    ap_sync_channel_write_v90;
wire    ap_channel_done_v85_1;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_full_n;
reg    ap_sync_reg_channel_write_v85_1;
wire    ap_sync_channel_write_v85_1;
wire    ap_channel_done_v85;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_full_n;
reg    ap_sync_reg_channel_write_v85;
wire    ap_sync_channel_write_v85;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_1_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_0_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v90_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v90_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v90_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v90_ce0;
wire    ap_sync_continue;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_1_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_0_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v85_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v85_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v85_address0;
wire    dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v85_ce0;
wire    v89_i_full_n;
wire    v89_t_empty_n;
wire    v88_i_full_n;
wire    v88_t_empty_n;
wire    v88_1_i_full_n;
wire    v88_1_t_empty_n;
wire    v87_i_full_n;
wire    v87_t_empty_n;
wire    v87_1_i_full_n;
wire    v87_1_t_empty_n;
wire    v86_i_full_n;
wire    v86_t_empty_n;
wire    v86_1_i_full_n;
wire    v86_1_t_empty_n;
wire    v85_i_full_n;
wire    v85_t_empty_n;
wire    v85_1_i_full_n;
wire    v85_1_t_empty_n;
wire    v90_i_full_n;
wire    v90_t_empty_n;
wire    v90_1_i_full_n;
wire    v90_1_t_empty_n;
wire   [12:0] v82_0_c50_channel_dout;
wire   [2:0] v82_0_c50_channel_num_data_valid;
wire   [2:0] v82_0_c50_channel_fifo_cap;
wire    v82_0_c50_channel_empty_n;
wire   [12:0] v82_0_c_channel_dout;
wire   [2:0] v82_0_c_channel_num_data_valid;
wire   [2:0] v82_0_c_channel_fifo_cap;
wire    v82_0_c_channel_empty_n;
wire   [12:0] v82_0_c49_channel_dout;
wire   [2:0] v82_0_c49_channel_num_data_valid;
wire   [2:0] v82_0_c49_channel_fifo_cap;
wire    v82_0_c49_channel_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v82_0_c50_channel = 1'b0;
#0 ap_sync_reg_channel_write_v89 = 1'b0;
#0 ap_sync_reg_channel_write_v88_1 = 1'b0;
#0 ap_sync_reg_channel_write_v88 = 1'b0;
#0 ap_sync_reg_channel_write_v87_1 = 1'b0;
#0 ap_sync_reg_channel_write_v87 = 1'b0;
#0 ap_sync_reg_channel_write_v86_1 = 1'b0;
#0 ap_sync_reg_channel_write_v86 = 1'b0;
#0 ap_sync_reg_channel_write_v82_0_c49_channel = 1'b0;
#0 ap_sync_reg_channel_write_v82_0_c_channel = 1'b0;
#0 ap_sync_reg_channel_write_v90_1 = 1'b0;
#0 ap_sync_reg_channel_write_v90 = 1'b0;
#0 ap_sync_reg_channel_write_v85_1 = 1'b0;
#0 ap_sync_reg_channel_write_v85 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_230_1_v90_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 15 ),.AddressWidth( 4 ))
v90_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_d0),.i_q0(v90_i_q0),.i_address1(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_address1),.i_ce1(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_ce1),.i_q1(v90_i_q1),.t_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v90_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v90_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v90_t_q0),.t_address1(4'd0),.t_ce1(1'b0),.t_q1(v90_t_q1),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v90_i_full_n),.i_write(ap_channel_done_v90),.t_empty_n(v90_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_230_1_v90_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 15 ),.AddressWidth( 4 ))
v90_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_d0),.i_q0(v90_1_i_q0),.i_address1(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_address1),.i_ce1(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_ce1),.i_q1(v90_1_i_q1),.t_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v90_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v90_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v90_1_t_q0),.t_address1(4'd0),.t_ce1(1'b0),.t_q1(v90_1_t_q1),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v90_1_i_full_n),.i_write(ap_channel_done_v90_1),.t_empty_n(v90_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_7043_1_v5713_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v89_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_d0),.i_q0(v89_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v89_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v89_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v89_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v89_i_full_n),.i_write(ap_channel_done_v89),.t_empty_n(v89_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_7206_1_v5774_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 480 ),.AddressWidth( 9 ))
v88_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_d0),.i_q0(v88_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v88_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v88_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v88_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v88_i_full_n),.i_write(ap_channel_done_v88),.t_empty_n(v88_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_7206_1_v5774_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 480 ),.AddressWidth( 9 ))
v88_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_d0),.i_q0(v88_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v88_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v88_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v88_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v88_1_i_full_n),.i_write(ap_channel_done_v88_1),.t_empty_n(v88_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_230_1_v87_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 15 ),.AddressWidth( 4 ))
v87_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_d0),.i_q0(v87_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v87_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v87_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v87_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v87_i_full_n),.i_write(ap_channel_done_v87),.t_empty_n(v87_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_230_1_v87_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 15 ),.AddressWidth( 4 ))
v87_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_d0),.i_q0(v87_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v87_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v87_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v87_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v87_1_i_full_n),.i_write(ap_channel_done_v87_1),.t_empty_n(v87_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_230_1_v87_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 15 ),.AddressWidth( 4 ))
v86_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_d0),.i_q0(v86_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v86_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v86_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v86_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v86_i_full_n),.i_write(ap_channel_done_v86),.t_empty_n(v86_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_230_1_v87_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 15 ),.AddressWidth( 4 ))
v86_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_d0),.i_q0(v86_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v86_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v86_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v86_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v86_1_i_full_n),.i_write(ap_channel_done_v86_1),.t_empty_n(v86_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_230_1_v87_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 15 ),.AddressWidth( 4 ))
v85_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_d0),.i_q0(v85_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v85_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v85_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v85_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v85_i_full_n),.i_write(ap_channel_done_v85),.t_empty_n(v85_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_230_1_v87_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 15 ),.AddressWidth( 4 ))
v85_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_d0),.i_q0(v85_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v85_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v85_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v85_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v85_1_i_full_n),.i_write(ap_channel_done_v85_1),.t_empty_n(v85_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready),.v82_0(v82_0),.v13743_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v13743_address0),.v13743_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v13743_ce0),.v13743_q0(v13743_q0),.v89_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_address0),.v89_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_ce0),.v89_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_we0),.v89_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25 dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready),.v88_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_address0),.v88_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_ce0),.v88_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_we0),.v88_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_d0),.v88_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_address0),.v88_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_ce0),.v88_1_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_we0),.v88_1_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_d0),.v82_0(v82_0),.v13696_0_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v13696_0_address0),.v13696_0_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v13696_0_ce0),.v13696_0_q0(v13696_0_q0),.v13696_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v13696_1_address0),.v13696_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v13696_1_ce0),.v13696_1_q0(v13696_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready),.v87_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_address0),.v87_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_ce0),.v87_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_we0),.v87_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_d0),.v87_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_address0),.v87_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_ce0),.v87_1_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_we0),.v87_1_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_d0),.v82_0(v82_0),.v13747_0_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v13747_0_address0),.v13747_0_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v13747_0_ce0),.v13747_0_q0(v13747_0_q0),.v13747_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v13747_1_address0),.v13747_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v13747_1_ce0),.v13747_1_q0(v13747_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready),.v86_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_address0),.v86_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_ce0),.v86_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_we0),.v86_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_d0),.v86_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_address0),.v86_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_ce0),.v86_1_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_we0),.v86_1_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_d0),.v82_0(v82_0),.v13694_0_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v13694_0_address0),.v13694_0_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v13694_0_ce0),.v13694_0_q0(v13694_0_q0),.v13694_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v13694_1_address0),.v13694_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v13694_1_ce0),.v13694_1_q0(v13694_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_ready),.p_read(v82_0_c50_channel_dout),.v85_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_address0),.v85_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_ce0),.v85_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_we0),.v85_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_d0),.v85_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_address0),.v85_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_ce0),.v85_1_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_we0),.v85_1_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_d0),.v89_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v89_address0),.v89_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v89_ce0),.v89_q0(v89_t_q0),.v90_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_address0),.v90_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_ce0),.v90_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_we0),.v90_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_d0),.v90_address1(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_address1),.v90_ce1(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_ce1),.v90_q1(v90_i_q1),.v90_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_address0),.v90_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_ce0),.v90_1_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_we0),.v90_1_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_d0),.v90_1_address1(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_address1),.v90_1_ce1(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_ce1),.v90_1_q1(v90_1_i_q1),.v88_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v88_1_address0),.v88_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v88_1_ce0),.v88_1_q0(v88_1_t_q0),.v87_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v87_1_address0),.v87_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v87_1_ce0),.v87_1_q0(v87_1_t_q0),.v88_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v88_address0),.v88_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v88_ce0),.v88_q0(v88_t_q0),.v87_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v87_address0),.v87_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v87_ce0),.v87_q0(v87_t_q0),.v86_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v86_1_address0),.v86_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v86_1_ce0),.v86_1_q0(v86_1_t_q0),.v86_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v86_address0),.v86_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v86_ce0),.v86_q0(v86_t_q0),.ap_return_0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_return_0),.ap_return_1(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_return_1));
forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_ready),.v13746_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_1_address0),.v13746_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_1_ce0),.v13746_1_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_1_we0),.v13746_1_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_1_d0),.v13746_0_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_0_address0),.v13746_0_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_0_ce0),.v13746_0_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_0_we0),.v13746_0_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_0_d0),.v90_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v90_1_address0),.v90_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v90_1_ce0),.v90_1_q0(v90_1_t_q0),.p_read(v82_0_c49_channel_dout),.v90_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v90_address0),.v90_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v90_ce0),.v90_q0(v90_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_ready),.v13681_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_1_address0),.v13681_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_1_ce0),.v13681_1_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_1_we0),.v13681_1_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_1_d0),.v13681_0_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_0_address0),.v13681_0_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_0_ce0),.v13681_0_we0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_0_we0),.v13681_0_d0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_0_d0),.v85_1_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v85_1_address0),.v85_1_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v85_1_ce0),.v85_1_q0(v85_1_t_q0),.p_read(v82_0_c_channel_dout),.v85_address0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v85_address0),.v85_ce0(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v85_ce0),.v85_q0(v85_t_q0));
forward_fifo_w13_d2_S_x0 v82_0_c50_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_return),.if_full_n(v82_0_c50_channel_full_n),.if_write(ap_channel_done_v82_0_c50_channel),.if_dout(v82_0_c50_channel_dout),.if_num_data_valid(v82_0_c50_channel_num_data_valid),.if_fifo_cap(v82_0_c50_channel_fifo_cap),.if_empty_n(v82_0_c50_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_ready));
forward_fifo_w13_d2_S_x0 v82_0_c_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_return_0),.if_full_n(v82_0_c_channel_full_n),.if_write(ap_channel_done_v82_0_c_channel),.if_dout(v82_0_c_channel_dout),.if_num_data_valid(v82_0_c_channel_num_data_valid),.if_fifo_cap(v82_0_c_channel_fifo_cap),.if_empty_n(v82_0_c_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_ready));
forward_fifo_w13_d2_S_x0 v82_0_c49_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_return_1),.if_full_n(v82_0_c49_channel_full_n),.if_write(ap_channel_done_v82_0_c49_channel),.if_dout(v82_0_c49_channel_dout),.if_num_data_valid(v82_0_c49_channel_num_data_valid),.if_fifo_cap(v82_0_c49_channel_fifo_cap),.if_empty_n(v82_0_c49_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v82_0_c49_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v82_0_c49_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v82_0_c49_channel <= ap_sync_channel_write_v82_0_c49_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v82_0_c50_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v82_0_c50_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v82_0_c50_channel <= ap_sync_channel_write_v82_0_c50_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v82_0_c_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v82_0_c_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v82_0_c_channel <= ap_sync_channel_write_v82_0_c_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v85 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v85 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v85 <= ap_sync_channel_write_v85;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v85_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v85_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v85_1 <= ap_sync_channel_write_v85_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v86 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v86 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v86 <= ap_sync_channel_write_v86;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v86_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v86_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v86_1 <= ap_sync_channel_write_v86_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v87 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v87 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v87 <= ap_sync_channel_write_v87;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v87_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v87_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v87_1 <= ap_sync_channel_write_v87_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v88 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v88 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v88 <= ap_sync_channel_write_v88;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v88_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v88_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v88_1 <= ap_sync_channel_write_v88_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v89 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v89 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v89 <= ap_sync_channel_write_v89;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v90 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v90 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v90 <= ap_sync_channel_write_v90;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v90_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v90_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v90_1 <= ap_sync_channel_write_v90_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v82_0_c49_channel = ((ap_sync_reg_channel_write_v82_0_c49_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done);
assign ap_channel_done_v82_0_c50_channel = ((ap_sync_reg_channel_write_v82_0_c50_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_done);
assign ap_channel_done_v82_0_c_channel = ((ap_sync_reg_channel_write_v82_0_c_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done);
assign ap_channel_done_v85 = ((ap_sync_reg_channel_write_v85 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done);
assign ap_channel_done_v85_1 = ((ap_sync_reg_channel_write_v85_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done);
assign ap_channel_done_v86 = ((ap_sync_reg_channel_write_v86 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_done);
assign ap_channel_done_v86_1 = ((ap_sync_reg_channel_write_v86_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_done);
assign ap_channel_done_v87 = ((ap_sync_reg_channel_write_v87 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_done);
assign ap_channel_done_v87_1 = ((ap_sync_reg_channel_write_v87_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_done);
assign ap_channel_done_v88 = ((ap_sync_reg_channel_write_v88 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_done);
assign ap_channel_done_v88_1 = ((ap_sync_reg_channel_write_v88_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_done);
assign ap_channel_done_v89 = ((ap_sync_reg_channel_write_v89 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_done);
assign ap_channel_done_v90 = ((ap_sync_reg_channel_write_v90 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done);
assign ap_channel_done_v90_1 = ((ap_sync_reg_channel_write_v90_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_done);
assign ap_done = ap_sync_done;
assign ap_idle = ((v82_0_c49_channel_empty_n ^ 1'b1) & (v82_0_c_channel_empty_n ^ 1'b1) & (v82_0_c50_channel_empty_n ^ 1'b1) & (v90_1_t_empty_n ^ 1'b1) & (v90_t_empty_n ^ 1'b1) & (v85_1_t_empty_n ^ 1'b1) & (v85_t_empty_n ^ 1'b1) & (v86_1_t_empty_n ^ 1'b1) & (v86_t_empty_n ^ 1'b1) & (v87_1_t_empty_n ^ 1'b1) & (v87_t_empty_n ^ 1'b1) & (v88_1_t_empty_n ^ 1'b1) & (v88_t_empty_n ^ 1'b1) & (v89_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v82_0_c49_channel = ((v82_0_c49_channel_full_n & ap_channel_done_v82_0_c49_channel) | ap_sync_reg_channel_write_v82_0_c49_channel);
assign ap_sync_channel_write_v82_0_c50_channel = ((v82_0_c50_channel_full_n & ap_channel_done_v82_0_c50_channel) | ap_sync_reg_channel_write_v82_0_c50_channel);
assign ap_sync_channel_write_v82_0_c_channel = ((v82_0_c_channel_full_n & ap_channel_done_v82_0_c_channel) | ap_sync_reg_channel_write_v82_0_c_channel);
assign ap_sync_channel_write_v85 = ((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_full_n & ap_channel_done_v85) | ap_sync_reg_channel_write_v85);
assign ap_sync_channel_write_v85_1 = ((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_full_n & ap_channel_done_v85_1) | ap_sync_reg_channel_write_v85_1);
assign ap_sync_channel_write_v86 = ((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_full_n & ap_channel_done_v86) | ap_sync_reg_channel_write_v86);
assign ap_sync_channel_write_v86_1 = ((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_full_n & ap_channel_done_v86_1) | ap_sync_reg_channel_write_v86_1);
assign ap_sync_channel_write_v87 = ((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_full_n & ap_channel_done_v87) | ap_sync_reg_channel_write_v87);
assign ap_sync_channel_write_v87_1 = ((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_full_n & ap_channel_done_v87_1) | ap_sync_reg_channel_write_v87_1);
assign ap_sync_channel_write_v88 = ((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_full_n & ap_channel_done_v88) | ap_sync_reg_channel_write_v88);
assign ap_sync_channel_write_v88_1 = ((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_full_n & ap_channel_done_v88_1) | ap_sync_reg_channel_write_v88_1);
assign ap_sync_channel_write_v89 = ((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_full_n & ap_channel_done_v89) | ap_sync_reg_channel_write_v89);
assign ap_sync_channel_write_v90 = ((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_full_n & ap_channel_done_v90) | ap_sync_reg_channel_write_v90);
assign ap_sync_channel_write_v90_1 = ((dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_full_n & ap_channel_done_v90_1) | ap_sync_reg_channel_write_v90_1);
assign ap_sync_continue = (ap_sync_done & ap_continue);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready);
assign ap_sync_done = (dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_done);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_continue = (ap_sync_channel_write_v86_1 & ap_sync_channel_write_v86);
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_1_full_n = v86_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v86_full_n = v86_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_continue = (ap_sync_channel_write_v87_1 & ap_sync_channel_write_v87);
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_1_full_n = v87_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v87_full_n = v87_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_continue = (ap_sync_channel_write_v88_1 & ap_sync_channel_write_v88);
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_1_full_n = v88_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v88_full_n = v88_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_continue = (ap_sync_channel_write_v89 & ap_sync_channel_write_v82_0_c50_channel);
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v89_full_n = v89_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_continue = ap_sync_continue;
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_ap_start = (v85_t_empty_n & v85_1_t_empty_n & v82_0_c_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_continue = ap_sync_continue;
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_ap_start = (v90_t_empty_n & v90_1_t_empty_n & v82_0_c49_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_continue = (ap_sync_channel_write_v90_1 & ap_sync_channel_write_v90 & ap_sync_channel_write_v85_1 & ap_sync_channel_write_v85 & ap_sync_channel_write_v82_0_c_channel & ap_sync_channel_write_v82_0_c49_channel);
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_ap_start = (v89_t_empty_n & v88_t_empty_n & v88_1_t_empty_n & v87_t_empty_n & v87_1_t_empty_n & v86_t_empty_n & v86_1_t_empty_n & v82_0_c50_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_1_full_n = v85_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v85_full_n = v85_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_1_full_n = v90_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_87_1_proc_U0_v90_full_n = v90_i_full_n;
assign v13681_0_address0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_0_address0;
assign v13681_0_address1 = 10'd0;
assign v13681_0_ce0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_0_ce0;
assign v13681_0_ce1 = 1'b0;
assign v13681_0_d0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_0_d0;
assign v13681_0_d1 = 8'd0;
assign v13681_0_we0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_0_we0;
assign v13681_0_we1 = 1'b0;
assign v13681_1_address0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_1_address0;
assign v13681_1_address1 = 10'd0;
assign v13681_1_ce0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_1_ce0;
assign v13681_1_ce1 = 1'b0;
assign v13681_1_d0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_1_d0;
assign v13681_1_d1 = 8'd0;
assign v13681_1_we0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_31_1_proc_U0_v13681_1_we0;
assign v13681_1_we1 = 1'b0;
assign v13694_0_address0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v13694_0_address0;
assign v13694_0_address1 = 10'd0;
assign v13694_0_ce0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v13694_0_ce0;
assign v13694_0_ce1 = 1'b0;
assign v13694_0_d0 = 8'd0;
assign v13694_0_d1 = 8'd0;
assign v13694_0_we0 = 1'b0;
assign v13694_0_we1 = 1'b0;
assign v13694_1_address0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v13694_1_address0;
assign v13694_1_address1 = 10'd0;
assign v13694_1_ce0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_143_1_proc_U0_v13694_1_ce0;
assign v13694_1_ce1 = 1'b0;
assign v13694_1_d0 = 8'd0;
assign v13694_1_d1 = 8'd0;
assign v13694_1_we0 = 1'b0;
assign v13694_1_we1 = 1'b0;
assign v13696_0_address0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v13696_0_address0;
assign v13696_0_address1 = 22'd0;
assign v13696_0_ce0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v13696_0_ce0;
assign v13696_0_ce1 = 1'b0;
assign v13696_0_d0 = 8'd0;
assign v13696_0_d1 = 8'd0;
assign v13696_0_we0 = 1'b0;
assign v13696_0_we1 = 1'b0;
assign v13696_1_address0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v13696_1_address0;
assign v13696_1_address1 = 22'd0;
assign v13696_1_ce0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_U0_v13696_1_ce0;
assign v13696_1_ce1 = 1'b0;
assign v13696_1_d0 = 8'd0;
assign v13696_1_d1 = 8'd0;
assign v13696_1_we0 = 1'b0;
assign v13696_1_we1 = 1'b0;
assign v13743_address0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v13743_address0;
assign v13743_address1 = 12'd0;
assign v13743_ce0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_203_1_proc_U0_v13743_ce0;
assign v13743_ce1 = 1'b0;
assign v13743_d0 = 8'd0;
assign v13743_d1 = 8'd0;
assign v13743_we0 = 1'b0;
assign v13743_we1 = 1'b0;
assign v13746_0_address0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_0_address0;
assign v13746_0_address1 = 10'd0;
assign v13746_0_ce0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_0_ce0;
assign v13746_0_ce1 = 1'b0;
assign v13746_0_d0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_0_d0;
assign v13746_0_d1 = 8'd0;
assign v13746_0_we0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_0_we0;
assign v13746_0_we1 = 1'b0;
assign v13746_1_address0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_1_address0;
assign v13746_1_address1 = 10'd0;
assign v13746_1_ce0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_1_ce0;
assign v13746_1_ce1 = 1'b0;
assign v13746_1_d0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_1_d0;
assign v13746_1_d1 = 8'd0;
assign v13746_1_we0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_51_1_proc_U0_v13746_1_we0;
assign v13746_1_we1 = 1'b0;
assign v13747_0_address0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v13747_0_address0;
assign v13747_0_address1 = 10'd0;
assign v13747_0_ce0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v13747_0_ce0;
assign v13747_0_ce1 = 1'b0;
assign v13747_0_d0 = 8'd0;
assign v13747_0_d1 = 8'd0;
assign v13747_0_we0 = 1'b0;
assign v13747_0_we1 = 1'b0;
assign v13747_1_address0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v13747_1_address0;
assign v13747_1_address1 = 10'd0;
assign v13747_1_ce0 = dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_163_1_proc_U0_v13747_1_ce0;
assign v13747_1_ce1 = 1'b0;
assign v13747_1_d0 = 8'd0;
assign v13747_1_d1 = 8'd0;
assign v13747_1_we0 = 1'b0;
assign v13747_1_we1 = 1'b0;
endmodule 