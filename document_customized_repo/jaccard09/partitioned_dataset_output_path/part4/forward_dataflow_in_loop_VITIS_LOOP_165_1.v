
module forward_dataflow_in_loop_VITIS_LOOP_165_1 (ap_clk,ap_rst,v66_0,v9001_address0,v9001_ce0,v9001_d0,v9001_q0,v9001_we0,v9001_address1,v9001_ce1,v9001_d1,v9001_q1,v9001_we1,v9011_0_address0,v9011_0_ce0,v9011_0_d0,v9011_0_q0,v9011_0_we0,v9011_0_address1,v9011_0_ce1,v9011_0_d1,v9011_0_q1,v9011_0_we1,v9011_1_address0,v9011_1_ce0,v9011_1_d0,v9011_1_q0,v9011_1_we0,v9011_1_address1,v9011_1_ce1,v9011_1_d1,v9011_1_q1,v9011_1_we1,v9011_2_address0,v9011_2_ce0,v9011_2_d0,v9011_2_q0,v9011_2_we0,v9011_2_address1,v9011_2_ce1,v9011_2_d1,v9011_2_q1,v9011_2_we1,v9011_3_address0,v9011_3_ce0,v9011_3_d0,v9011_3_q0,v9011_3_we0,v9011_3_address1,v9011_3_ce1,v9011_3_d1,v9011_3_q1,v9011_3_we1,v9040_0_address0,v9040_0_ce0,v9040_0_d0,v9040_0_q0,v9040_0_we0,v9040_0_address1,v9040_0_ce1,v9040_0_d1,v9040_0_q1,v9040_0_we1,v9040_1_address0,v9040_1_ce0,v9040_1_d0,v9040_1_q0,v9040_1_we0,v9040_1_address1,v9040_1_ce1,v9040_1_d1,v9040_1_q1,v9040_1_we1,v9040_2_address0,v9040_2_ce0,v9040_2_d0,v9040_2_q0,v9040_2_we0,v9040_2_address1,v9040_2_ce1,v9040_2_d1,v9040_2_q1,v9040_2_we1,v9040_3_address0,v9040_3_ce0,v9040_3_d0,v9040_3_q0,v9040_3_we0,v9040_3_address1,v9040_3_ce1,v9040_3_d1,v9040_3_q1,v9040_3_we1,v66_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [12:0] v66_0;
output  [9:0] v9001_address0;
output   v9001_ce0;
output  [7:0] v9001_d0;
input  [7:0] v9001_q0;
output   v9001_we0;
output  [9:0] v9001_address1;
output   v9001_ce1;
output  [7:0] v9001_d1;
input  [7:0] v9001_q1;
output   v9001_we1;
output  [19:0] v9011_0_address0;
output   v9011_0_ce0;
output  [7:0] v9011_0_d0;
input  [7:0] v9011_0_q0;
output   v9011_0_we0;
output  [19:0] v9011_0_address1;
output   v9011_0_ce1;
output  [7:0] v9011_0_d1;
input  [7:0] v9011_0_q1;
output   v9011_0_we1;
output  [19:0] v9011_1_address0;
output   v9011_1_ce0;
output  [7:0] v9011_1_d0;
input  [7:0] v9011_1_q0;
output   v9011_1_we0;
output  [19:0] v9011_1_address1;
output   v9011_1_ce1;
output  [7:0] v9011_1_d1;
input  [7:0] v9011_1_q1;
output   v9011_1_we1;
output  [19:0] v9011_2_address0;
output   v9011_2_ce0;
output  [7:0] v9011_2_d0;
input  [7:0] v9011_2_q0;
output   v9011_2_we0;
output  [19:0] v9011_2_address1;
output   v9011_2_ce1;
output  [7:0] v9011_2_d1;
input  [7:0] v9011_2_q1;
output   v9011_2_we1;
output  [19:0] v9011_3_address0;
output   v9011_3_ce0;
output  [7:0] v9011_3_d0;
input  [7:0] v9011_3_q0;
output   v9011_3_we0;
output  [19:0] v9011_3_address1;
output   v9011_3_ce1;
output  [7:0] v9011_3_d1;
input  [7:0] v9011_3_q1;
output   v9011_3_we1;
output  [9:0] v9040_0_address0;
output   v9040_0_ce0;
output  [7:0] v9040_0_d0;
input  [7:0] v9040_0_q0;
output   v9040_0_we0;
output  [9:0] v9040_0_address1;
output   v9040_0_ce1;
output  [7:0] v9040_0_d1;
input  [7:0] v9040_0_q1;
output   v9040_0_we1;
output  [9:0] v9040_1_address0;
output   v9040_1_ce0;
output  [7:0] v9040_1_d0;
input  [7:0] v9040_1_q0;
output   v9040_1_we0;
output  [9:0] v9040_1_address1;
output   v9040_1_ce1;
output  [7:0] v9040_1_d1;
input  [7:0] v9040_1_q1;
output   v9040_1_we1;
output  [9:0] v9040_2_address0;
output   v9040_2_ce0;
output  [7:0] v9040_2_d0;
input  [7:0] v9040_2_q0;
output   v9040_2_we0;
output  [9:0] v9040_2_address1;
output   v9040_2_ce1;
output  [7:0] v9040_2_d1;
input  [7:0] v9040_2_q1;
output   v9040_2_we1;
output  [9:0] v9040_3_address0;
output   v9040_3_ce0;
output  [7:0] v9040_3_d0;
input  [7:0] v9040_3_q0;
output   v9040_3_we0;
output  [9:0] v9040_3_address1;
output   v9040_3_ce1;
output  [7:0] v9040_3_d1;
input  [7:0] v9040_3_q1;
output   v9040_3_we1;
input   v66_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v71_i_q0;
wire   [7:0] v71_t_q0;
wire   [7:0] v71_1_i_q0;
wire   [7:0] v71_1_t_q0;
wire   [7:0] v71_2_i_q0;
wire   [7:0] v71_2_t_q0;
wire   [7:0] v71_3_i_q0;
wire   [7:0] v71_3_t_q0;
wire   [7:0] v70_i_q0;
wire   [7:0] v70_t_q0;
wire   [7:0] v70_1_i_q0;
wire   [7:0] v70_1_t_q0;
wire   [7:0] v70_2_i_q0;
wire   [7:0] v70_2_t_q0;
wire   [7:0] v70_3_i_q0;
wire   [7:0] v70_3_t_q0;
wire   [7:0] v69_i_q0;
wire   [7:0] v69_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready;
wire   [2:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_ce0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_d0;
wire   [2:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_d0;
wire   [2:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_ce0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_d0;
wire   [2:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_ce0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_0_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_1_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_2_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_3_ce0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_return;
wire    ap_channel_done_v66_0_c46_channel;
wire    v66_0_c46_channel_full_n;
reg    ap_sync_reg_channel_write_v66_0_c46_channel;
wire    ap_sync_channel_write_v66_0_c46_channel;
wire    ap_channel_done_v71_3;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_full_n;
reg    ap_sync_reg_channel_write_v71_3;
wire    ap_sync_channel_write_v71_3;
wire    ap_channel_done_v71_2;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_full_n;
reg    ap_sync_reg_channel_write_v71_2;
wire    ap_sync_channel_write_v71_2;
wire    ap_channel_done_v71_1;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_full_n;
reg    ap_sync_reg_channel_write_v71_1;
wire    ap_sync_channel_write_v71_1;
wire    ap_channel_done_v71;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_full_n;
reg    ap_sync_reg_channel_write_v71;
wire    ap_sync_channel_write_v71;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_ce0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_d0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_d0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_ce0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_d0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_ce0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_d0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_0_ce0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_1_ce0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_2_ce0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_3_ce0;
wire    ap_channel_done_v70_3;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_full_n;
reg    ap_sync_reg_channel_write_v70_3;
wire    ap_sync_channel_write_v70_3;
wire    ap_channel_done_v70_2;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_full_n;
reg    ap_sync_reg_channel_write_v70_2;
wire    ap_sync_channel_write_v70_2;
wire    ap_channel_done_v70_1;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_full_n;
reg    ap_sync_reg_channel_write_v70_1;
wire    ap_sync_channel_write_v70_1;
wire    ap_channel_done_v70;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_full_n;
reg    ap_sync_reg_channel_write_v70;
wire    ap_sync_channel_write_v70;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready;
wire   [2:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_3_ce0;
wire   [2:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_2_ce0;
wire   [2:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_1_ce0;
wire   [2:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_3_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_2_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_1_ce0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_ce0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_d0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_return;
wire    ap_channel_done_v66_0_c_channel1;
wire    v66_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v66_0_c_channel1;
wire    ap_sync_channel_write_v66_0_c_channel1;
wire    ap_channel_done_v69;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_full_n;
reg    ap_sync_reg_channel_write_v69;
wire    ap_sync_channel_write_v69;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v69_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v69_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v9001_address0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v9001_ce0;
wire    dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v9001_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v9001_d0;
wire    v71_i_full_n;
wire    v71_t_empty_n;
wire    v71_1_i_full_n;
wire    v71_1_t_empty_n;
wire    v71_2_i_full_n;
wire    v71_2_t_empty_n;
wire    v71_3_i_full_n;
wire    v71_3_t_empty_n;
wire    v70_i_full_n;
wire    v70_t_empty_n;
wire    v70_1_i_full_n;
wire    v70_1_t_empty_n;
wire    v70_2_i_full_n;
wire    v70_2_t_empty_n;
wire    v70_3_i_full_n;
wire    v70_3_t_empty_n;
wire    v69_i_full_n;
wire    v69_t_empty_n;
wire   [12:0] v66_0_c46_channel_dout;
wire   [2:0] v66_0_c46_channel_num_data_valid;
wire   [2:0] v66_0_c46_channel_fifo_cap;
wire    v66_0_c46_channel_empty_n;
wire   [12:0] v66_0_c_channel1_dout;
wire   [2:0] v66_0_c_channel1_num_data_valid;
wire   [2:0] v66_0_c_channel1_fifo_cap;
wire    v66_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v66_0_c46_channel = 1'b0;
#0 ap_sync_reg_channel_write_v71_3 = 1'b0;
#0 ap_sync_reg_channel_write_v71_2 = 1'b0;
#0 ap_sync_reg_channel_write_v71_1 = 1'b0;
#0 ap_sync_reg_channel_write_v71 = 1'b0;
#0 ap_sync_reg_channel_write_v70_3 = 1'b0;
#0 ap_sync_reg_channel_write_v70_2 = 1'b0;
#0 ap_sync_reg_channel_write_v70_1 = 1'b0;
#0 ap_sync_reg_channel_write_v70 = 1'b0;
#0 ap_sync_reg_channel_write_v66_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v69 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_948_1_v511_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v71_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_d0),.i_q0(v71_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v71_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v71_i_full_n),.i_write(ap_channel_done_v71),.t_empty_n(v71_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_948_1_v511_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v71_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_d0),.i_q0(v71_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v71_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v71_1_i_full_n),.i_write(ap_channel_done_v71_1),.t_empty_n(v71_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_948_1_v511_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v71_2_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_d0),.i_q0(v71_2_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_2_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_2_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v71_2_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v71_2_i_full_n),.i_write(ap_channel_done_v71_2),.t_empty_n(v71_2_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_948_1_v511_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 8 ),.AddressWidth( 3 ))
v71_3_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_d0),.i_q0(v71_3_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_3_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_3_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v71_3_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v71_3_i_full_n),.i_write(ap_channel_done_v71_3),.t_empty_n(v71_3_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_165_1_v70_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 200 ),.AddressWidth( 8 ))
v70_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_d0),.i_q0(v70_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v70_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v70_i_full_n),.i_write(ap_channel_done_v70),.t_empty_n(v70_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_165_1_v70_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 200 ),.AddressWidth( 8 ))
v70_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_d0),.i_q0(v70_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v70_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v70_1_i_full_n),.i_write(ap_channel_done_v70_1),.t_empty_n(v70_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_165_1_v70_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 200 ),.AddressWidth( 8 ))
v70_2_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_d0),.i_q0(v70_2_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_2_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_2_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v70_2_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v70_2_i_full_n),.i_write(ap_channel_done_v70_2),.t_empty_n(v70_2_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_165_1_v70_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 200 ),.AddressWidth( 8 ))
v70_3_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_d0),.i_q0(v70_3_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_3_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_3_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v70_3_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v70_3_i_full_n),.i_write(ap_channel_done_v70_3),.t_empty_n(v70_3_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_165_1_v69_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 25 ),.AddressWidth( 5 ))
v69_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_d0),.i_q0(v69_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v69_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v69_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v69_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v69_i_full_n),.i_write(ap_channel_done_v69),.t_empty_n(v69_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready),.v71_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_address0),.v71_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_ce0),.v71_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_we0),.v71_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_d0),.v71_1_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_address0),.v71_1_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_ce0),.v71_1_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_we0),.v71_1_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_d0),.v71_2_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_address0),.v71_2_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_ce0),.v71_2_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_we0),.v71_2_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_d0),.v71_3_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_address0),.v71_3_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_ce0),.v71_3_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_we0),.v71_3_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_d0),.v66_0(v66_0),.v9040_0_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_0_address0),.v9040_0_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_0_ce0),.v9040_0_q0(v9040_0_q0),.v9040_1_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_1_address0),.v9040_1_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_1_ce0),.v9040_1_q0(v9040_1_q0),.v9040_2_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_2_address0),.v9040_2_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_2_ce0),.v9040_2_q0(v9040_2_q0),.v9040_3_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_3_address0),.v9040_3_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_3_ce0),.v9040_3_q0(v9040_3_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18 dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready),.v70_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_address0),.v70_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_ce0),.v70_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_we0),.v70_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_d0),.v70_1_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_address0),.v70_1_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_ce0),.v70_1_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_we0),.v70_1_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_d0),.v70_2_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_address0),.v70_2_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_ce0),.v70_2_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_we0),.v70_2_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_d0),.v70_3_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_address0),.v70_3_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_ce0),.v70_3_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_we0),.v70_3_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_d0),.v66_0(v66_0),.v9011_0_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_0_address0),.v9011_0_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_0_ce0),.v9011_0_q0(v9011_0_q0),.v9011_1_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_1_address0),.v9011_1_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_1_ce0),.v9011_1_q0(v9011_1_q0),.v9011_2_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_2_address0),.v9011_2_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_2_ce0),.v9011_2_q0(v9011_2_q0),.v9011_3_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_3_address0),.v9011_3_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_3_ce0),.v9011_3_q0(v9011_3_q0));
forward_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready),.p_read(v66_0_c46_channel_dout),.v71_3_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_3_address0),.v71_3_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_3_ce0),.v71_3_q0(v71_3_t_q0),.v71_2_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_2_address0),.v71_2_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_2_ce0),.v71_2_q0(v71_2_t_q0),.v71_1_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_1_address0),.v71_1_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_1_ce0),.v71_1_q0(v71_1_t_q0),.v71_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_address0),.v71_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v71_ce0),.v71_q0(v71_t_q0),.v70_3_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_3_address0),.v70_3_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_3_ce0),.v70_3_q0(v70_3_t_q0),.v70_2_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_2_address0),.v70_2_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_2_ce0),.v70_2_q0(v70_2_t_q0),.v70_1_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_1_address0),.v70_1_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_1_ce0),.v70_1_q0(v70_1_t_q0),.v70_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_address0),.v70_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v70_ce0),.v70_q0(v70_t_q0),.v69_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_address0),.v69_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_ce0),.v69_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_we0),.v69_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_ready),.v69_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v69_address0),.v69_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v69_ce0),.v69_q0(v69_t_q0),.p_read(v66_0_c_channel1_dout),.v9001_address0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v9001_address0),.v9001_ce0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v9001_ce0),.v9001_we0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v9001_we0),.v9001_d0(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v9001_d0));
forward_fifo_w13_d2_S_x v66_0_c46_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_return),.if_full_n(v66_0_c46_channel_full_n),.if_write(ap_channel_done_v66_0_c46_channel),.if_dout(v66_0_c46_channel_dout),.if_num_data_valid(v66_0_c46_channel_num_data_valid),.if_fifo_cap(v66_0_c46_channel_fifo_cap),.if_empty_n(v66_0_c46_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_ready));
forward_fifo_w13_d2_S_x v66_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_return),.if_full_n(v66_0_c_channel1_full_n),.if_write(ap_channel_done_v66_0_c_channel1),.if_dout(v66_0_c_channel1_dout),.if_num_data_valid(v66_0_c_channel1_num_data_valid),.if_fifo_cap(v66_0_c_channel1_fifo_cap),.if_empty_n(v66_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v66_0_c46_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v66_0_c46_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v66_0_c46_channel <= ap_sync_channel_write_v66_0_c46_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v66_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v66_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v66_0_c_channel1 <= ap_sync_channel_write_v66_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v69 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v69 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v69 <= ap_sync_channel_write_v69;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v70 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_done & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v70 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v70 <= ap_sync_channel_write_v70;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v70_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_done & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v70_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v70_1 <= ap_sync_channel_write_v70_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v70_2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_done & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v70_2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v70_2 <= ap_sync_channel_write_v70_2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v70_3 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_done & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v70_3 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v70_3 <= ap_sync_channel_write_v70_3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v71 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v71 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v71 <= ap_sync_channel_write_v71;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v71_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v71_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v71_1 <= ap_sync_channel_write_v71_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v71_2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v71_2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v71_2 <= ap_sync_channel_write_v71_2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v71_3 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v71_3 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v71_3 <= ap_sync_channel_write_v71_3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v66_0_c46_channel = ((ap_sync_reg_channel_write_v66_0_c46_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_done);
assign ap_channel_done_v66_0_c_channel1 = ((ap_sync_reg_channel_write_v66_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_done);
assign ap_channel_done_v69 = ((ap_sync_reg_channel_write_v69 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_done);
assign ap_channel_done_v70 = ((ap_sync_reg_channel_write_v70 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_done);
assign ap_channel_done_v70_1 = ((ap_sync_reg_channel_write_v70_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_done);
assign ap_channel_done_v70_2 = ((ap_sync_reg_channel_write_v70_2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_done);
assign ap_channel_done_v70_3 = ((ap_sync_reg_channel_write_v70_3 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_done);
assign ap_channel_done_v71 = ((ap_sync_reg_channel_write_v71 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_done);
assign ap_channel_done_v71_1 = ((ap_sync_reg_channel_write_v71_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_done);
assign ap_channel_done_v71_2 = ((ap_sync_reg_channel_write_v71_2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_done);
assign ap_channel_done_v71_3 = ((ap_sync_reg_channel_write_v71_3 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_done;
assign ap_idle = ((v66_0_c_channel1_empty_n ^ 1'b1) & (v66_0_c46_channel_empty_n ^ 1'b1) & (v69_t_empty_n ^ 1'b1) & (v70_3_t_empty_n ^ 1'b1) & (v70_2_t_empty_n ^ 1'b1) & (v70_1_t_empty_n ^ 1'b1) & (v70_t_empty_n ^ 1'b1) & (v71_3_t_empty_n ^ 1'b1) & (v71_2_t_empty_n ^ 1'b1) & (v71_1_t_empty_n ^ 1'b1) & (v71_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v66_0_c46_channel = ((v66_0_c46_channel_full_n & ap_channel_done_v66_0_c46_channel) | ap_sync_reg_channel_write_v66_0_c46_channel);
assign ap_sync_channel_write_v66_0_c_channel1 = ((v66_0_c_channel1_full_n & ap_channel_done_v66_0_c_channel1) | ap_sync_reg_channel_write_v66_0_c_channel1);
assign ap_sync_channel_write_v69 = ((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_full_n & ap_channel_done_v69) | ap_sync_reg_channel_write_v69);
assign ap_sync_channel_write_v70 = ((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_full_n & ap_channel_done_v70) | ap_sync_reg_channel_write_v70);
assign ap_sync_channel_write_v70_1 = ((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_full_n & ap_channel_done_v70_1) | ap_sync_reg_channel_write_v70_1);
assign ap_sync_channel_write_v70_2 = ((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_full_n & ap_channel_done_v70_2) | ap_sync_reg_channel_write_v70_2);
assign ap_sync_channel_write_v70_3 = ((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_full_n & ap_channel_done_v70_3) | ap_sync_reg_channel_write_v70_3);
assign ap_sync_channel_write_v71 = ((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_full_n & ap_channel_done_v71) | ap_sync_reg_channel_write_v71);
assign ap_sync_channel_write_v71_1 = ((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_full_n & ap_channel_done_v71_1) | ap_sync_reg_channel_write_v71_1);
assign ap_sync_channel_write_v71_2 = ((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_full_n & ap_channel_done_v71_2) | ap_sync_reg_channel_write_v71_2);
assign ap_sync_channel_write_v71_3 = ((dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_full_n & ap_channel_done_v71_3) | ap_sync_reg_channel_write_v71_3);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_continue = (ap_sync_channel_write_v70_3 & ap_sync_channel_write_v70_2 & ap_sync_channel_write_v70_1 & ap_sync_channel_write_v70);
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_1_full_n = v70_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_2_full_n = v70_2_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_3_full_n = v70_3_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v70_full_n = v70_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_continue = (ap_sync_channel_write_v71_3 & ap_sync_channel_write_v71_2 & ap_sync_channel_write_v71_1 & ap_sync_channel_write_v71 & ap_sync_channel_write_v66_0_c46_channel);
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_1_full_n = v71_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_2_full_n = v71_2_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_3_full_n = v71_3_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v71_full_n = v71_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_ap_start = (v69_t_empty_n & v66_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_continue = (ap_sync_channel_write_v69 & ap_sync_channel_write_v66_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_ap_start = (v71_t_empty_n & v71_3_t_empty_n & v71_2_t_empty_n & v71_1_t_empty_n & v70_t_empty_n & v70_3_t_empty_n & v70_2_t_empty_n & v70_1_t_empty_n & v66_0_c46_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_57_1_proc_U0_v69_full_n = v69_i_full_n;
assign v9001_address0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v9001_address0;
assign v9001_address1 = 10'd0;
assign v9001_ce0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v9001_ce0;
assign v9001_ce1 = 1'b0;
assign v9001_d0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v9001_d0;
assign v9001_d1 = 8'd0;
assign v9001_we0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_28_1_proc_U0_v9001_we0;
assign v9001_we1 = 1'b0;
assign v9011_0_address0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_0_address0;
assign v9011_0_address1 = 20'd0;
assign v9011_0_ce0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_0_ce0;
assign v9011_0_ce1 = 1'b0;
assign v9011_0_d0 = 8'd0;
assign v9011_0_d1 = 8'd0;
assign v9011_0_we0 = 1'b0;
assign v9011_0_we1 = 1'b0;
assign v9011_1_address0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_1_address0;
assign v9011_1_address1 = 20'd0;
assign v9011_1_ce0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_1_ce0;
assign v9011_1_ce1 = 1'b0;
assign v9011_1_d0 = 8'd0;
assign v9011_1_d1 = 8'd0;
assign v9011_1_we0 = 1'b0;
assign v9011_1_we1 = 1'b0;
assign v9011_2_address0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_2_address0;
assign v9011_2_address1 = 20'd0;
assign v9011_2_ce0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_2_ce0;
assign v9011_2_ce1 = 1'b0;
assign v9011_2_d0 = 8'd0;
assign v9011_2_d1 = 8'd0;
assign v9011_2_we0 = 1'b0;
assign v9011_2_we1 = 1'b0;
assign v9011_3_address0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_3_address0;
assign v9011_3_address1 = 20'd0;
assign v9011_3_ce0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_109_1_proc18_U0_v9011_3_ce0;
assign v9011_3_ce1 = 1'b0;
assign v9011_3_d0 = 8'd0;
assign v9011_3_d1 = 8'd0;
assign v9011_3_we0 = 1'b0;
assign v9011_3_we1 = 1'b0;
assign v9040_0_address0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_0_address0;
assign v9040_0_address1 = 10'd0;
assign v9040_0_ce0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_0_ce0;
assign v9040_0_ce1 = 1'b0;
assign v9040_0_d0 = 8'd0;
assign v9040_0_d1 = 8'd0;
assign v9040_0_we0 = 1'b0;
assign v9040_0_we1 = 1'b0;
assign v9040_1_address0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_1_address0;
assign v9040_1_address1 = 10'd0;
assign v9040_1_ce0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_1_ce0;
assign v9040_1_ce1 = 1'b0;
assign v9040_1_d0 = 8'd0;
assign v9040_1_d1 = 8'd0;
assign v9040_1_we0 = 1'b0;
assign v9040_1_we1 = 1'b0;
assign v9040_2_address0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_2_address0;
assign v9040_2_address1 = 10'd0;
assign v9040_2_ce0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_2_ce0;
assign v9040_2_ce1 = 1'b0;
assign v9040_2_d0 = 8'd0;
assign v9040_2_d1 = 8'd0;
assign v9040_2_we0 = 1'b0;
assign v9040_2_we1 = 1'b0;
assign v9040_3_address0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_3_address0;
assign v9040_3_address1 = 10'd0;
assign v9040_3_ce0 = dataflow_in_loop_VITIS_LOOP_165_1_Loop_VITIS_LOOP_135_1_proc_U0_v9040_3_ce0;
assign v9040_3_ce1 = 1'b0;
assign v9040_3_d0 = 8'd0;
assign v9040_3_d1 = 8'd0;
assign v9040_3_we0 = 1'b0;
assign v9040_3_we1 = 1'b0;
endmodule 
