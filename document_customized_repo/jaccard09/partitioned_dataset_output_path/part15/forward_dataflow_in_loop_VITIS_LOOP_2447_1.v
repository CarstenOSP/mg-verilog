
module forward_dataflow_in_loop_VITIS_LOOP_2447_1 (ap_clk,ap_rst,v1688_0,v9269_1_address0,v9269_1_ce0,v9269_1_d0,v9269_1_q0,v9269_1_we0,v9269_1_address1,v9269_1_ce1,v9269_1_d1,v9269_1_q1,v9269_1_we1,v9269_0_address0,v9269_0_ce0,v9269_0_d0,v9269_0_q0,v9269_0_we0,v9269_0_address1,v9269_0_ce1,v9269_0_d1,v9269_0_q1,v9269_0_we1,v9266_1_address0,v9266_1_ce0,v9266_1_d0,v9266_1_q0,v9266_1_we0,v9266_1_address1,v9266_1_ce1,v9266_1_d1,v9266_1_q1,v9266_1_we1,v9266_0_address0,v9266_0_ce0,v9266_0_d0,v9266_0_q0,v9266_0_we0,v9266_0_address1,v9266_0_ce1,v9266_0_d1,v9266_0_q1,v9266_0_we1,v9265_0_address0,v9265_0_ce0,v9265_0_d0,v9265_0_q0,v9265_0_we0,v9265_0_address1,v9265_0_ce1,v9265_0_d1,v9265_0_q1,v9265_0_we1,v9265_1_address0,v9265_1_ce0,v9265_1_d0,v9265_1_q0,v9265_1_we0,v9265_1_address1,v9265_1_ce1,v9265_1_d1,v9265_1_q1,v9265_1_we1,v9270_0_address0,v9270_0_ce0,v9270_0_d0,v9270_0_q0,v9270_0_we0,v9270_0_address1,v9270_0_ce1,v9270_0_d1,v9270_0_q1,v9270_0_we1,v9270_1_address0,v9270_1_ce0,v9270_1_d0,v9270_1_q0,v9270_1_we0,v9270_1_address1,v9270_1_ce1,v9270_1_d1,v9270_1_q1,v9270_1_we1,v9189_0_address0,v9189_0_ce0,v9189_0_d0,v9189_0_q0,v9189_0_we0,v9189_0_address1,v9189_0_ce1,v9189_0_d1,v9189_0_q1,v9189_0_we1,v9189_1_address0,v9189_1_ce0,v9189_1_d0,v9189_1_q0,v9189_1_we0,v9189_1_address1,v9189_1_ce1,v9189_1_d1,v9189_1_q1,v9189_1_we1,v9257_address0,v9257_ce0,v9257_d0,v9257_q0,v9257_we0,v9257_address1,v9257_ce1,v9257_d1,v9257_q1,v9257_we1,v1688_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [12:0] v1688_0;
output  [13:0] v9269_1_address0;
output   v9269_1_ce0;
output  [7:0] v9269_1_d0;
input  [7:0] v9269_1_q0;
output   v9269_1_we0;
output  [13:0] v9269_1_address1;
output   v9269_1_ce1;
output  [7:0] v9269_1_d1;
input  [7:0] v9269_1_q1;
output   v9269_1_we1;
output  [13:0] v9269_0_address0;
output   v9269_0_ce0;
output  [7:0] v9269_0_d0;
input  [7:0] v9269_0_q0;
output   v9269_0_we0;
output  [13:0] v9269_0_address1;
output   v9269_0_ce1;
output  [7:0] v9269_0_d1;
input  [7:0] v9269_0_q1;
output   v9269_0_we1;
output  [13:0] v9266_1_address0;
output   v9266_1_ce0;
output  [7:0] v9266_1_d0;
input  [7:0] v9266_1_q0;
output   v9266_1_we0;
output  [13:0] v9266_1_address1;
output   v9266_1_ce1;
output  [7:0] v9266_1_d1;
input  [7:0] v9266_1_q1;
output   v9266_1_we1;
output  [13:0] v9266_0_address0;
output   v9266_0_ce0;
output  [7:0] v9266_0_d0;
input  [7:0] v9266_0_q0;
output   v9266_0_we0;
output  [13:0] v9266_0_address1;
output   v9266_0_ce1;
output  [7:0] v9266_0_d1;
input  [7:0] v9266_0_q1;
output   v9266_0_we1;
output  [13:0] v9265_0_address0;
output   v9265_0_ce0;
output  [7:0] v9265_0_d0;
input  [7:0] v9265_0_q0;
output   v9265_0_we0;
output  [13:0] v9265_0_address1;
output   v9265_0_ce1;
output  [7:0] v9265_0_d1;
input  [7:0] v9265_0_q1;
output   v9265_0_we1;
output  [13:0] v9265_1_address0;
output   v9265_1_ce0;
output  [7:0] v9265_1_d0;
input  [7:0] v9265_1_q0;
output   v9265_1_we0;
output  [13:0] v9265_1_address1;
output   v9265_1_ce1;
output  [7:0] v9265_1_d1;
input  [7:0] v9265_1_q1;
output   v9265_1_we1;
output  [13:0] v9270_0_address0;
output   v9270_0_ce0;
output  [7:0] v9270_0_d0;
input  [7:0] v9270_0_q0;
output   v9270_0_we0;
output  [13:0] v9270_0_address1;
output   v9270_0_ce1;
output  [7:0] v9270_0_d1;
input  [7:0] v9270_0_q1;
output   v9270_0_we1;
output  [13:0] v9270_1_address0;
output   v9270_1_ce0;
output  [7:0] v9270_1_d0;
input  [7:0] v9270_1_q0;
output   v9270_1_we0;
output  [13:0] v9270_1_address1;
output   v9270_1_ce1;
output  [7:0] v9270_1_d1;
input  [7:0] v9270_1_q1;
output   v9270_1_we1;
output  [15:0] v9189_0_address0;
output   v9189_0_ce0;
output  [7:0] v9189_0_d0;
input  [7:0] v9189_0_q0;
output   v9189_0_we0;
output  [15:0] v9189_0_address1;
output   v9189_0_ce1;
output  [7:0] v9189_0_d1;
input  [7:0] v9189_0_q1;
output   v9189_0_we1;
output  [15:0] v9189_1_address0;
output   v9189_1_ce0;
output  [7:0] v9189_1_d0;
input  [7:0] v9189_1_q0;
output   v9189_1_we0;
output  [15:0] v9189_1_address1;
output   v9189_1_ce1;
output  [7:0] v9189_1_d1;
input  [7:0] v9189_1_q1;
output   v9189_1_we1;
output  [15:0] v9257_address0;
output   v9257_ce0;
output  [7:0] v9257_d0;
input  [7:0] v9257_q0;
output   v9257_we0;
output  [15:0] v9257_address1;
output   v9257_ce1;
output  [7:0] v9257_d1;
input  [7:0] v9257_q1;
output   v9257_we1;
input   v1688_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v1698_i_q0;
wire   [7:0] v1698_i_q1;
wire   [7:0] v1698_t_q0;
wire   [7:0] v1698_t_q1;
wire   [7:0] v1698_1_i_q0;
wire   [7:0] v1698_1_i_q1;
wire   [7:0] v1698_1_t_q0;
wire   [7:0] v1698_1_t_q1;
wire   [7:0] v1697_i_q0;
wire   [7:0] v1697_t_q0;
wire   [7:0] v1696_i_q0;
wire   [7:0] v1696_t_q0;
wire   [7:0] v1696_1_i_q0;
wire   [7:0] v1696_1_t_q0;
wire   [7:0] v1695_i_q0;
wire   [7:0] v1695_t_q0;
wire   [7:0] v1695_1_i_q0;
wire   [7:0] v1695_1_t_q0;
wire   [7:0] v1694_i_q0;
wire   [7:0] v1694_t_q0;
wire   [7:0] v1694_1_i_q0;
wire   [7:0] v1694_1_t_q0;
wire   [7:0] v1693_i_q0;
wire   [7:0] v1693_t_q0;
wire   [7:0] v1693_1_i_q0;
wire   [7:0] v1693_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v9257_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v9257_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_d0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_return;
wire    ap_channel_done_v1688_0_c86_channel2;
wire    v1688_0_c86_channel2_full_n;
reg    ap_sync_reg_channel_write_v1688_0_c86_channel2;
wire    ap_sync_channel_write_v1688_0_c86_channel2;
wire    ap_channel_done_v1697;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_full_n;
reg    ap_sync_reg_channel_write_v1697;
wire    ap_sync_channel_write_v1697;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_d0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v9189_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v9189_0_ce0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v9189_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v9189_1_ce0;
wire    ap_channel_done_v1696_1;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_full_n;
reg    ap_sync_reg_channel_write_v1696_1;
wire    ap_sync_channel_write_v1696_1;
wire    ap_channel_done_v1696;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_full_n;
reg    ap_sync_reg_channel_write_v1696;
wire    ap_sync_channel_write_v1696;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v9270_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v9270_0_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v9270_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v9270_1_ce0;
wire    ap_channel_done_v1695_1;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_full_n;
reg    ap_sync_reg_channel_write_v1695_1;
wire    ap_sync_channel_write_v1695_1;
wire    ap_channel_done_v1695;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_full_n;
reg    ap_sync_reg_channel_write_v1695;
wire    ap_sync_channel_write_v1695;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v9265_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v9265_0_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v9265_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v9265_1_ce0;
wire    ap_channel_done_v1694_1;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_full_n;
reg    ap_sync_reg_channel_write_v1694_1;
wire    ap_sync_channel_write_v1694_1;
wire    ap_channel_done_v1694;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_full_n;
reg    ap_sync_reg_channel_write_v1694;
wire    ap_sync_channel_write_v1694;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_d0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1697_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1697_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_address1;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_ce1;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_address1;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_ce1;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1696_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1696_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1695_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1695_1_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1696_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1696_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1695_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1695_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1694_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1694_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1694_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1694_ce0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_return_0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_return_1;
wire    ap_channel_done_v1688_0_c85_channel;
wire    v1688_0_c85_channel_full_n;
reg    ap_sync_reg_channel_write_v1688_0_c85_channel;
wire    ap_sync_channel_write_v1688_0_c85_channel;
wire    ap_channel_done_v1688_0_c_channel;
wire    v1688_0_c_channel_full_n;
reg    ap_sync_reg_channel_write_v1688_0_c_channel;
wire    ap_sync_channel_write_v1688_0_c_channel;
wire    ap_channel_done_v1698_1;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_full_n;
reg    ap_sync_reg_channel_write_v1698_1;
wire    ap_sync_channel_write_v1698_1;
wire    ap_channel_done_v1698;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_full_n;
reg    ap_sync_reg_channel_write_v1698;
wire    ap_sync_channel_write_v1698;
wire    ap_channel_done_v1693_1;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_full_n;
reg    ap_sync_reg_channel_write_v1693_1;
wire    ap_sync_channel_write_v1693_1;
wire    ap_channel_done_v1693;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_full_n;
reg    ap_sync_reg_channel_write_v1693;
wire    ap_sync_channel_write_v1693;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_1_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_0_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v1698_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v1698_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v1698_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v1698_ce0;
wire    ap_sync_continue;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_1_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_0_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v1693_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v1693_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v1693_address0;
wire    dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v1693_ce0;
wire    v1697_i_full_n;
wire    v1697_t_empty_n;
wire    v1696_i_full_n;
wire    v1696_t_empty_n;
wire    v1696_1_i_full_n;
wire    v1696_1_t_empty_n;
wire    v1695_i_full_n;
wire    v1695_t_empty_n;
wire    v1695_1_i_full_n;
wire    v1695_1_t_empty_n;
wire    v1694_i_full_n;
wire    v1694_t_empty_n;
wire    v1694_1_i_full_n;
wire    v1694_1_t_empty_n;
wire    v1693_i_full_n;
wire    v1693_t_empty_n;
wire    v1693_1_i_full_n;
wire    v1693_1_t_empty_n;
wire    v1698_i_full_n;
wire    v1698_t_empty_n;
wire    v1698_1_i_full_n;
wire    v1698_1_t_empty_n;
wire   [12:0] v1688_0_c86_channel2_dout;
wire   [2:0] v1688_0_c86_channel2_num_data_valid;
wire   [2:0] v1688_0_c86_channel2_fifo_cap;
wire    v1688_0_c86_channel2_empty_n;
wire   [12:0] v1688_0_c_channel_dout;
wire   [2:0] v1688_0_c_channel_num_data_valid;
wire   [2:0] v1688_0_c_channel_fifo_cap;
wire    v1688_0_c_channel_empty_n;
wire   [12:0] v1688_0_c85_channel_dout;
wire   [2:0] v1688_0_c85_channel_num_data_valid;
wire   [2:0] v1688_0_c85_channel_fifo_cap;
wire    v1688_0_c85_channel_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v1688_0_c86_channel2 = 1'b0;
#0 ap_sync_reg_channel_write_v1697 = 1'b0;
#0 ap_sync_reg_channel_write_v1696_1 = 1'b0;
#0 ap_sync_reg_channel_write_v1696 = 1'b0;
#0 ap_sync_reg_channel_write_v1695_1 = 1'b0;
#0 ap_sync_reg_channel_write_v1695 = 1'b0;
#0 ap_sync_reg_channel_write_v1694_1 = 1'b0;
#0 ap_sync_reg_channel_write_v1694 = 1'b0;
#0 ap_sync_reg_channel_write_v1688_0_c85_channel = 1'b0;
#0 ap_sync_reg_channel_write_v1688_0_c_channel = 1'b0;
#0 ap_sync_reg_channel_write_v1698_1 = 1'b0;
#0 ap_sync_reg_channel_write_v1698 = 1'b0;
#0 ap_sync_reg_channel_write_v1693_1 = 1'b0;
#0 ap_sync_reg_channel_write_v1693 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_2447_1_v1698_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v1698_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_d0),.i_q0(v1698_i_q0),.i_address1(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_address1),.i_ce1(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_ce1),.i_q1(v1698_i_q1),.t_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v1698_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v1698_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v1698_t_q0),.t_address1(4'd0),.t_ce1(1'b0),.t_q1(v1698_t_q1),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v1698_i_full_n),.i_write(ap_channel_done_v1698),.t_empty_n(v1698_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_2447_1_v1698_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v1698_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_d0),.i_q0(v1698_1_i_q0),.i_address1(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_address1),.i_ce1(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_ce1),.i_q1(v1698_1_i_q1),.t_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v1698_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v1698_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v1698_1_t_q0),.t_address1(4'd0),.t_ce1(1'b0),.t_q1(v1698_1_t_q1),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v1698_1_i_full_n),.i_write(ap_channel_done_v1698_1),.t_empty_n(v1698_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_14333_1_v9169_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v1697_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_d0),.i_q0(v1697_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1697_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1697_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v1697_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v1697_i_full_n),.i_write(ap_channel_done_v1697),.t_empty_n(v1697_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_5485_1_v3751_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 512 ),.AddressWidth( 9 ))
v1696_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_d0),.i_q0(v1696_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1696_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1696_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v1696_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v1696_i_full_n),.i_write(ap_channel_done_v1696),.t_empty_n(v1696_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_5485_1_v3751_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 512 ),.AddressWidth( 9 ))
v1696_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_d0),.i_q0(v1696_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1696_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1696_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v1696_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v1696_1_i_full_n),.i_write(ap_channel_done_v1696_1),.t_empty_n(v1696_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_3276_1_v2314_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v1695_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_d0),.i_q0(v1695_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1695_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1695_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v1695_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v1695_i_full_n),.i_write(ap_channel_done_v1695),.t_empty_n(v1695_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_3276_1_v2314_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v1695_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_d0),.i_q0(v1695_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1695_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1695_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v1695_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v1695_1_i_full_n),.i_write(ap_channel_done_v1695_1),.t_empty_n(v1695_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_3276_1_v2314_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v1694_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_d0),.i_q0(v1694_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1694_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1694_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v1694_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v1694_i_full_n),.i_write(ap_channel_done_v1694),.t_empty_n(v1694_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_3276_1_v2314_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v1694_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_d0),.i_q0(v1694_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1694_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1694_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v1694_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v1694_1_i_full_n),.i_write(ap_channel_done_v1694_1),.t_empty_n(v1694_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_3276_1_v2314_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v1693_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_d0),.i_q0(v1693_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v1693_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v1693_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v1693_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v1693_i_full_n),.i_write(ap_channel_done_v1693),.t_empty_n(v1693_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_3276_1_v2314_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v1693_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_d0),.i_q0(v1693_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v1693_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v1693_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v1693_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v1693_1_i_full_n),.i_write(ap_channel_done_v1693_1),.t_empty_n(v1693_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready),.v1688_0(v1688_0),.v9257_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v9257_address0),.v9257_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v9257_ce0),.v9257_q0(v9257_q0),.v1697_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_address0),.v1697_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_ce0),.v1697_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_we0),.v1697_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179 dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready),.v1696_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_address0),.v1696_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_ce0),.v1696_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_we0),.v1696_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_d0),.v1696_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_address0),.v1696_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_ce0),.v1696_1_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_we0),.v1696_1_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_d0),.v1688_0(v1688_0),.v9189_0_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v9189_0_address0),.v9189_0_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v9189_0_ce0),.v9189_0_q0(v9189_0_q0),.v9189_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v9189_1_address0),.v9189_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v9189_1_ce0),.v9189_1_q0(v9189_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready),.v1695_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_address0),.v1695_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_ce0),.v1695_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_we0),.v1695_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_d0),.v1695_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_address0),.v1695_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_ce0),.v1695_1_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_we0),.v1695_1_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_d0),.v1688_0(v1688_0),.v9270_0_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v9270_0_address0),.v9270_0_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v9270_0_ce0),.v9270_0_q0(v9270_0_q0),.v9270_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v9270_1_address0),.v9270_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v9270_1_ce0),.v9270_1_q0(v9270_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready),.v1694_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_address0),.v1694_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_ce0),.v1694_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_we0),.v1694_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_d0),.v1694_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_address0),.v1694_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_ce0),.v1694_1_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_we0),.v1694_1_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_d0),.v1688_0(v1688_0),.v9265_0_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v9265_0_address0),.v9265_0_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v9265_0_ce0),.v9265_0_q0(v9265_0_q0),.v9265_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v9265_1_address0),.v9265_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v9265_1_ce0),.v9265_1_q0(v9265_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_ready),.p_read(v1688_0_c86_channel2_dout),.v1693_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_address0),.v1693_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_ce0),.v1693_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_we0),.v1693_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_d0),.v1693_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_address0),.v1693_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_ce0),.v1693_1_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_we0),.v1693_1_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_d0),.v1697_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1697_address0),.v1697_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1697_ce0),.v1697_q0(v1697_t_q0),.v1698_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_address0),.v1698_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_ce0),.v1698_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_we0),.v1698_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_d0),.v1698_address1(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_address1),.v1698_ce1(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_ce1),.v1698_q1(v1698_i_q1),.v1698_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_address0),.v1698_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_ce0),.v1698_1_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_we0),.v1698_1_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_d0),.v1698_1_address1(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_address1),.v1698_1_ce1(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_ce1),.v1698_1_q1(v1698_1_i_q1),.v1696_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1696_1_address0),.v1696_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1696_1_ce0),.v1696_1_q0(v1696_1_t_q0),.v1695_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1695_1_address0),.v1695_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1695_1_ce0),.v1695_1_q0(v1695_1_t_q0),.v1696_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1696_address0),.v1696_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1696_ce0),.v1696_q0(v1696_t_q0),.v1695_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1695_address0),.v1695_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1695_ce0),.v1695_q0(v1695_t_q0),.v1694_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1694_1_address0),.v1694_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1694_1_ce0),.v1694_1_q0(v1694_1_t_q0),.v1694_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1694_address0),.v1694_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1694_ce0),.v1694_q0(v1694_t_q0),.ap_return_0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_return_0),.ap_return_1(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_return_1));
forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_ready),.v9269_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_1_address0),.v9269_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_1_ce0),.v9269_1_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_1_we0),.v9269_1_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_1_d0),.v9269_0_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_0_address0),.v9269_0_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_0_ce0),.v9269_0_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_0_we0),.v9269_0_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_0_d0),.v1698_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v1698_1_address0),.v1698_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v1698_1_ce0),.v1698_1_q0(v1698_1_t_q0),.p_read(v1688_0_c85_channel_dout),.v1698_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v1698_address0),.v1698_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v1698_ce0),.v1698_q0(v1698_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_ready),.v9266_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_1_address0),.v9266_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_1_ce0),.v9266_1_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_1_we0),.v9266_1_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_1_d0),.v9266_0_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_0_address0),.v9266_0_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_0_ce0),.v9266_0_we0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_0_we0),.v9266_0_d0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_0_d0),.v1693_1_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v1693_1_address0),.v1693_1_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v1693_1_ce0),.v1693_1_q0(v1693_1_t_q0),.p_read(v1688_0_c_channel_dout),.v1693_address0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v1693_address0),.v1693_ce0(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v1693_ce0),.v1693_q0(v1693_t_q0));
forward_fifo_w13_d2_S v1688_0_c86_channel2_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_return),.if_full_n(v1688_0_c86_channel2_full_n),.if_write(ap_channel_done_v1688_0_c86_channel2),.if_dout(v1688_0_c86_channel2_dout),.if_num_data_valid(v1688_0_c86_channel2_num_data_valid),.if_fifo_cap(v1688_0_c86_channel2_fifo_cap),.if_empty_n(v1688_0_c86_channel2_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_ready));
forward_fifo_w13_d2_S v1688_0_c_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_return_0),.if_full_n(v1688_0_c_channel_full_n),.if_write(ap_channel_done_v1688_0_c_channel),.if_dout(v1688_0_c_channel_dout),.if_num_data_valid(v1688_0_c_channel_num_data_valid),.if_fifo_cap(v1688_0_c_channel_fifo_cap),.if_empty_n(v1688_0_c_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_ready));
forward_fifo_w13_d2_S v1688_0_c85_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_return_1),.if_full_n(v1688_0_c85_channel_full_n),.if_write(ap_channel_done_v1688_0_c85_channel),.if_dout(v1688_0_c85_channel_dout),.if_num_data_valid(v1688_0_c85_channel_num_data_valid),.if_fifo_cap(v1688_0_c85_channel_fifo_cap),.if_empty_n(v1688_0_c85_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1688_0_c85_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1688_0_c85_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1688_0_c85_channel <= ap_sync_channel_write_v1688_0_c85_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1688_0_c86_channel2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1688_0_c86_channel2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1688_0_c86_channel2 <= ap_sync_channel_write_v1688_0_c86_channel2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1688_0_c_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1688_0_c_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1688_0_c_channel <= ap_sync_channel_write_v1688_0_c_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1693 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1693 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1693 <= ap_sync_channel_write_v1693;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1693_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1693_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1693_1 <= ap_sync_channel_write_v1693_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1694 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1694 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1694 <= ap_sync_channel_write_v1694;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1694_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1694_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1694_1 <= ap_sync_channel_write_v1694_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1695 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1695 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1695 <= ap_sync_channel_write_v1695;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1695_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1695_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1695_1 <= ap_sync_channel_write_v1695_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1696 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1696 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1696 <= ap_sync_channel_write_v1696;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1696_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1696_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1696_1 <= ap_sync_channel_write_v1696_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1697 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1697 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1697 <= ap_sync_channel_write_v1697;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1698 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1698 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1698 <= ap_sync_channel_write_v1698;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v1698_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v1698_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v1698_1 <= ap_sync_channel_write_v1698_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v1688_0_c85_channel = ((ap_sync_reg_channel_write_v1688_0_c85_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done);
assign ap_channel_done_v1688_0_c86_channel2 = ((ap_sync_reg_channel_write_v1688_0_c86_channel2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_done);
assign ap_channel_done_v1688_0_c_channel = ((ap_sync_reg_channel_write_v1688_0_c_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done);
assign ap_channel_done_v1693 = ((ap_sync_reg_channel_write_v1693 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done);
assign ap_channel_done_v1693_1 = ((ap_sync_reg_channel_write_v1693_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done);
assign ap_channel_done_v1694 = ((ap_sync_reg_channel_write_v1694 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_done);
assign ap_channel_done_v1694_1 = ((ap_sync_reg_channel_write_v1694_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_done);
assign ap_channel_done_v1695 = ((ap_sync_reg_channel_write_v1695 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_done);
assign ap_channel_done_v1695_1 = ((ap_sync_reg_channel_write_v1695_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_done);
assign ap_channel_done_v1696 = ((ap_sync_reg_channel_write_v1696 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_done);
assign ap_channel_done_v1696_1 = ((ap_sync_reg_channel_write_v1696_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_done);
assign ap_channel_done_v1697 = ((ap_sync_reg_channel_write_v1697 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_done);
assign ap_channel_done_v1698 = ((ap_sync_reg_channel_write_v1698 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done);
assign ap_channel_done_v1698_1 = ((ap_sync_reg_channel_write_v1698_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_done);
assign ap_done = ap_sync_done;
assign ap_idle = ((v1688_0_c85_channel_empty_n ^ 1'b1) & (v1688_0_c_channel_empty_n ^ 1'b1) & (v1688_0_c86_channel2_empty_n ^ 1'b1) & (v1698_1_t_empty_n ^ 1'b1) & (v1698_t_empty_n ^ 1'b1) & (v1693_1_t_empty_n ^ 1'b1) & (v1693_t_empty_n ^ 1'b1) & (v1694_1_t_empty_n ^ 1'b1) & (v1694_t_empty_n ^ 1'b1) & (v1695_1_t_empty_n ^ 1'b1) & (v1695_t_empty_n ^ 1'b1) & (v1696_1_t_empty_n ^ 1'b1) & (v1696_t_empty_n ^ 1'b1) & (v1697_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v1688_0_c85_channel = ((v1688_0_c85_channel_full_n & ap_channel_done_v1688_0_c85_channel) | ap_sync_reg_channel_write_v1688_0_c85_channel);
assign ap_sync_channel_write_v1688_0_c86_channel2 = ((v1688_0_c86_channel2_full_n & ap_channel_done_v1688_0_c86_channel2) | ap_sync_reg_channel_write_v1688_0_c86_channel2);
assign ap_sync_channel_write_v1688_0_c_channel = ((v1688_0_c_channel_full_n & ap_channel_done_v1688_0_c_channel) | ap_sync_reg_channel_write_v1688_0_c_channel);
assign ap_sync_channel_write_v1693 = ((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_full_n & ap_channel_done_v1693) | ap_sync_reg_channel_write_v1693);
assign ap_sync_channel_write_v1693_1 = ((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_full_n & ap_channel_done_v1693_1) | ap_sync_reg_channel_write_v1693_1);
assign ap_sync_channel_write_v1694 = ((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_full_n & ap_channel_done_v1694) | ap_sync_reg_channel_write_v1694);
assign ap_sync_channel_write_v1694_1 = ((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_full_n & ap_channel_done_v1694_1) | ap_sync_reg_channel_write_v1694_1);
assign ap_sync_channel_write_v1695 = ((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_full_n & ap_channel_done_v1695) | ap_sync_reg_channel_write_v1695);
assign ap_sync_channel_write_v1695_1 = ((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_full_n & ap_channel_done_v1695_1) | ap_sync_reg_channel_write_v1695_1);
assign ap_sync_channel_write_v1696 = ((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_full_n & ap_channel_done_v1696) | ap_sync_reg_channel_write_v1696);
assign ap_sync_channel_write_v1696_1 = ((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_full_n & ap_channel_done_v1696_1) | ap_sync_reg_channel_write_v1696_1);
assign ap_sync_channel_write_v1697 = ((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_full_n & ap_channel_done_v1697) | ap_sync_reg_channel_write_v1697);
assign ap_sync_channel_write_v1698 = ((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_full_n & ap_channel_done_v1698) | ap_sync_reg_channel_write_v1698);
assign ap_sync_channel_write_v1698_1 = ((dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_full_n & ap_channel_done_v1698_1) | ap_sync_reg_channel_write_v1698_1);
assign ap_sync_continue = (ap_sync_done & ap_continue);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready);
assign ap_sync_done = (dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_done);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_continue = ap_sync_continue;
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_ap_start = (v1693_t_empty_n & v1693_1_t_empty_n & v1688_0_c_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_continue = ap_sync_continue;
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_ap_start = (v1698_t_empty_n & v1698_1_t_empty_n & v1688_0_c85_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_continue = (ap_sync_channel_write_v1698_1 & ap_sync_channel_write_v1698 & ap_sync_channel_write_v1693_1 & ap_sync_channel_write_v1693 & ap_sync_channel_write_v1688_0_c_channel & ap_sync_channel_write_v1688_0_c85_channel);
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_ap_start = (v1697_t_empty_n & v1696_t_empty_n & v1696_1_t_empty_n & v1695_t_empty_n & v1695_1_t_empty_n & v1694_t_empty_n & v1694_1_t_empty_n & v1688_0_c86_channel2_empty_n);
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_1_full_n = v1693_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1693_full_n = v1693_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_1_full_n = v1698_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2290_1_proc_U0_v1698_full_n = v1698_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_continue = (ap_sync_channel_write_v1694_1 & ap_sync_channel_write_v1694);
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_1_full_n = v1694_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v1694_full_n = v1694_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_continue = (ap_sync_channel_write_v1695_1 & ap_sync_channel_write_v1695);
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_1_full_n = v1695_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v1695_full_n = v1695_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_continue = (ap_sync_channel_write_v1696_1 & ap_sync_channel_write_v1696);
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_1_full_n = v1696_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v1696_full_n = v1696_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_continue = (ap_sync_channel_write_v1697 & ap_sync_channel_write_v1688_0_c86_channel2);
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v1697_full_n = v1697_i_full_n;
assign v9189_0_address0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v9189_0_address0;
assign v9189_0_address1 = 16'd0;
assign v9189_0_ce0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v9189_0_ce0;
assign v9189_0_ce1 = 1'b0;
assign v9189_0_d0 = 8'd0;
assign v9189_0_d1 = 8'd0;
assign v9189_0_we0 = 1'b0;
assign v9189_0_we1 = 1'b0;
assign v9189_1_address0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v9189_1_address0;
assign v9189_1_address1 = 16'd0;
assign v9189_1_ce0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2395_1_proc179_U0_v9189_1_ce0;
assign v9189_1_ce1 = 1'b0;
assign v9189_1_d0 = 8'd0;
assign v9189_1_d1 = 8'd0;
assign v9189_1_we0 = 1'b0;
assign v9189_1_we1 = 1'b0;
assign v9257_address0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v9257_address0;
assign v9257_address1 = 16'd0;
assign v9257_ce0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2416_1_proc_U0_v9257_ce0;
assign v9257_ce1 = 1'b0;
assign v9257_d0 = 8'd0;
assign v9257_d1 = 8'd0;
assign v9257_we0 = 1'b0;
assign v9257_we1 = 1'b0;
assign v9265_0_address0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v9265_0_address0;
assign v9265_0_address1 = 14'd0;
assign v9265_0_ce0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v9265_0_ce0;
assign v9265_0_ce1 = 1'b0;
assign v9265_0_d0 = 8'd0;
assign v9265_0_d1 = 8'd0;
assign v9265_0_we0 = 1'b0;
assign v9265_0_we1 = 1'b0;
assign v9265_1_address0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v9265_1_address0;
assign v9265_1_address1 = 14'd0;
assign v9265_1_ce0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2352_1_proc_U0_v9265_1_ce0;
assign v9265_1_ce1 = 1'b0;
assign v9265_1_d0 = 8'd0;
assign v9265_1_d1 = 8'd0;
assign v9265_1_we0 = 1'b0;
assign v9265_1_we1 = 1'b0;
assign v9266_0_address0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_0_address0;
assign v9266_0_address1 = 14'd0;
assign v9266_0_ce0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_0_ce0;
assign v9266_0_ce1 = 1'b0;
assign v9266_0_d0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_0_d0;
assign v9266_0_d1 = 8'd0;
assign v9266_0_we0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_0_we0;
assign v9266_0_we1 = 1'b0;
assign v9266_1_address0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_1_address0;
assign v9266_1_address1 = 14'd0;
assign v9266_1_ce0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_1_ce0;
assign v9266_1_ce1 = 1'b0;
assign v9266_1_d0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_1_d0;
assign v9266_1_d1 = 8'd0;
assign v9266_1_we0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2232_1_proc_U0_v9266_1_we0;
assign v9266_1_we1 = 1'b0;
assign v9269_0_address0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_0_address0;
assign v9269_0_address1 = 14'd0;
assign v9269_0_ce0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_0_ce0;
assign v9269_0_ce1 = 1'b0;
assign v9269_0_d0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_0_d0;
assign v9269_0_d1 = 8'd0;
assign v9269_0_we0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_0_we0;
assign v9269_0_we1 = 1'b0;
assign v9269_1_address0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_1_address0;
assign v9269_1_address1 = 14'd0;
assign v9269_1_ce0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_1_ce0;
assign v9269_1_ce1 = 1'b0;
assign v9269_1_d0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_1_d0;
assign v9269_1_d1 = 8'd0;
assign v9269_1_we0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2254_1_proc_U0_v9269_1_we0;
assign v9269_1_we1 = 1'b0;
assign v9270_0_address0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v9270_0_address0;
assign v9270_0_address1 = 14'd0;
assign v9270_0_ce0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v9270_0_ce0;
assign v9270_0_ce1 = 1'b0;
assign v9270_0_d0 = 8'd0;
assign v9270_0_d1 = 8'd0;
assign v9270_0_we0 = 1'b0;
assign v9270_0_we1 = 1'b0;
assign v9270_1_address0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v9270_1_address0;
assign v9270_1_address1 = 14'd0;
assign v9270_1_ce0 = dataflow_in_loop_VITIS_LOOP_2447_1_Loop_VITIS_LOOP_2374_1_proc_U0_v9270_1_ce0;
assign v9270_1_ce1 = 1'b0;
assign v9270_1_d0 = 8'd0;
assign v9270_1_d1 = 8'd0;
assign v9270_1_we0 = 1'b0;
assign v9270_1_we1 = 1'b0;
endmodule 
