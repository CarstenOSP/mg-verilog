module forward_dataflow_in_loop_VITIS_LOOP_5485_1 (ap_clk,ap_rst,v3743,v9250_1_address0,v9250_1_ce0,v9250_1_d0,v9250_1_q0,v9250_1_we0,v9250_1_address1,v9250_1_ce1,v9250_1_d1,v9250_1_q1,v9250_1_we1,v9250_0_address0,v9250_0_ce0,v9250_0_d0,v9250_0_q0,v9250_0_we0,v9250_0_address1,v9250_0_ce1,v9250_0_d1,v9250_0_q1,v9250_0_we1,v9247_1_address0,v9247_1_ce0,v9247_1_d0,v9247_1_q0,v9247_1_we0,v9247_1_address1,v9247_1_ce1,v9247_1_d1,v9247_1_q1,v9247_1_we1,v9247_0_address0,v9247_0_ce0,v9247_0_d0,v9247_0_q0,v9247_0_we0,v9247_0_address1,v9247_0_ce1,v9247_0_d1,v9247_0_q1,v9247_0_we1,v9246_0_address0,v9246_0_ce0,v9246_0_d0,v9246_0_q0,v9246_0_we0,v9246_0_address1,v9246_0_ce1,v9246_0_d1,v9246_0_q1,v9246_0_we1,v9246_1_address0,v9246_1_ce0,v9246_1_d0,v9246_1_q0,v9246_1_we0,v9246_1_address1,v9246_1_ce1,v9246_1_d1,v9246_1_q1,v9246_1_we1,v9251_0_address0,v9251_0_ce0,v9251_0_d0,v9251_0_q0,v9251_0_we0,v9251_0_address1,v9251_0_ce1,v9251_0_d1,v9251_0_q1,v9251_0_we1,v9251_1_address0,v9251_1_ce0,v9251_1_d0,v9251_1_q0,v9251_1_we0,v9251_1_address1,v9251_1_ce1,v9251_1_d1,v9251_1_q1,v9251_1_we1,v9184_0_address0,v9184_0_ce0,v9184_0_d0,v9184_0_q0,v9184_0_we0,v9184_0_address1,v9184_0_ce1,v9184_0_d1,v9184_0_q1,v9184_0_we1,v9184_1_address0,v9184_1_ce0,v9184_1_d0,v9184_1_q0,v9184_1_we0,v9184_1_address1,v9184_1_ce1,v9184_1_d1,v9184_1_q1,v9184_1_we1,v9238_address0,v9238_ce0,v9238_d0,v9238_q0,v9238_we0,v9238_address1,v9238_ce1,v9238_d1,v9238_q1,v9238_we1,v3743_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [7:0] v3743;
output  [14:0] v9250_1_address0;
output   v9250_1_ce0;
output  [7:0] v9250_1_d0;
input  [7:0] v9250_1_q0;
output   v9250_1_we0;
output  [14:0] v9250_1_address1;
output   v9250_1_ce1;
output  [7:0] v9250_1_d1;
input  [7:0] v9250_1_q1;
output   v9250_1_we1;
output  [14:0] v9250_0_address0;
output   v9250_0_ce0;
output  [7:0] v9250_0_d0;
input  [7:0] v9250_0_q0;
output   v9250_0_we0;
output  [14:0] v9250_0_address1;
output   v9250_0_ce1;
output  [7:0] v9250_0_d1;
input  [7:0] v9250_0_q1;
output   v9250_0_we1;
output  [14:0] v9247_1_address0;
output   v9247_1_ce0;
output  [7:0] v9247_1_d0;
input  [7:0] v9247_1_q0;
output   v9247_1_we0;
output  [14:0] v9247_1_address1;
output   v9247_1_ce1;
output  [7:0] v9247_1_d1;
input  [7:0] v9247_1_q1;
output   v9247_1_we1;
output  [14:0] v9247_0_address0;
output   v9247_0_ce0;
output  [7:0] v9247_0_d0;
input  [7:0] v9247_0_q0;
output   v9247_0_we0;
output  [14:0] v9247_0_address1;
output   v9247_0_ce1;
output  [7:0] v9247_0_d1;
input  [7:0] v9247_0_q1;
output   v9247_0_we1;
output  [14:0] v9246_0_address0;
output   v9246_0_ce0;
output  [7:0] v9246_0_d0;
input  [7:0] v9246_0_q0;
output   v9246_0_we0;
output  [14:0] v9246_0_address1;
output   v9246_0_ce1;
output  [7:0] v9246_0_d1;
input  [7:0] v9246_0_q1;
output   v9246_0_we1;
output  [14:0] v9246_1_address0;
output   v9246_1_ce0;
output  [7:0] v9246_1_d0;
input  [7:0] v9246_1_q0;
output   v9246_1_we0;
output  [14:0] v9246_1_address1;
output   v9246_1_ce1;
output  [7:0] v9246_1_d1;
input  [7:0] v9246_1_q1;
output   v9246_1_we1;
output  [14:0] v9251_0_address0;
output   v9251_0_ce0;
output  [7:0] v9251_0_d0;
input  [7:0] v9251_0_q0;
output   v9251_0_we0;
output  [14:0] v9251_0_address1;
output   v9251_0_ce1;
output  [7:0] v9251_0_d1;
input  [7:0] v9251_0_q1;
output   v9251_0_we1;
output  [14:0] v9251_1_address0;
output   v9251_1_ce0;
output  [7:0] v9251_1_d0;
input  [7:0] v9251_1_q0;
output   v9251_1_we0;
output  [14:0] v9251_1_address1;
output   v9251_1_ce1;
output  [7:0] v9251_1_d1;
input  [7:0] v9251_1_q1;
output   v9251_1_we1;
output  [13:0] v9184_0_address0;
output   v9184_0_ce0;
output  [7:0] v9184_0_d0;
input  [7:0] v9184_0_q0;
output   v9184_0_we0;
output  [13:0] v9184_0_address1;
output   v9184_0_ce1;
output  [7:0] v9184_0_d1;
input  [7:0] v9184_0_q1;
output   v9184_0_we1;
output  [13:0] v9184_1_address0;
output   v9184_1_ce0;
output  [7:0] v9184_1_d0;
input  [7:0] v9184_1_q0;
output   v9184_1_we0;
output  [13:0] v9184_1_address1;
output   v9184_1_ce1;
output  [7:0] v9184_1_d1;
input  [7:0] v9184_1_q1;
output   v9184_1_we1;
output  [16:0] v9238_address0;
output   v9238_ce0;
output  [7:0] v9238_d0;
input  [7:0] v9238_q0;
output   v9238_we0;
output  [16:0] v9238_address1;
output   v9238_ce1;
output  [7:0] v9238_d1;
input  [7:0] v9238_q1;
output   v9238_we1;
input   v3743_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v3753_i_q0;
wire   [7:0] v3753_i_q1;
wire   [7:0] v3753_t_q0;
wire   [7:0] v3753_t_q1;
wire   [7:0] v3753_1_i_q0;
wire   [7:0] v3753_1_i_q1;
wire   [7:0] v3753_1_t_q0;
wire   [7:0] v3753_1_t_q1;
wire   [7:0] v3752_i_q0;
wire   [7:0] v3752_t_q0;
wire   [7:0] v3751_i_q0;
wire   [7:0] v3751_t_q0;
wire   [7:0] v3751_1_i_q0;
wire   [7:0] v3751_1_t_q0;
wire   [7:0] v3750_i_q0;
wire   [7:0] v3750_t_q0;
wire   [7:0] v3750_1_i_q0;
wire   [7:0] v3750_1_t_q0;
wire   [7:0] v3749_i_q0;
wire   [7:0] v3749_t_q0;
wire   [7:0] v3749_1_i_q0;
wire   [7:0] v3749_1_t_q0;
wire   [7:0] v3748_i_q0;
wire   [7:0] v3748_t_q0;
wire   [7:0] v3748_1_i_q0;
wire   [7:0] v3748_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3743;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v9238_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v9238_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3752_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3752_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3752_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3752_d0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_d0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3743;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v9184_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v9184_0_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v9184_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v9184_1_ce0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_return;
wire    ap_channel_done_tmp_249;
wire    tmp_249_full_n;
reg    ap_sync_reg_channel_write_tmp_249;
wire    ap_sync_channel_write_tmp_249;
wire    ap_channel_done_v3751_1;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_full_n;
reg    ap_sync_reg_channel_write_v3751_1;
wire    ap_sync_channel_write_v3751_1;
wire    ap_channel_done_v3751;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_full_n;
reg    ap_sync_reg_channel_write_v3751;
wire    ap_sync_channel_write_v3751;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_d0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3743;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v9251_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v9251_0_ce0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v9251_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v9251_1_ce0;
wire    ap_channel_done_v3750_1;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_full_n;
reg    ap_sync_reg_channel_write_v3750_1;
wire    ap_sync_channel_write_v3750_1;
wire    ap_channel_done_v3750;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_full_n;
reg    ap_sync_reg_channel_write_v3750;
wire    ap_sync_channel_write_v3750;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_d0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3743;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v9246_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v9246_0_ce0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v9246_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v9246_1_ce0;
wire    ap_channel_done_v3749_1;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_full_n;
reg    ap_sync_reg_channel_write_v3749_1;
wire    ap_sync_channel_write_v3749_1;
wire    ap_channel_done_v3749;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_full_n;
reg    ap_sync_reg_channel_write_v3749;
wire    ap_sync_channel_write_v3749;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_address1;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_ce1;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_address1;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_ce1;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3751_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3751_1_i_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3751_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3751_i_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3752_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3752_i_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3750_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3750_1_i_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3750_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3750_i_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3749_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3749_1_i_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3749_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3749_i_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_return_0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_return_1;
wire    ap_channel_done_v3743_c1_channel;
wire    v3743_c1_channel_full_n;
reg    ap_sync_reg_channel_write_v3743_c1_channel;
wire    ap_sync_channel_write_v3743_c1_channel;
wire    ap_channel_done_v3743_c_channel;
wire    v3743_c_channel_full_n;
reg    ap_sync_reg_channel_write_v3743_c_channel;
wire    ap_sync_channel_write_v3743_c_channel;
wire    ap_channel_done_v3753_1;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_full_n;
reg    ap_sync_reg_channel_write_v3753_1;
wire    ap_sync_channel_write_v3753_1;
wire    ap_channel_done_v3753;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_full_n;
reg    ap_sync_reg_channel_write_v3753;
wire    ap_sync_channel_write_v3753;
wire    ap_channel_done_v3748_1;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_full_n;
reg    ap_sync_reg_channel_write_v3748_1;
wire    ap_sync_channel_write_v3748_1;
wire    ap_channel_done_v3748;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_full_n;
reg    ap_sync_reg_channel_write_v3748;
wire    ap_sync_channel_write_v3748;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_ready;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_1_d0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_0_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v3753_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v3753_1_i_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v3753_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v3753_i_ce0;
wire    ap_sync_continue;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_ready;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_1_d0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_0_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v3748_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v3748_1_i_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v3748_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v3748_i_ce0;
wire    v3752_i_full_n;
wire    v3752_t_empty_n;
wire    v3751_i_full_n;
wire    v3751_t_empty_n;
wire    v3751_1_i_full_n;
wire    v3751_1_t_empty_n;
wire    v3750_i_full_n;
wire    v3750_t_empty_n;
wire    v3750_1_i_full_n;
wire    v3750_1_t_empty_n;
wire    v3749_i_full_n;
wire    v3749_t_empty_n;
wire    v3749_1_i_full_n;
wire    v3749_1_t_empty_n;
wire    v3748_i_full_n;
wire    v3748_t_empty_n;
wire    v3748_1_i_full_n;
wire    v3748_1_t_empty_n;
wire    v3753_i_full_n;
wire    v3753_t_empty_n;
wire    v3753_1_i_full_n;
wire    v3753_1_t_empty_n;
wire   [6:0] tmp_249_dout;
wire   [2:0] tmp_249_num_data_valid;
wire   [2:0] tmp_249_fifo_cap;
wire    tmp_249_empty_n;
wire   [7:0] v3743_c_channel_dout;
wire   [2:0] v3743_c_channel_num_data_valid;
wire   [2:0] v3743_c_channel_fifo_cap;
wire    v3743_c_channel_empty_n;
wire   [7:0] v3743_c1_channel_dout;
wire   [2:0] v3743_c1_channel_num_data_valid;
wire   [2:0] v3743_c1_channel_fifo_cap;
wire    v3743_c1_channel_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_tmp_249 = 1'b0;
#0 ap_sync_reg_channel_write_v3751_1 = 1'b0;
#0 ap_sync_reg_channel_write_v3751 = 1'b0;
#0 ap_sync_reg_channel_write_v3750_1 = 1'b0;
#0 ap_sync_reg_channel_write_v3750 = 1'b0;
#0 ap_sync_reg_channel_write_v3749_1 = 1'b0;
#0 ap_sync_reg_channel_write_v3749 = 1'b0;
#0 ap_sync_reg_channel_write_v3743_c1_channel = 1'b0;
#0 ap_sync_reg_channel_write_v3743_c_channel = 1'b0;
#0 ap_sync_reg_channel_write_v3753_1 = 1'b0;
#0 ap_sync_reg_channel_write_v3753 = 1'b0;
#0 ap_sync_reg_channel_write_v3748_1 = 1'b0;
#0 ap_sync_reg_channel_write_v3748 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_9179_1_v5991_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v3753_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_d0),.i_q0(v3753_i_q0),.i_address1(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_address1),.i_ce1(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_ce1),.i_q1(v3753_i_q1),.t_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v3753_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v3753_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v3753_t_q0),.t_address1(10'd0),.t_ce1(1'b0),.t_q1(v3753_t_q1),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v3753_i_full_n),.i_write(ap_channel_done_v3753),.t_empty_n(v3753_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9179_1_v5991_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v3753_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_d0),.i_q0(v3753_1_i_q0),.i_address1(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_address1),.i_ce1(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_ce1),.i_q1(v3753_1_i_q1),.t_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v3753_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v3753_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v3753_1_t_q0),.t_address1(10'd0),.t_ce1(1'b0),.t_q1(v3753_1_t_q1),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v3753_1_i_full_n),.i_write(ap_channel_done_v3753_1),.t_empty_n(v3753_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12199_1_v7858_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v3752_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3752_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3752_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3752_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3752_d0),.i_q0(v3752_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3752_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3752_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v3752_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v3752_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_done),.t_empty_n(v3752_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_5485_1_v3751_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 512 ),.AddressWidth( 9 ))
v3751_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_d0),.i_q0(v3751_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3751_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3751_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v3751_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v3751_i_full_n),.i_write(ap_channel_done_v3751),.t_empty_n(v3751_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_5485_1_v3751_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 512 ),.AddressWidth( 9 ))
v3751_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_d0),.i_q0(v3751_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3751_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3751_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v3751_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v3751_1_i_full_n),.i_write(ap_channel_done_v3751_1),.t_empty_n(v3751_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9179_1_v5990_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v3750_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_d0),.i_q0(v3750_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3750_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3750_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v3750_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v3750_i_full_n),.i_write(ap_channel_done_v3750),.t_empty_n(v3750_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9179_1_v5990_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v3750_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_d0),.i_q0(v3750_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3750_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3750_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v3750_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v3750_1_i_full_n),.i_write(ap_channel_done_v3750_1),.t_empty_n(v3750_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9179_1_v5990_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v3749_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_d0),.i_q0(v3749_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3749_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3749_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v3749_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v3749_i_full_n),.i_write(ap_channel_done_v3749),.t_empty_n(v3749_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9179_1_v5990_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v3749_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_d0),.i_q0(v3749_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3749_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3749_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v3749_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v3749_1_i_full_n),.i_write(ap_channel_done_v3749_1),.t_empty_n(v3749_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9179_1_v5990_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v3748_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_d0),.i_q0(v3748_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v3748_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v3748_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v3748_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v3748_i_full_n),.i_write(ap_channel_done_v3748),.t_empty_n(v3748_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9179_1_v5990_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v3748_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_d0),.i_q0(v3748_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v3748_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v3748_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v3748_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v3748_1_i_full_n),.i_write(ap_channel_done_v3748_1),.t_empty_n(v3748_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144 dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready),.v3743(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3743),.v9238_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v9238_address0),.v9238_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v9238_ce0),.v9238_q0(v9238_q0),.v3752_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3752_address0),.v3752_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3752_ce0),.v3752_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3752_we0),.v3752_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3752_d0));
forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143 dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready),.v3751_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_address0),.v3751_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_ce0),.v3751_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_we0),.v3751_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_d0),.v3751_1_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_address0),.v3751_1_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_ce0),.v3751_1_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_we0),.v3751_1_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_d0),.v3743(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3743),.v9184_0_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v9184_0_address0),.v9184_0_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v9184_0_ce0),.v9184_0_q0(v9184_0_q0),.v9184_1_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v9184_1_address0),.v9184_1_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v9184_1_ce0),.v9184_1_q0(v9184_1_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142 dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready),.v3750_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_address0),.v3750_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_ce0),.v3750_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_we0),.v3750_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_d0),.v3750_1_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_address0),.v3750_1_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_ce0),.v3750_1_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_we0),.v3750_1_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_d0),.v3743(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3743),.v9251_0_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v9251_0_address0),.v9251_0_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v9251_0_ce0),.v9251_0_q0(v9251_0_q0),.v9251_1_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v9251_1_address0),.v9251_1_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v9251_1_ce0),.v9251_1_q0(v9251_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141 dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready),.v3749_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_address0),.v3749_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_ce0),.v3749_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_we0),.v3749_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_d0),.v3749_1_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_address0),.v3749_1_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_ce0),.v3749_1_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_we0),.v3749_1_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_d0),.v3743(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3743),.v9246_0_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v9246_0_address0),.v9246_0_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v9246_0_ce0),.v9246_0_q0(v9246_0_q0),.v9246_1_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v9246_1_address0),.v9246_1_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v9246_1_ce0),.v9246_1_q0(v9246_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169 dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_ready),.p_read(tmp_249_dout),.v3748_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_address0),.v3748_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_ce0),.v3748_i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_we0),.v3748_i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_d0),.v3748_1_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_address0),.v3748_1_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_ce0),.v3748_1_i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_we0),.v3748_1_i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_d0),.v3753_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_address0),.v3753_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_ce0),.v3753_i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_we0),.v3753_i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_d0),.v3753_i_address1(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_address1),.v3753_i_ce1(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_ce1),.v3753_i_q1(v3753_i_q1),.v3753_1_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_address0),.v3753_1_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_ce0),.v3753_1_i_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_we0),.v3753_1_i_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_d0),.v3753_1_i_address1(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_address1),.v3753_1_i_ce1(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_ce1),.v3753_1_i_q1(v3753_1_i_q1),.v3751_1_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3751_1_i_address0),.v3751_1_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3751_1_i_ce0),.v3751_1_i_q0(v3751_1_t_q0),.v3751_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3751_i_address0),.v3751_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3751_i_ce0),.v3751_i_q0(v3751_t_q0),.v3752_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3752_i_address0),.v3752_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3752_i_ce0),.v3752_i_q0(v3752_t_q0),.v3750_1_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3750_1_i_address0),.v3750_1_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3750_1_i_ce0),.v3750_1_i_q0(v3750_1_t_q0),.v3750_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3750_i_address0),.v3750_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3750_i_ce0),.v3750_i_q0(v3750_t_q0),.v3749_1_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3749_1_i_address0),.v3749_1_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3749_1_i_ce0),.v3749_1_i_q0(v3749_1_t_q0),.v3749_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3749_i_address0),.v3749_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3749_i_ce0),.v3749_i_q0(v3749_t_q0),.ap_return_0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_return_0),.ap_return_1(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_return_1));
forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145 dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_ready),.v9250_1_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_1_address0),.v9250_1_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_1_ce0),.v9250_1_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_1_we0),.v9250_1_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_1_d0),.v9250_0_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_0_address0),.v9250_0_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_0_ce0),.v9250_0_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_0_we0),.v9250_0_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_0_d0),.p_read(v3743_c1_channel_dout),.v3753_1_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v3753_1_i_address0),.v3753_1_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v3753_1_i_ce0),.v3753_1_i_q0(v3753_1_t_q0),.v3753_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v3753_i_address0),.v3753_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v3753_i_ce0),.v3753_i_q0(v3753_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139 dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_ready),.v9247_1_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_1_address0),.v9247_1_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_1_ce0),.v9247_1_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_1_we0),.v9247_1_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_1_d0),.v9247_0_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_0_address0),.v9247_0_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_0_ce0),.v9247_0_we0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_0_we0),.v9247_0_d0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_0_d0),.p_read(v3743_c_channel_dout),.v3748_1_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v3748_1_i_address0),.v3748_1_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v3748_1_i_ce0),.v3748_1_i_q0(v3748_1_t_q0),.v3748_i_address0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v3748_i_address0),.v3748_i_ce0(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v3748_i_ce0),.v3748_i_q0(v3748_t_q0));
forward_fifo_w7_d2_S_x tmp_249_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_return),.if_full_n(tmp_249_full_n),.if_write(ap_channel_done_tmp_249),.if_dout(tmp_249_dout),.if_num_data_valid(tmp_249_num_data_valid),.if_fifo_cap(tmp_249_fifo_cap),.if_empty_n(tmp_249_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_ready));
forward_fifo_w8_d2_S_x2 v3743_c_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_return_0),.if_full_n(v3743_c_channel_full_n),.if_write(ap_channel_done_v3743_c_channel),.if_dout(v3743_c_channel_dout),.if_num_data_valid(v3743_c_channel_num_data_valid),.if_fifo_cap(v3743_c_channel_fifo_cap),.if_empty_n(v3743_c_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_ready));
forward_fifo_w8_d2_S_x2 v3743_c1_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_return_1),.if_full_n(v3743_c1_channel_full_n),.if_write(ap_channel_done_v3743_c1_channel),.if_dout(v3743_c1_channel_dout),.if_num_data_valid(v3743_c1_channel_num_data_valid),.if_fifo_cap(v3743_c1_channel_fifo_cap),.if_empty_n(v3743_c1_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_tmp_249 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_tmp_249 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_tmp_249 <= ap_sync_channel_write_tmp_249;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v3743_c1_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v3743_c1_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v3743_c1_channel <= ap_sync_channel_write_v3743_c1_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v3743_c_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v3743_c_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v3743_c_channel <= ap_sync_channel_write_v3743_c_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v3748 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v3748 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v3748 <= ap_sync_channel_write_v3748;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v3748_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v3748_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v3748_1 <= ap_sync_channel_write_v3748_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v3749 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v3749 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v3749 <= ap_sync_channel_write_v3749;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v3749_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v3749_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v3749_1 <= ap_sync_channel_write_v3749_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v3750 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v3750 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v3750 <= ap_sync_channel_write_v3750;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v3750_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v3750_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v3750_1 <= ap_sync_channel_write_v3750_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v3751 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v3751 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v3751 <= ap_sync_channel_write_v3751;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v3751_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v3751_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v3751_1 <= ap_sync_channel_write_v3751_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v3753 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v3753 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v3753 <= ap_sync_channel_write_v3753;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v3753_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v3753_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v3753_1 <= ap_sync_channel_write_v3753_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready;
        end
    end
end
assign ap_channel_done_tmp_249 = ((ap_sync_reg_channel_write_tmp_249 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_done);
assign ap_channel_done_v3743_c1_channel = ((ap_sync_reg_channel_write_v3743_c1_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done);
assign ap_channel_done_v3743_c_channel = ((ap_sync_reg_channel_write_v3743_c_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done);
assign ap_channel_done_v3748 = ((ap_sync_reg_channel_write_v3748 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done);
assign ap_channel_done_v3748_1 = ((ap_sync_reg_channel_write_v3748_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done);
assign ap_channel_done_v3749 = ((ap_sync_reg_channel_write_v3749 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_done);
assign ap_channel_done_v3749_1 = ((ap_sync_reg_channel_write_v3749_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_done);
assign ap_channel_done_v3750 = ((ap_sync_reg_channel_write_v3750 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_done);
assign ap_channel_done_v3750_1 = ((ap_sync_reg_channel_write_v3750_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_done);
assign ap_channel_done_v3751 = ((ap_sync_reg_channel_write_v3751 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_done);
assign ap_channel_done_v3751_1 = ((ap_sync_reg_channel_write_v3751_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_done);
assign ap_channel_done_v3753 = ((ap_sync_reg_channel_write_v3753 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done);
assign ap_channel_done_v3753_1 = ((ap_sync_reg_channel_write_v3753_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_done);
assign ap_done = ap_sync_done;
assign ap_idle = ((v3743_c1_channel_empty_n ^ 1'b1) & (v3743_c_channel_empty_n ^ 1'b1) & (tmp_249_empty_n ^ 1'b1) & (v3753_1_t_empty_n ^ 1'b1) & (v3753_t_empty_n ^ 1'b1) & (v3748_1_t_empty_n ^ 1'b1) & (v3748_t_empty_n ^ 1'b1) & (v3749_1_t_empty_n ^ 1'b1) & (v3749_t_empty_n ^ 1'b1) & (v3750_1_t_empty_n ^ 1'b1) & (v3750_t_empty_n ^ 1'b1) & (v3751_1_t_empty_n ^ 1'b1) & (v3751_t_empty_n ^ 1'b1) & (v3752_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_tmp_249 = ((tmp_249_full_n & ap_channel_done_tmp_249) | ap_sync_reg_channel_write_tmp_249);
assign ap_sync_channel_write_v3743_c1_channel = ((v3743_c1_channel_full_n & ap_channel_done_v3743_c1_channel) | ap_sync_reg_channel_write_v3743_c1_channel);
assign ap_sync_channel_write_v3743_c_channel = ((v3743_c_channel_full_n & ap_channel_done_v3743_c_channel) | ap_sync_reg_channel_write_v3743_c_channel);
assign ap_sync_channel_write_v3748 = ((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_full_n & ap_channel_done_v3748) | ap_sync_reg_channel_write_v3748);
assign ap_sync_channel_write_v3748_1 = ((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_full_n & ap_channel_done_v3748_1) | ap_sync_reg_channel_write_v3748_1);
assign ap_sync_channel_write_v3749 = ((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_full_n & ap_channel_done_v3749) | ap_sync_reg_channel_write_v3749);
assign ap_sync_channel_write_v3749_1 = ((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_full_n & ap_channel_done_v3749_1) | ap_sync_reg_channel_write_v3749_1);
assign ap_sync_channel_write_v3750 = ((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_full_n & ap_channel_done_v3750) | ap_sync_reg_channel_write_v3750);
assign ap_sync_channel_write_v3750_1 = ((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_full_n & ap_channel_done_v3750_1) | ap_sync_reg_channel_write_v3750_1);
assign ap_sync_channel_write_v3751 = ((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_full_n & ap_channel_done_v3751) | ap_sync_reg_channel_write_v3751);
assign ap_sync_channel_write_v3751_1 = ((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_full_n & ap_channel_done_v3751_1) | ap_sync_reg_channel_write_v3751_1);
assign ap_sync_channel_write_v3753 = ((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_full_n & ap_channel_done_v3753) | ap_sync_reg_channel_write_v3753);
assign ap_sync_channel_write_v3753_1 = ((dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_full_n & ap_channel_done_v3753_1) | ap_sync_reg_channel_write_v3753_1);
assign ap_sync_continue = (ap_sync_done & ap_continue);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready);
assign ap_sync_done = (dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_done & dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_done);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_continue = ap_sync_continue;
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_ap_start = (v3748_t_empty_n & v3748_1_t_empty_n & v3743_c_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_continue = ap_sync_continue;
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_ap_start = (v3753_t_empty_n & v3753_1_t_empty_n & v3743_c1_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_continue = (ap_sync_channel_write_v3753_1 & ap_sync_channel_write_v3753 & ap_sync_channel_write_v3748_1 & ap_sync_channel_write_v3748 & ap_sync_channel_write_v3743_c_channel & ap_sync_channel_write_v3743_c1_channel);
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_ap_start = (v3752_t_empty_n & v3751_t_empty_n & v3751_1_t_empty_n & v3750_t_empty_n & v3750_1_t_empty_n & v3749_t_empty_n & v3749_1_t_empty_n & tmp_249_empty_n);
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_1_i_full_n = v3748_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3748_i_full_n = v3748_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_1_i_full_n = v3753_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5312_1_proc169_U0_v3753_i_full_n = v3753_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_continue = (ap_sync_channel_write_v3749_1 & ap_sync_channel_write_v3749);
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3743 = {{v3743[(5 - 8'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_1_full_n = v3749_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v3749_full_n = v3749_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_continue = (ap_sync_channel_write_v3750_1 & ap_sync_channel_write_v3750);
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3743 = {{v3743[(5 - 8'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_1_full_n = v3750_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v3750_full_n = v3750_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_continue = (ap_sync_channel_write_v3751_1 & ap_sync_channel_write_v3751 & ap_sync_channel_write_tmp_249);
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3743 = {{v3743[(7 - 8'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_1_full_n = v3751_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v3751_full_n = v3751_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_continue = v3752_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v3743 = {{v3743[(7 - 8'd1):0]}};
assign v9184_0_address0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v9184_0_address0;
assign v9184_0_address1 = 14'd0;
assign v9184_0_ce0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v9184_0_ce0;
assign v9184_0_ce1 = 1'b0;
assign v9184_0_d0 = 8'd0;
assign v9184_0_d1 = 8'd0;
assign v9184_0_we0 = 1'b0;
assign v9184_0_we1 = 1'b0;
assign v9184_1_address0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v9184_1_address0;
assign v9184_1_address1 = 14'd0;
assign v9184_1_ce0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5429_1_proc166143_U0_v9184_1_ce0;
assign v9184_1_ce1 = 1'b0;
assign v9184_1_d0 = 8'd0;
assign v9184_1_d1 = 8'd0;
assign v9184_1_we0 = 1'b0;
assign v9184_1_we1 = 1'b0;
assign v9238_address0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v9238_address0;
assign v9238_address1 = 17'd0;
assign v9238_ce0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5450_1_proc165144_U0_v9238_ce0;
assign v9238_ce1 = 1'b0;
assign v9238_d0 = 8'd0;
assign v9238_d1 = 8'd0;
assign v9238_we0 = 1'b0;
assign v9238_we1 = 1'b0;
assign v9246_0_address0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v9246_0_address0;
assign v9246_0_address1 = 15'd0;
assign v9246_0_ce0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v9246_0_ce0;
assign v9246_0_ce1 = 1'b0;
assign v9246_0_d0 = 8'd0;
assign v9246_0_d1 = 8'd0;
assign v9246_0_we0 = 1'b0;
assign v9246_0_we1 = 1'b0;
assign v9246_1_address0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v9246_1_address0;
assign v9246_1_address1 = 15'd0;
assign v9246_1_ce0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5378_1_proc168141_U0_v9246_1_ce0;
assign v9246_1_ce1 = 1'b0;
assign v9246_1_d0 = 8'd0;
assign v9246_1_d1 = 8'd0;
assign v9246_1_we0 = 1'b0;
assign v9246_1_we1 = 1'b0;
assign v9247_0_address0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_0_address0;
assign v9247_0_address1 = 15'd0;
assign v9247_0_ce0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_0_ce0;
assign v9247_0_ce1 = 1'b0;
assign v9247_0_d0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_0_d0;
assign v9247_0_d1 = 8'd0;
assign v9247_0_we0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_0_we0;
assign v9247_0_we1 = 1'b0;
assign v9247_1_address0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_1_address0;
assign v9247_1_address1 = 15'd0;
assign v9247_1_ce0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_1_ce0;
assign v9247_1_ce1 = 1'b0;
assign v9247_1_d0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_1_d0;
assign v9247_1_d1 = 8'd0;
assign v9247_1_we0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5246_1_proc171139_U0_v9247_1_we0;
assign v9247_1_we1 = 1'b0;
assign v9250_0_address0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_0_address0;
assign v9250_0_address1 = 15'd0;
assign v9250_0_ce0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_0_ce0;
assign v9250_0_ce1 = 1'b0;
assign v9250_0_d0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_0_d0;
assign v9250_0_d1 = 8'd0;
assign v9250_0_we0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_0_we0;
assign v9250_0_we1 = 1'b0;
assign v9250_1_address0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_1_address0;
assign v9250_1_address1 = 15'd0;
assign v9250_1_ce0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_1_ce0;
assign v9250_1_ce1 = 1'b0;
assign v9250_1_d0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_1_d0;
assign v9250_1_d1 = 8'd0;
assign v9250_1_we0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5272_1_proc170145_U0_v9250_1_we0;
assign v9250_1_we1 = 1'b0;
assign v9251_0_address0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v9251_0_address0;
assign v9251_0_address1 = 15'd0;
assign v9251_0_ce0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v9251_0_ce0;
assign v9251_0_ce1 = 1'b0;
assign v9251_0_d0 = 8'd0;
assign v9251_0_d1 = 8'd0;
assign v9251_0_we0 = 1'b0;
assign v9251_0_we1 = 1'b0;
assign v9251_1_address0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v9251_1_address0;
assign v9251_1_address1 = 15'd0;
assign v9251_1_ce0 = dataflow_in_loop_VITIS_LOOP_5485_1_Loop_VITIS_LOOP_5404_1_proc167142_U0_v9251_1_ce0;
assign v9251_1_ce1 = 1'b0;
assign v9251_1_d0 = 8'd0;
assign v9251_1_d1 = 8'd0;
assign v9251_1_we0 = 1'b0;
assign v9251_1_we1 = 1'b0;
endmodule 