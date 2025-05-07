module forward_dataflow_in_loop_VITIS_LOOP_469_1 (ap_clk,ap_rst,v172,v13744_1_address0,v13744_1_ce0,v13744_1_d0,v13744_1_q0,v13744_1_we0,v13744_1_address1,v13744_1_ce1,v13744_1_d1,v13744_1_q1,v13744_1_we1,v13744_0_address0,v13744_0_ce0,v13744_0_d0,v13744_0_q0,v13744_0_we0,v13744_0_address1,v13744_0_ce1,v13744_0_d1,v13744_0_q1,v13744_0_we1,v13742_1_address0,v13742_1_ce0,v13742_1_d0,v13742_1_q0,v13742_1_we0,v13742_1_address1,v13742_1_ce1,v13742_1_d1,v13742_1_q1,v13742_1_we1,v13742_0_address0,v13742_0_ce0,v13742_0_d0,v13742_0_q0,v13742_0_we0,v13742_0_address1,v13742_0_ce1,v13742_0_d1,v13742_0_q1,v13742_0_we1,v167_0_address0,v167_0_ce0,v167_0_d0,v167_0_q0,v167_0_we0,v167_0_address1,v167_0_ce1,v167_0_d1,v167_0_q1,v167_0_we1,v167_1_address0,v167_1_ce0,v167_1_d0,v167_1_q0,v167_1_we0,v167_1_address1,v167_1_ce1,v167_1_d1,v167_1_q1,v167_1_we1,v167_2_address0,v167_2_ce0,v167_2_d0,v167_2_q0,v167_2_we0,v167_2_address1,v167_2_ce1,v167_2_d1,v167_2_q1,v167_2_we1,v167_3_address0,v167_3_ce0,v167_3_d0,v167_3_q0,v167_3_we0,v167_3_address1,v167_3_ce1,v167_3_d1,v167_3_q1,v167_3_we1,v13693_0_address0,v13693_0_ce0,v13693_0_d0,v13693_0_q0,v13693_0_we0,v13693_0_address1,v13693_0_ce1,v13693_0_d1,v13693_0_q1,v13693_0_we1,v13693_1_address0,v13693_1_ce0,v13693_1_d0,v13693_1_q0,v13693_1_we0,v13693_1_address1,v13693_1_ce1,v13693_1_d1,v13693_1_q1,v13693_1_we1,v13745_0_address0,v13745_0_ce0,v13745_0_d0,v13745_0_q0,v13745_0_we0,v13745_0_address1,v13745_0_ce1,v13745_0_d1,v13745_0_q1,v13745_0_we1,v13745_1_address0,v13745_1_ce0,v13745_1_d0,v13745_1_q0,v13745_1_we0,v13745_1_address1,v13745_1_ce1,v13745_1_d1,v13745_1_q1,v13745_1_we1,v13695_0_address0,v13695_0_ce0,v13695_0_d0,v13695_0_q0,v13695_0_we0,v13695_0_address1,v13695_0_ce1,v13695_0_d1,v13695_0_q1,v13695_0_we1,v13695_1_address0,v13695_1_ce0,v13695_1_d0,v13695_1_q0,v13695_1_we0,v13695_1_address1,v13695_1_ce1,v13695_1_d1,v13695_1_q1,v13695_1_we1,v172_ap_vld,ap_start,v167_0_empty_n,v167_0_read,v167_1_empty_n,v167_1_read,v167_2_empty_n,v167_2_read,v167_3_empty_n,v167_3_read,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [10:0] v172;
output  [10:0] v13744_1_address0;
output   v13744_1_ce0;
output  [7:0] v13744_1_d0;
input  [7:0] v13744_1_q0;
output   v13744_1_we0;
output  [10:0] v13744_1_address1;
output   v13744_1_ce1;
output  [7:0] v13744_1_d1;
input  [7:0] v13744_1_q1;
output   v13744_1_we1;
output  [10:0] v13744_0_address0;
output   v13744_0_ce0;
output  [7:0] v13744_0_d0;
input  [7:0] v13744_0_q0;
output   v13744_0_we0;
output  [10:0] v13744_0_address1;
output   v13744_0_ce1;
output  [7:0] v13744_0_d1;
input  [7:0] v13744_0_q1;
output   v13744_0_we1;
output  [10:0] v13742_1_address0;
output   v13742_1_ce0;
output  [7:0] v13742_1_d0;
input  [7:0] v13742_1_q0;
output   v13742_1_we0;
output  [10:0] v13742_1_address1;
output   v13742_1_ce1;
output  [7:0] v13742_1_d1;
input  [7:0] v13742_1_q1;
output   v13742_1_we1;
output  [10:0] v13742_0_address0;
output   v13742_0_ce0;
output  [7:0] v13742_0_d0;
input  [7:0] v13742_0_q0;
output   v13742_0_we0;
output  [10:0] v13742_0_address1;
output   v13742_0_ce1;
output  [7:0] v13742_0_d1;
input  [7:0] v13742_0_q1;
output   v13742_0_we1;
output  [5:0] v167_0_address0;
output   v167_0_ce0;
output  [7:0] v167_0_d0;
input  [7:0] v167_0_q0;
output   v167_0_we0;
output  [5:0] v167_0_address1;
output   v167_0_ce1;
output  [7:0] v167_0_d1;
input  [7:0] v167_0_q1;
output   v167_0_we1;
output  [5:0] v167_1_address0;
output   v167_1_ce0;
output  [7:0] v167_1_d0;
input  [7:0] v167_1_q0;
output   v167_1_we0;
output  [5:0] v167_1_address1;
output   v167_1_ce1;
output  [7:0] v167_1_d1;
input  [7:0] v167_1_q1;
output   v167_1_we1;
output  [5:0] v167_2_address0;
output   v167_2_ce0;
output  [7:0] v167_2_d0;
input  [7:0] v167_2_q0;
output   v167_2_we0;
output  [5:0] v167_2_address1;
output   v167_2_ce1;
output  [7:0] v167_2_d1;
input  [7:0] v167_2_q1;
output   v167_2_we1;
output  [5:0] v167_3_address0;
output   v167_3_ce0;
output  [7:0] v167_3_d0;
input  [7:0] v167_3_q0;
output   v167_3_we0;
output  [5:0] v167_3_address1;
output   v167_3_ce1;
output  [7:0] v167_3_d1;
input  [7:0] v167_3_q1;
output   v167_3_we1;
output  [10:0] v13693_0_address0;
output   v13693_0_ce0;
output  [7:0] v13693_0_d0;
input  [7:0] v13693_0_q0;
output   v13693_0_we0;
output  [10:0] v13693_0_address1;
output   v13693_0_ce1;
output  [7:0] v13693_0_d1;
input  [7:0] v13693_0_q1;
output   v13693_0_we1;
output  [10:0] v13693_1_address0;
output   v13693_1_ce0;
output  [7:0] v13693_1_d0;
input  [7:0] v13693_1_q0;
output   v13693_1_we0;
output  [10:0] v13693_1_address1;
output   v13693_1_ce1;
output  [7:0] v13693_1_d1;
input  [7:0] v13693_1_q1;
output   v13693_1_we1;
output  [10:0] v13745_0_address0;
output   v13745_0_ce0;
output  [7:0] v13745_0_d0;
input  [7:0] v13745_0_q0;
output   v13745_0_we0;
output  [10:0] v13745_0_address1;
output   v13745_0_ce1;
output  [7:0] v13745_0_d1;
input  [7:0] v13745_0_q1;
output   v13745_0_we1;
output  [10:0] v13745_1_address0;
output   v13745_1_ce0;
output  [7:0] v13745_1_d0;
input  [7:0] v13745_1_q0;
output   v13745_1_we0;
output  [10:0] v13745_1_address1;
output   v13745_1_ce1;
output  [7:0] v13745_1_d1;
input  [7:0] v13745_1_q1;
output   v13745_1_we1;
output  [18:0] v13695_0_address0;
output   v13695_0_ce0;
output  [7:0] v13695_0_d0;
input  [7:0] v13695_0_q0;
output   v13695_0_we0;
output  [18:0] v13695_0_address1;
output   v13695_0_ce1;
output  [7:0] v13695_0_d1;
input  [7:0] v13695_0_q1;
output   v13695_0_we1;
output  [18:0] v13695_1_address0;
output   v13695_1_ce0;
output  [7:0] v13695_1_d0;
input  [7:0] v13695_1_q0;
output   v13695_1_we0;
output  [18:0] v13695_1_address1;
output   v13695_1_ce1;
output  [7:0] v13695_1_d1;
input  [7:0] v13695_1_q1;
output   v13695_1_we1;
input   v172_ap_vld;
input   ap_start;
input   v167_0_empty_n;
output   v167_0_read;
input   v167_1_empty_n;
output   v167_1_read;
input   v167_2_empty_n;
output   v167_2_read;
input   v167_3_empty_n;
output   v167_3_read;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v179_i_q0;
wire   [7:0] v179_i_q1;
wire   [7:0] v179_t_q0;
wire   [7:0] v179_t_q1;
wire   [7:0] v179_1_i_q0;
wire   [7:0] v179_1_i_q1;
wire   [7:0] v179_1_t_q0;
wire   [7:0] v179_1_t_q1;
wire   [7:0] v178_i_q0;
wire   [7:0] v178_t_q0;
wire   [7:0] v178_1_i_q0;
wire   [7:0] v178_1_t_q0;
wire   [7:0] v177_i_q0;
wire   [7:0] v177_t_q0;
wire   [7:0] v177_1_i_q0;
wire   [7:0] v177_1_t_q0;
wire   [7:0] v176_i_q0;
wire   [7:0] v176_t_q0;
wire   [7:0] v176_1_i_q0;
wire   [7:0] v176_1_t_q0;
wire   [6:0] v175_i_q0;
wire   [6:0] v175_t_q0;
wire   [6:0] v175_1_i_q0;
wire   [6:0] v175_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v172;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v13695_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v13695_0_ce0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v13695_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v13695_1_ce0;
wire    ap_channel_done_v178_1;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_full_n;
reg    ap_sync_reg_channel_write_v178_1;
wire    ap_sync_channel_write_v178_1;
wire    ap_channel_done_v178;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_full_n;
reg    ap_sync_reg_channel_write_v178;
wire    ap_sync_channel_write_v178;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_d0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v172;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v13745_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v13745_0_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v13745_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v13745_1_ce0;
wire    ap_channel_done_v177_1;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_full_n;
reg    ap_sync_reg_channel_write_v177_1;
wire    ap_sync_channel_write_v177_1;
wire    ap_channel_done_v177;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_full_n;
reg    ap_sync_reg_channel_write_v177;
wire    ap_sync_channel_write_v177;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_d0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v172;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v13693_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v13693_0_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v13693_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v13693_1_ce0;
wire    ap_channel_done_v176_1;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_full_n;
reg    ap_sync_reg_channel_write_v176_1;
wire    ap_sync_channel_write_v176_1;
wire    ap_channel_done_v176;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_full_n;
reg    ap_sync_reg_channel_write_v176;
wire    ap_sync_channel_write_v176;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v172;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_we0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_we0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_d0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_0_ce0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_1_ce0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_2_ce0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_3_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_address1;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_ce1;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_address1;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_ce1;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v178_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v178_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v177_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v177_1_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v178_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v178_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v177_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v177_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v176_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v176_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v176_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v176_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_return_0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_return_1;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_0_write;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_1_write;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_2_write;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_3_write;
wire    ap_channel_done_v172_c1_channel;
wire    v172_c1_channel_full_n;
reg    ap_sync_reg_channel_write_v172_c1_channel;
wire    ap_sync_channel_write_v172_c1_channel;
wire    ap_channel_done_v172_c_channel;
wire    v172_c_channel_full_n;
reg    ap_sync_reg_channel_write_v172_c_channel;
wire    ap_sync_channel_write_v172_c_channel;
wire    ap_channel_done_v179_1;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_full_n;
reg    ap_sync_reg_channel_write_v179_1;
wire    ap_sync_channel_write_v179_1;
wire    ap_channel_done_v179;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_full_n;
reg    ap_sync_reg_channel_write_v179;
wire    ap_sync_channel_write_v179;
wire    ap_channel_done_v175_1;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_full_n;
reg    ap_sync_reg_channel_write_v175_1;
wire    ap_sync_channel_write_v175_1;
wire    ap_channel_done_v175;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_full_n;
reg    ap_sync_reg_channel_write_v175;
wire    ap_sync_channel_write_v175;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_ready;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_1_d0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_0_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v179_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v179_1_i_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v179_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v179_i_ce0;
wire    ap_sync_continue;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_ready;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_1_d0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_0_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v175_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v175_1_i_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v175_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v175_i_ce0;
wire    v178_i_full_n;
wire    v178_t_empty_n;
wire    v178_1_i_full_n;
wire    v178_1_t_empty_n;
wire    v177_i_full_n;
wire    v177_t_empty_n;
wire    v177_1_i_full_n;
wire    v177_1_t_empty_n;
wire    v176_i_full_n;
wire    v176_t_empty_n;
wire    v176_1_i_full_n;
wire    v176_1_t_empty_n;
wire    v175_i_full_n;
wire    v175_t_empty_n;
wire    v175_1_i_full_n;
wire    v175_1_t_empty_n;
wire    v179_i_full_n;
wire    v179_t_empty_n;
wire    v179_1_i_full_n;
wire    v179_1_t_empty_n;
wire   [10:0] v172_c_channel_dout;
wire   [2:0] v172_c_channel_num_data_valid;
wire   [2:0] v172_c_channel_fifo_cap;
wire    v172_c_channel_empty_n;
wire   [10:0] v172_c1_channel_dout;
wire   [2:0] v172_c1_channel_num_data_valid;
wire   [2:0] v172_c1_channel_fifo_cap;
wire    v172_c1_channel_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v178_1 = 1'b0;
#0 ap_sync_reg_channel_write_v178 = 1'b0;
#0 ap_sync_reg_channel_write_v177_1 = 1'b0;
#0 ap_sync_reg_channel_write_v177 = 1'b0;
#0 ap_sync_reg_channel_write_v176_1 = 1'b0;
#0 ap_sync_reg_channel_write_v176 = 1'b0;
#0 ap_sync_reg_channel_write_v172_c1_channel = 1'b0;
#0 ap_sync_reg_channel_write_v172_c_channel = 1'b0;
#0 ap_sync_reg_channel_write_v179_1 = 1'b0;
#0 ap_sync_reg_channel_write_v179 = 1'b0;
#0 ap_sync_reg_channel_write_v175_1 = 1'b0;
#0 ap_sync_reg_channel_write_v175 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_469_1_v179_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v179_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_d0),.i_q0(v179_i_q0),.i_address1(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_address1),.i_ce1(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_ce1),.i_q1(v179_i_q1),.t_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v179_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v179_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v179_t_q0),.t_address1(4'd0),.t_ce1(1'b0),.t_q1(v179_t_q1),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v179_i_full_n),.i_write(ap_channel_done_v179),.t_empty_n(v179_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_469_1_v179_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v179_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_d0),.i_q0(v179_1_i_q0),.i_address1(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_address1),.i_ce1(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_ce1),.i_q1(v179_1_i_q1),.t_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v179_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v179_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v179_1_t_q0),.t_address1(4'd0),.t_ce1(1'b0),.t_q1(v179_1_t_q1),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v179_1_i_full_n),.i_write(ap_channel_done_v179_1),.t_empty_n(v179_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_14362_1_v11207_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 512 ),.AddressWidth( 9 ))
v178_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_d0),.i_q0(v178_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v178_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v178_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v178_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v178_i_full_n),.i_write(ap_channel_done_v178),.t_empty_n(v178_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_14362_1_v11207_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 512 ),.AddressWidth( 9 ))
v178_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_d0),.i_q0(v178_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v178_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v178_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v178_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v178_1_i_full_n),.i_write(ap_channel_done_v178_1),.t_empty_n(v178_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_16393_1_v12757_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v177_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_d0),.i_q0(v177_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v177_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v177_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v177_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v177_i_full_n),.i_write(ap_channel_done_v177),.t_empty_n(v177_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_16393_1_v12757_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v177_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_d0),.i_q0(v177_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v177_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v177_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v177_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v177_1_i_full_n),.i_write(ap_channel_done_v177_1),.t_empty_n(v177_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_16393_1_v12757_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v176_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_d0),.i_q0(v176_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v176_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v176_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v176_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v176_i_full_n),.i_write(ap_channel_done_v176),.t_empty_n(v176_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_16393_1_v12757_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v176_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_d0),.i_q0(v176_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v176_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v176_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v176_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v176_1_i_full_n),.i_write(ap_channel_done_v176_1),.t_empty_n(v176_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_469_1_v175_RAM_T2P_BRAM_1R1W #(.DataWidth( 7 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v175_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_d0),.i_q0(v175_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v175_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v175_i_ce0),.t_we0(1'b0),.t_d0(7'd0),.t_q0(v175_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v175_i_full_n),.i_write(ap_channel_done_v175),.t_empty_n(v175_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_469_1_v175_RAM_T2P_BRAM_1R1W #(.DataWidth( 7 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v175_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_d0),.i_q0(v175_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v175_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v175_1_i_ce0),.t_we0(1'b0),.t_d0(7'd0),.t_q0(v175_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v175_1_i_full_n),.i_write(ap_channel_done_v175_1),.t_empty_n(v175_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622 dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready),.v178_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_address0),.v178_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_ce0),.v178_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_we0),.v178_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_d0),.v178_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_address0),.v178_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_ce0),.v178_1_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_we0),.v178_1_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_d0),.v172(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v172),.v13695_0_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v13695_0_address0),.v13695_0_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v13695_0_ce0),.v13695_0_q0(v13695_0_q0),.v13695_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v13695_1_address0),.v13695_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v13695_1_ce0),.v13695_1_q0(v13695_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117 dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready),.v177_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_address0),.v177_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_ce0),.v177_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_we0),.v177_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_d0),.v177_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_address0),.v177_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_ce0),.v177_1_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_we0),.v177_1_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_d0),.v172(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v172),.v13745_0_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v13745_0_address0),.v13745_0_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v13745_0_ce0),.v13745_0_q0(v13745_0_q0),.v13745_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v13745_1_address0),.v13745_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v13745_1_ce0),.v13745_1_q0(v13745_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118 dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready),.v176_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_address0),.v176_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_ce0),.v176_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_we0),.v176_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_d0),.v176_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_address0),.v176_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_ce0),.v176_1_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_we0),.v176_1_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_d0),.v172(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v172),.v13693_0_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v13693_0_address0),.v13693_0_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v13693_0_ce0),.v13693_0_q0(v13693_0_q0),.v13693_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v13693_1_address0),.v13693_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v13693_1_ce0),.v13693_1_q0(v13693_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119 dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready),.v172(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v172),.v175_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_address0),.v175_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_ce0),.v175_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_we0),.v175_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_d0),.v175_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_address0),.v175_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_ce0),.v175_1_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_we0),.v175_1_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_d0),.v167_0_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_0_address0),.v167_0_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_0_ce0),.v167_0_q0(v167_0_q0),.v167_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_1_address0),.v167_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_1_ce0),.v167_1_q0(v167_1_q0),.v167_2_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_2_address0),.v167_2_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_2_ce0),.v167_2_q0(v167_2_q0),.v167_3_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_3_address0),.v167_3_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_3_ce0),.v167_3_q0(v167_3_q0),.v179_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_address0),.v179_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_ce0),.v179_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_we0),.v179_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_d0),.v179_address1(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_address1),.v179_ce1(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_ce1),.v179_q1(v179_i_q1),.v179_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_address0),.v179_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_ce0),.v179_1_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_we0),.v179_1_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_d0),.v179_1_address1(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_address1),.v179_1_ce1(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_ce1),.v179_1_q1(v179_1_i_q1),.v178_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v178_1_address0),.v178_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v178_1_ce0),.v178_1_q0(v178_1_t_q0),.v177_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v177_1_address0),.v177_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v177_1_ce0),.v177_1_q0(v177_1_t_q0),.v178_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v178_address0),.v178_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v178_ce0),.v178_q0(v178_t_q0),.v177_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v177_address0),.v177_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v177_ce0),.v177_q0(v177_t_q0),.v176_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v176_1_address0),.v176_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v176_1_ce0),.v176_1_q0(v176_1_t_q0),.v176_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v176_address0),.v176_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v176_ce0),.v176_q0(v176_t_q0),.ap_return_0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_return_0),.ap_return_1(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_return_1));
forward_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120 dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_ready),.v13744_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_1_address0),.v13744_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_1_ce0),.v13744_1_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_1_we0),.v13744_1_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_1_d0),.v13744_0_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_0_address0),.v13744_0_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_0_ce0),.v13744_0_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_0_we0),.v13744_0_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_0_d0),.v179_1_i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v179_1_i_address0),.v179_1_i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v179_1_i_ce0),.v179_1_i_q0(v179_1_t_q0),.p_read(v172_c1_channel_dout),.v179_i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v179_i_address0),.v179_i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v179_i_ce0),.v179_i_q0(v179_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121 dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_ready),.v13742_1_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_1_address0),.v13742_1_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_1_ce0),.v13742_1_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_1_we0),.v13742_1_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_1_d0),.v13742_0_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_0_address0),.v13742_0_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_0_ce0),.v13742_0_we0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_0_we0),.v13742_0_d0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_0_d0),.v175_1_i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v175_1_i_address0),.v175_1_i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v175_1_i_ce0),.v175_1_i_q0(v175_1_t_q0),.p_read(v172_c_channel_dout),.v175_i_address0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v175_i_address0),.v175_i_ce0(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v175_i_ce0),.v175_i_q0(v175_t_q0));
forward_fifo_w11_d2_S_x v172_c_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_return_0),.if_full_n(v172_c_channel_full_n),.if_write(ap_channel_done_v172_c_channel),.if_dout(v172_c_channel_dout),.if_num_data_valid(v172_c_channel_num_data_valid),.if_fifo_cap(v172_c_channel_fifo_cap),.if_empty_n(v172_c_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_ready));
forward_fifo_w11_d2_S_x v172_c1_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_return_1),.if_full_n(v172_c1_channel_full_n),.if_write(ap_channel_done_v172_c1_channel),.if_dout(v172_c1_channel_dout),.if_num_data_valid(v172_c1_channel_num_data_valid),.if_fifo_cap(v172_c1_channel_fifo_cap),.if_empty_n(v172_c1_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v172_c1_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v172_c1_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v172_c1_channel <= ap_sync_channel_write_v172_c1_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v172_c_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v172_c_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v172_c_channel <= ap_sync_channel_write_v172_c_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v175 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v175 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v175 <= ap_sync_channel_write_v175;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v175_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v175_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v175_1 <= ap_sync_channel_write_v175_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v176 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_done & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v176 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v176 <= ap_sync_channel_write_v176;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v176_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_done & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v176_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v176_1 <= ap_sync_channel_write_v176_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v177 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_done & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v177 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v177 <= ap_sync_channel_write_v177;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v177_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_done & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v177_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v177_1 <= ap_sync_channel_write_v177_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v178 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_done & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v178 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v178 <= ap_sync_channel_write_v178;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v178_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_done & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v178_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v178_1 <= ap_sync_channel_write_v178_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v179 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v179 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v179 <= ap_sync_channel_write_v179;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v179_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v179_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v179_1 <= ap_sync_channel_write_v179_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v172_c1_channel = ((ap_sync_reg_channel_write_v172_c1_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done);
assign ap_channel_done_v172_c_channel = ((ap_sync_reg_channel_write_v172_c_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done);
assign ap_channel_done_v175 = ((ap_sync_reg_channel_write_v175 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done);
assign ap_channel_done_v175_1 = ((ap_sync_reg_channel_write_v175_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done);
assign ap_channel_done_v176 = ((ap_sync_reg_channel_write_v176 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_done);
assign ap_channel_done_v176_1 = ((ap_sync_reg_channel_write_v176_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_done);
assign ap_channel_done_v177 = ((ap_sync_reg_channel_write_v177 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_done);
assign ap_channel_done_v177_1 = ((ap_sync_reg_channel_write_v177_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_done);
assign ap_channel_done_v178 = ((ap_sync_reg_channel_write_v178 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_done);
assign ap_channel_done_v178_1 = ((ap_sync_reg_channel_write_v178_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_done);
assign ap_channel_done_v179 = ((ap_sync_reg_channel_write_v179 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done);
assign ap_channel_done_v179_1 = ((ap_sync_reg_channel_write_v179_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_done);
assign ap_done = ap_sync_done;
assign ap_idle = ((v172_c1_channel_empty_n ^ 1'b1) & (v172_c_channel_empty_n ^ 1'b1) & (v179_1_t_empty_n ^ 1'b1) & (v179_t_empty_n ^ 1'b1) & (v175_1_t_empty_n ^ 1'b1) & (v175_t_empty_n ^ 1'b1) & (v176_1_t_empty_n ^ 1'b1) & (v176_t_empty_n ^ 1'b1) & (v177_1_t_empty_n ^ 1'b1) & (v177_t_empty_n ^ 1'b1) & (v178_1_t_empty_n ^ 1'b1) & (v178_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v172_c1_channel = ((v172_c1_channel_full_n & ap_channel_done_v172_c1_channel) | ap_sync_reg_channel_write_v172_c1_channel);
assign ap_sync_channel_write_v172_c_channel = ((v172_c_channel_full_n & ap_channel_done_v172_c_channel) | ap_sync_reg_channel_write_v172_c_channel);
assign ap_sync_channel_write_v175 = ((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_full_n & ap_channel_done_v175) | ap_sync_reg_channel_write_v175);
assign ap_sync_channel_write_v175_1 = ((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_full_n & ap_channel_done_v175_1) | ap_sync_reg_channel_write_v175_1);
assign ap_sync_channel_write_v176 = ((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_full_n & ap_channel_done_v176) | ap_sync_reg_channel_write_v176);
assign ap_sync_channel_write_v176_1 = ((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_full_n & ap_channel_done_v176_1) | ap_sync_reg_channel_write_v176_1);
assign ap_sync_channel_write_v177 = ((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_full_n & ap_channel_done_v177) | ap_sync_reg_channel_write_v177);
assign ap_sync_channel_write_v177_1 = ((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_full_n & ap_channel_done_v177_1) | ap_sync_reg_channel_write_v177_1);
assign ap_sync_channel_write_v178 = ((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_full_n & ap_channel_done_v178) | ap_sync_reg_channel_write_v178);
assign ap_sync_channel_write_v178_1 = ((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_full_n & ap_channel_done_v178_1) | ap_sync_reg_channel_write_v178_1);
assign ap_sync_channel_write_v179 = ((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_full_n & ap_channel_done_v179) | ap_sync_reg_channel_write_v179);
assign ap_sync_channel_write_v179_1 = ((dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_full_n & ap_channel_done_v179_1) | ap_sync_reg_channel_write_v179_1);
assign ap_sync_continue = (ap_sync_done & ap_continue);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready);
assign ap_sync_done = (dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_done & dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_done);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_continue = ap_sync_continue;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_ap_start = (v175_t_empty_n & v175_1_t_empty_n & v172_c_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_continue = ap_sync_continue;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_ap_start = (v179_t_empty_n & v179_1_t_empty_n & v172_c1_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_continue = (ap_sync_channel_write_v179_1 & ap_sync_channel_write_v179 & ap_sync_channel_write_v175_1 & ap_sync_channel_write_v175 & ap_sync_channel_write_v172_c_channel & ap_sync_channel_write_v172_c1_channel);
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_start = (v178_t_empty_n & v178_1_t_empty_n & v177_t_empty_n & v177_1_t_empty_n & v176_t_empty_n & v176_1_t_empty_n & (ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_0_write = 1'b0;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_1_write = 1'b0;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_2_write = 1'b0;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_3_write = 1'b0;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v172 = {{v172[(10 - 11'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_1_full_n = v175_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v175_full_n = v175_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_1_full_n = v179_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v179_full_n = v179_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_continue = (ap_sync_channel_write_v176_1 & ap_sync_channel_write_v176);
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v172 = {{v172[(7 - 11'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_1_full_n = v176_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v176_full_n = v176_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_continue = (ap_sync_channel_write_v177_1 & ap_sync_channel_write_v177);
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v172 = {{v172[(7 - 11'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_1_full_n = v177_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v177_full_n = v177_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_continue = (ap_sync_channel_write_v178_1 & ap_sync_channel_write_v178);
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v172 = {{v172[(10 - 11'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_1_full_n = v178_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v178_full_n = v178_i_full_n;
assign v13693_0_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v13693_0_address0;
assign v13693_0_address1 = 11'd0;
assign v13693_0_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v13693_0_ce0;
assign v13693_0_ce1 = 1'b0;
assign v13693_0_d0 = 8'd0;
assign v13693_0_d1 = 8'd0;
assign v13693_0_we0 = 1'b0;
assign v13693_0_we1 = 1'b0;
assign v13693_1_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v13693_1_address0;
assign v13693_1_address1 = 11'd0;
assign v13693_1_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_395_1_proc118_U0_v13693_1_ce0;
assign v13693_1_ce1 = 1'b0;
assign v13693_1_d0 = 8'd0;
assign v13693_1_d1 = 8'd0;
assign v13693_1_we0 = 1'b0;
assign v13693_1_we1 = 1'b0;
assign v13695_0_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v13695_0_address0;
assign v13695_0_address1 = 19'd0;
assign v13695_0_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v13695_0_ce0;
assign v13695_0_ce1 = 1'b0;
assign v13695_0_d0 = 8'd0;
assign v13695_0_d1 = 8'd0;
assign v13695_0_we0 = 1'b0;
assign v13695_0_we1 = 1'b0;
assign v13695_1_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v13695_1_address0;
assign v13695_1_address1 = 19'd0;
assign v13695_1_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_436_1_proc11622_U0_v13695_1_ce0;
assign v13695_1_ce1 = 1'b0;
assign v13695_1_d0 = 8'd0;
assign v13695_1_d1 = 8'd0;
assign v13695_1_we0 = 1'b0;
assign v13695_1_we1 = 1'b0;
assign v13742_0_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_0_address0;
assign v13742_0_address1 = 11'd0;
assign v13742_0_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_0_ce0;
assign v13742_0_ce1 = 1'b0;
assign v13742_0_d0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_0_d0;
assign v13742_0_d1 = 8'd0;
assign v13742_0_we0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_0_we0;
assign v13742_0_we1 = 1'b0;
assign v13742_1_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_1_address0;
assign v13742_1_address1 = 11'd0;
assign v13742_1_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_1_ce0;
assign v13742_1_ce1 = 1'b0;
assign v13742_1_d0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_1_d0;
assign v13742_1_d1 = 8'd0;
assign v13742_1_we0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_278_1_proc121_U0_v13742_1_we0;
assign v13742_1_we1 = 1'b0;
assign v13744_0_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_0_address0;
assign v13744_0_address1 = 11'd0;
assign v13744_0_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_0_ce0;
assign v13744_0_ce1 = 1'b0;
assign v13744_0_d0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_0_d0;
assign v13744_0_d1 = 8'd0;
assign v13744_0_we0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_0_we0;
assign v13744_0_we1 = 1'b0;
assign v13744_1_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_1_address0;
assign v13744_1_address1 = 11'd0;
assign v13744_1_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_1_ce0;
assign v13744_1_ce1 = 1'b0;
assign v13744_1_d0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_1_d0;
assign v13744_1_d1 = 8'd0;
assign v13744_1_we0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_298_1_proc120_U0_v13744_1_we0;
assign v13744_1_we1 = 1'b0;
assign v13745_0_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v13745_0_address0;
assign v13745_0_address1 = 11'd0;
assign v13745_0_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v13745_0_ce0;
assign v13745_0_ce1 = 1'b0;
assign v13745_0_d0 = 8'd0;
assign v13745_0_d1 = 8'd0;
assign v13745_0_we0 = 1'b0;
assign v13745_0_we1 = 1'b0;
assign v13745_1_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v13745_1_address0;
assign v13745_1_address1 = 11'd0;
assign v13745_1_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_415_1_proc117_U0_v13745_1_ce0;
assign v13745_1_ce1 = 1'b0;
assign v13745_1_d0 = 8'd0;
assign v13745_1_d1 = 8'd0;
assign v13745_1_we0 = 1'b0;
assign v13745_1_we1 = 1'b0;
assign v167_0_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_0_address0;
assign v167_0_address1 = 6'd0;
assign v167_0_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_0_ce0;
assign v167_0_ce1 = 1'b0;
assign v167_0_d0 = 8'd0;
assign v167_0_d1 = 8'd0;
assign v167_0_read = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_0_write;
assign v167_0_we0 = 1'b0;
assign v167_0_we1 = 1'b0;
assign v167_1_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_1_address0;
assign v167_1_address1 = 6'd0;
assign v167_1_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_1_ce0;
assign v167_1_ce1 = 1'b0;
assign v167_1_d0 = 8'd0;
assign v167_1_d1 = 8'd0;
assign v167_1_read = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_1_write;
assign v167_1_we0 = 1'b0;
assign v167_1_we1 = 1'b0;
assign v167_2_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_2_address0;
assign v167_2_address1 = 6'd0;
assign v167_2_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_2_ce0;
assign v167_2_ce1 = 1'b0;
assign v167_2_d0 = 8'd0;
assign v167_2_d1 = 8'd0;
assign v167_2_read = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_2_write;
assign v167_2_we0 = 1'b0;
assign v167_2_we1 = 1'b0;
assign v167_3_address0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_3_address0;
assign v167_3_address1 = 6'd0;
assign v167_3_ce0 = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_3_ce0;
assign v167_3_ce1 = 1'b0;
assign v167_3_d0 = 8'd0;
assign v167_3_d1 = 8'd0;
assign v167_3_read = dataflow_in_loop_VITIS_LOOP_469_1_Loop_VITIS_LOOP_335_1_proc119_U0_v167_3_write;
assign v167_3_we0 = 1'b0;
assign v167_3_we1 = 1'b0;
endmodule 