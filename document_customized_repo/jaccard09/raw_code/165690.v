module forward_dataflow_in_loop_VITIS_LOOP_384_1 (ap_clk,ap_rst,v145,v16221_1_address0,v16221_1_ce0,v16221_1_d0,v16221_1_q0,v16221_1_we0,v16221_1_address1,v16221_1_ce1,v16221_1_d1,v16221_1_q1,v16221_1_we1,v16221_0_address0,v16221_0_ce0,v16221_0_d0,v16221_0_q0,v16221_0_we0,v16221_0_address1,v16221_0_ce1,v16221_0_d1,v16221_0_q1,v16221_0_we1,v16219_1_address0,v16219_1_ce0,v16219_1_d0,v16219_1_q0,v16219_1_we0,v16219_1_address1,v16219_1_ce1,v16219_1_d1,v16219_1_q1,v16219_1_we1,v16219_0_address0,v16219_0_ce0,v16219_0_d0,v16219_0_q0,v16219_0_we0,v16219_0_address1,v16219_0_ce1,v16219_0_d1,v16219_0_q1,v16219_0_we1,v16159_0_address0,v16159_0_ce0,v16159_0_d0,v16159_0_q0,v16159_0_we0,v16159_0_address1,v16159_0_ce1,v16159_0_d1,v16159_0_q1,v16159_0_we1,v16159_1_address0,v16159_1_ce0,v16159_1_d0,v16159_1_q0,v16159_1_we0,v16159_1_address1,v16159_1_ce1,v16159_1_d1,v16159_1_q1,v16159_1_we1,v16222_0_address0,v16222_0_ce0,v16222_0_d0,v16222_0_q0,v16222_0_we0,v16222_0_address1,v16222_0_ce1,v16222_0_d1,v16222_0_q1,v16222_0_we1,v16222_1_address0,v16222_1_ce0,v16222_1_d0,v16222_1_q0,v16222_1_we0,v16222_1_address1,v16222_1_ce1,v16222_1_d1,v16222_1_q1,v16222_1_we1,v16160_0_address0,v16160_0_ce0,v16160_0_d0,v16160_0_q0,v16160_0_we0,v16160_0_address1,v16160_0_ce1,v16160_0_d1,v16160_0_q1,v16160_0_we1,v16160_1_address0,v16160_1_ce0,v16160_1_d0,v16160_1_q0,v16160_1_we0,v16160_1_address1,v16160_1_ce1,v16160_1_d1,v16160_1_q1,v16160_1_we1,v16218_address0,v16218_ce0,v16218_d0,v16218_q0,v16218_we0,v16218_address1,v16218_ce1,v16218_d1,v16218_q1,v16218_we1,v145_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [12:0] v145;
output  [9:0] v16221_1_address0;
output   v16221_1_ce0;
output  [7:0] v16221_1_d0;
input  [7:0] v16221_1_q0;
output   v16221_1_we0;
output  [9:0] v16221_1_address1;
output   v16221_1_ce1;
output  [7:0] v16221_1_d1;
input  [7:0] v16221_1_q1;
output   v16221_1_we1;
output  [9:0] v16221_0_address0;
output   v16221_0_ce0;
output  [7:0] v16221_0_d0;
input  [7:0] v16221_0_q0;
output   v16221_0_we0;
output  [9:0] v16221_0_address1;
output   v16221_0_ce1;
output  [7:0] v16221_0_d1;
input  [7:0] v16221_0_q1;
output   v16221_0_we1;
output  [9:0] v16219_1_address0;
output   v16219_1_ce0;
output  [7:0] v16219_1_d0;
input  [7:0] v16219_1_q0;
output   v16219_1_we0;
output  [9:0] v16219_1_address1;
output   v16219_1_ce1;
output  [7:0] v16219_1_d1;
input  [7:0] v16219_1_q1;
output   v16219_1_we1;
output  [9:0] v16219_0_address0;
output   v16219_0_ce0;
output  [7:0] v16219_0_d0;
input  [7:0] v16219_0_q0;
output   v16219_0_we0;
output  [9:0] v16219_0_address1;
output   v16219_0_ce1;
output  [7:0] v16219_0_d1;
input  [7:0] v16219_0_q1;
output   v16219_0_we1;
output  [9:0] v16159_0_address0;
output   v16159_0_ce0;
output  [7:0] v16159_0_d0;
input  [7:0] v16159_0_q0;
output   v16159_0_we0;
output  [9:0] v16159_0_address1;
output   v16159_0_ce1;
output  [7:0] v16159_0_d1;
input  [7:0] v16159_0_q1;
output   v16159_0_we1;
output  [9:0] v16159_1_address0;
output   v16159_1_ce0;
output  [7:0] v16159_1_d0;
input  [7:0] v16159_1_q0;
output   v16159_1_we0;
output  [9:0] v16159_1_address1;
output   v16159_1_ce1;
output  [7:0] v16159_1_d1;
input  [7:0] v16159_1_q1;
output   v16159_1_we1;
output  [9:0] v16222_0_address0;
output   v16222_0_ce0;
output  [7:0] v16222_0_d0;
input  [7:0] v16222_0_q0;
output   v16222_0_we0;
output  [9:0] v16222_0_address1;
output   v16222_0_ce1;
output  [7:0] v16222_0_d1;
input  [7:0] v16222_0_q1;
output   v16222_0_we1;
output  [9:0] v16222_1_address0;
output   v16222_1_ce0;
output  [7:0] v16222_1_d0;
input  [7:0] v16222_1_q0;
output   v16222_1_we0;
output  [9:0] v16222_1_address1;
output   v16222_1_ce1;
output  [7:0] v16222_1_d1;
input  [7:0] v16222_1_q1;
output   v16222_1_we1;
output  [20:0] v16160_0_address0;
output   v16160_0_ce0;
output  [7:0] v16160_0_d0;
input  [7:0] v16160_0_q0;
output   v16160_0_we0;
output  [20:0] v16160_0_address1;
output   v16160_0_ce1;
output  [7:0] v16160_0_d1;
input  [7:0] v16160_0_q1;
output   v16160_0_we1;
output  [20:0] v16160_1_address0;
output   v16160_1_ce0;
output  [7:0] v16160_1_d0;
input  [7:0] v16160_1_q0;
output   v16160_1_we0;
output  [20:0] v16160_1_address1;
output   v16160_1_ce1;
output  [7:0] v16160_1_d1;
input  [7:0] v16160_1_q1;
output   v16160_1_we1;
output  [10:0] v16218_address0;
output   v16218_ce0;
output  [7:0] v16218_d0;
input  [7:0] v16218_q0;
output   v16218_we0;
output  [10:0] v16218_address1;
output   v16218_ce1;
output  [7:0] v16218_d1;
input  [7:0] v16218_q1;
output   v16218_we1;
input   v145_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v153_i_q0;
wire   [7:0] v153_i_q1;
wire   [7:0] v153_t_q0;
wire   [7:0] v153_t_q1;
wire   [7:0] v153_1_i_q0;
wire   [7:0] v153_1_i_q1;
wire   [7:0] v153_1_t_q0;
wire   [7:0] v153_1_t_q1;
wire   [7:0] v152_i_q0;
wire   [7:0] v152_t_q0;
wire   [7:0] v151_i_q0;
wire   [7:0] v151_t_q0;
wire   [7:0] v151_1_i_q0;
wire   [7:0] v151_1_t_q0;
wire   [7:0] v150_i_q0;
wire   [7:0] v150_t_q0;
wire   [7:0] v150_1_i_q0;
wire   [7:0] v150_1_t_q0;
wire   [7:0] v149_i_q0;
wire   [7:0] v149_t_q0;
wire   [7:0] v149_1_i_q0;
wire   [7:0] v149_1_t_q0;
wire   [7:0] v148_i_q0;
wire   [7:0] v148_t_q0;
wire   [7:0] v148_1_i_q0;
wire   [7:0] v148_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v145;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v16218_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v16218_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_return;
wire    ap_channel_done_tmp_141;
wire    tmp_141_full_n;
reg    ap_sync_reg_channel_write_tmp_141;
wire    ap_sync_channel_write_tmp_141;
wire    ap_channel_done_v152;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_full_n;
reg    ap_sync_reg_channel_write_v152;
wire    ap_sync_channel_write_v152;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v145;
wire   [20:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v16160_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v16160_0_ce0;
wire   [20:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v16160_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v16160_1_ce0;
wire    ap_channel_done_v151_1;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_full_n;
reg    ap_sync_reg_channel_write_v151_1;
wire    ap_sync_channel_write_v151_1;
wire    ap_channel_done_v151;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_full_n;
reg    ap_sync_reg_channel_write_v151;
wire    ap_sync_channel_write_v151;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_d0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v145;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v16222_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v16222_0_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v16222_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v16222_1_ce0;
wire    ap_channel_done_v150_1;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_full_n;
reg    ap_sync_reg_channel_write_v150_1;
wire    ap_sync_channel_write_v150_1;
wire    ap_channel_done_v150;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_full_n;
reg    ap_sync_reg_channel_write_v150;
wire    ap_sync_channel_write_v150;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_d0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v145;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v16159_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v16159_0_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v16159_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v16159_1_ce0;
wire    ap_channel_done_v149_1;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_full_n;
reg    ap_sync_reg_channel_write_v149_1;
wire    ap_sync_channel_write_v149_1;
wire    ap_channel_done_v149;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_full_n;
reg    ap_sync_reg_channel_write_v149;
wire    ap_sync_channel_write_v149;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_d0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v152_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v152_i_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_address1;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_ce1;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_address1;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_ce1;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v151_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v151_1_i_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v150_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v150_1_i_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v151_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v151_i_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v150_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v150_i_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v149_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v149_1_i_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v149_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v149_i_ce0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_return_0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_return_1;
wire    ap_channel_done_v145_c1_channel;
wire    v145_c1_channel_full_n;
reg    ap_sync_reg_channel_write_v145_c1_channel;
wire    ap_sync_channel_write_v145_c1_channel;
wire    ap_channel_done_v145_c_channel;
wire    v145_c_channel_full_n;
reg    ap_sync_reg_channel_write_v145_c_channel;
wire    ap_sync_channel_write_v145_c_channel;
wire    ap_channel_done_v153_1;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_full_n;
reg    ap_sync_reg_channel_write_v153_1;
wire    ap_sync_channel_write_v153_1;
wire    ap_channel_done_v153;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_full_n;
reg    ap_sync_reg_channel_write_v153;
wire    ap_sync_channel_write_v153;
wire    ap_channel_done_v148_1;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_full_n;
reg    ap_sync_reg_channel_write_v148_1;
wire    ap_sync_channel_write_v148_1;
wire    ap_channel_done_v148;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_full_n;
reg    ap_sync_reg_channel_write_v148;
wire    ap_sync_channel_write_v148;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_1_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_0_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v153_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v153_1_i_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v153_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v153_i_ce0;
wire    ap_sync_continue;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_1_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_0_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v148_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v148_1_i_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v148_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v148_i_ce0;
wire    v152_i_full_n;
wire    v152_t_empty_n;
wire    v151_i_full_n;
wire    v151_t_empty_n;
wire    v151_1_i_full_n;
wire    v151_1_t_empty_n;
wire    v150_i_full_n;
wire    v150_t_empty_n;
wire    v150_1_i_full_n;
wire    v150_1_t_empty_n;
wire    v149_i_full_n;
wire    v149_t_empty_n;
wire    v149_1_i_full_n;
wire    v149_1_t_empty_n;
wire    v148_i_full_n;
wire    v148_t_empty_n;
wire    v148_1_i_full_n;
wire    v148_1_t_empty_n;
wire    v153_i_full_n;
wire    v153_t_empty_n;
wire    v153_1_i_full_n;
wire    v153_1_t_empty_n;
wire   [11:0] tmp_141_dout;
wire   [2:0] tmp_141_num_data_valid;
wire   [2:0] tmp_141_fifo_cap;
wire    tmp_141_empty_n;
wire   [12:0] v145_c_channel_dout;
wire   [2:0] v145_c_channel_num_data_valid;
wire   [2:0] v145_c_channel_fifo_cap;
wire    v145_c_channel_empty_n;
wire   [12:0] v145_c1_channel_dout;
wire   [2:0] v145_c1_channel_num_data_valid;
wire   [2:0] v145_c1_channel_fifo_cap;
wire    v145_c1_channel_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_tmp_141 = 1'b0;
#0 ap_sync_reg_channel_write_v152 = 1'b0;
#0 ap_sync_reg_channel_write_v151_1 = 1'b0;
#0 ap_sync_reg_channel_write_v151 = 1'b0;
#0 ap_sync_reg_channel_write_v150_1 = 1'b0;
#0 ap_sync_reg_channel_write_v150 = 1'b0;
#0 ap_sync_reg_channel_write_v149_1 = 1'b0;
#0 ap_sync_reg_channel_write_v149 = 1'b0;
#0 ap_sync_reg_channel_write_v145_c1_channel = 1'b0;
#0 ap_sync_reg_channel_write_v145_c_channel = 1'b0;
#0 ap_sync_reg_channel_write_v153_1 = 1'b0;
#0 ap_sync_reg_channel_write_v153 = 1'b0;
#0 ap_sync_reg_channel_write_v148_1 = 1'b0;
#0 ap_sync_reg_channel_write_v148 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_384_1_v153_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v153_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_d0),.i_q0(v153_i_q0),.i_address1(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_address1),.i_ce1(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_ce1),.i_q1(v153_i_q1),.t_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v153_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v153_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v153_t_q0),.t_address1(4'd0),.t_ce1(1'b0),.t_q1(v153_t_q1),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v153_i_full_n),.i_write(ap_channel_done_v153),.t_empty_n(v153_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_384_1_v153_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v153_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_d0),.i_q0(v153_1_i_q0),.i_address1(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_address1),.i_ce1(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_ce1),.i_q1(v153_1_i_q1),.t_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v153_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v153_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v153_1_t_q0),.t_address1(4'd0),.t_ce1(1'b0),.t_q1(v153_1_t_q1),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v153_1_i_full_n),.i_write(ap_channel_done_v153_1),.t_empty_n(v153_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_20484_1_v15874_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v152_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_d0),.i_q0(v152_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v152_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v152_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v152_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v152_i_full_n),.i_write(ap_channel_done_v152),.t_empty_n(v152_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_20484_1_v15875_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 512 ),.AddressWidth( 9 ))
v151_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_d0),.i_q0(v151_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v151_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v151_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v151_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v151_i_full_n),.i_write(ap_channel_done_v151),.t_empty_n(v151_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_20484_1_v15875_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 512 ),.AddressWidth( 9 ))
v151_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_d0),.i_q0(v151_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v151_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v151_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v151_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v151_1_i_full_n),.i_write(ap_channel_done_v151_1),.t_empty_n(v151_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6208_1_v4856_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v150_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_d0),.i_q0(v150_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v150_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v150_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v150_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v150_i_full_n),.i_write(ap_channel_done_v150),.t_empty_n(v150_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6208_1_v4856_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v150_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_d0),.i_q0(v150_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v150_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v150_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v150_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v150_1_i_full_n),.i_write(ap_channel_done_v150_1),.t_empty_n(v150_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6208_1_v4856_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v149_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_d0),.i_q0(v149_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v149_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v149_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v149_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v149_i_full_n),.i_write(ap_channel_done_v149),.t_empty_n(v149_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6208_1_v4856_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v149_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_d0),.i_q0(v149_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v149_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v149_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v149_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v149_1_i_full_n),.i_write(ap_channel_done_v149_1),.t_empty_n(v149_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6208_1_v4856_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v148_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_d0),.i_q0(v148_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v148_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v148_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v148_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v148_i_full_n),.i_write(ap_channel_done_v148),.t_empty_n(v148_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6208_1_v4856_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v148_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_d0),.i_q0(v148_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v148_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v148_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v148_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v148_1_i_full_n),.i_write(ap_channel_done_v148_1),.t_empty_n(v148_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137 dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready),.v145(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v145),.v16218_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v16218_address0),.v16218_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v16218_ce0),.v16218_q0(v16218_q0),.v152_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_address0),.v152_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_ce0),.v152_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_we0),.v152_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825 dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready),.v151_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_address0),.v151_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_ce0),.v151_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_we0),.v151_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_d0),.v151_1_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_address0),.v151_1_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_ce0),.v151_1_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_we0),.v151_1_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_d0),.v145(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v145),.v16160_0_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v16160_0_address0),.v16160_0_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v16160_0_ce0),.v16160_0_q0(v16160_0_q0),.v16160_1_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v16160_1_address0),.v16160_1_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v16160_1_ce0),.v16160_1_q0(v16160_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139 dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready),.v150_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_address0),.v150_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_ce0),.v150_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_we0),.v150_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_d0),.v150_1_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_address0),.v150_1_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_ce0),.v150_1_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_we0),.v150_1_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_d0),.v145(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v145),.v16222_0_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v16222_0_address0),.v16222_0_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v16222_0_ce0),.v16222_0_q0(v16222_0_q0),.v16222_1_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v16222_1_address0),.v16222_1_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v16222_1_ce0),.v16222_1_q0(v16222_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140 dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready),.v149_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_address0),.v149_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_ce0),.v149_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_we0),.v149_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_d0),.v149_1_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_address0),.v149_1_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_ce0),.v149_1_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_we0),.v149_1_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_d0),.v145(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v145),.v16159_0_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v16159_0_address0),.v16159_0_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v16159_0_ce0),.v16159_0_q0(v16159_0_q0),.v16159_1_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v16159_1_address0),.v16159_1_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v16159_1_ce0),.v16159_1_q0(v16159_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141 dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_ready),.p_read(tmp_141_dout),.v148_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_address0),.v148_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_ce0),.v148_i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_we0),.v148_i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_d0),.v148_1_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_address0),.v148_1_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_ce0),.v148_1_i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_we0),.v148_1_i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_d0),.v152_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v152_i_address0),.v152_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v152_i_ce0),.v152_i_q0(v152_t_q0),.v153_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_address0),.v153_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_ce0),.v153_i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_we0),.v153_i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_d0),.v153_i_address1(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_address1),.v153_i_ce1(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_ce1),.v153_i_q1(v153_i_q1),.v153_1_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_address0),.v153_1_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_ce0),.v153_1_i_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_we0),.v153_1_i_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_d0),.v153_1_i_address1(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_address1),.v153_1_i_ce1(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_ce1),.v153_1_i_q1(v153_1_i_q1),.v151_1_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v151_1_i_address0),.v151_1_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v151_1_i_ce0),.v151_1_i_q0(v151_1_t_q0),.v150_1_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v150_1_i_address0),.v150_1_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v150_1_i_ce0),.v150_1_i_q0(v150_1_t_q0),.v151_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v151_i_address0),.v151_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v151_i_ce0),.v151_i_q0(v151_t_q0),.v150_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v150_i_address0),.v150_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v150_i_ce0),.v150_i_q0(v150_t_q0),.v149_1_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v149_1_i_address0),.v149_1_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v149_1_i_ce0),.v149_1_i_q0(v149_1_t_q0),.v149_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v149_i_address0),.v149_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v149_i_ce0),.v149_i_q0(v149_t_q0),.ap_return_0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_return_0),.ap_return_1(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_return_1));
forward_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142 dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_ready),.v16221_1_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_1_address0),.v16221_1_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_1_ce0),.v16221_1_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_1_we0),.v16221_1_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_1_d0),.v16221_0_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_0_address0),.v16221_0_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_0_ce0),.v16221_0_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_0_we0),.v16221_0_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_0_d0),.v153_1_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v153_1_i_address0),.v153_1_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v153_1_i_ce0),.v153_1_i_q0(v153_1_t_q0),.p_read(v145_c1_channel_dout),.v153_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v153_i_address0),.v153_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v153_i_ce0),.v153_i_q0(v153_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143 dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_ready),.v16219_1_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_1_address0),.v16219_1_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_1_ce0),.v16219_1_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_1_we0),.v16219_1_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_1_d0),.v16219_0_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_0_address0),.v16219_0_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_0_ce0),.v16219_0_we0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_0_we0),.v16219_0_d0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_0_d0),.v148_1_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v148_1_i_address0),.v148_1_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v148_1_i_ce0),.v148_1_i_q0(v148_1_t_q0),.p_read(v145_c_channel_dout),.v148_i_address0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v148_i_address0),.v148_i_ce0(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v148_i_ce0),.v148_i_q0(v148_t_q0));
forward_fifo_w12_d2_S_x1 tmp_141_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_return),.if_full_n(tmp_141_full_n),.if_write(ap_channel_done_tmp_141),.if_dout(tmp_141_dout),.if_num_data_valid(tmp_141_num_data_valid),.if_fifo_cap(tmp_141_fifo_cap),.if_empty_n(tmp_141_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_ready));
forward_fifo_w13_d2_S_x v145_c_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_return_0),.if_full_n(v145_c_channel_full_n),.if_write(ap_channel_done_v145_c_channel),.if_dout(v145_c_channel_dout),.if_num_data_valid(v145_c_channel_num_data_valid),.if_fifo_cap(v145_c_channel_fifo_cap),.if_empty_n(v145_c_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_ready));
forward_fifo_w13_d2_S_x v145_c1_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_return_1),.if_full_n(v145_c1_channel_full_n),.if_write(ap_channel_done_v145_c1_channel),.if_dout(v145_c1_channel_dout),.if_num_data_valid(v145_c1_channel_num_data_valid),.if_fifo_cap(v145_c1_channel_fifo_cap),.if_empty_n(v145_c1_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_tmp_141 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_tmp_141 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_tmp_141 <= ap_sync_channel_write_tmp_141;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v145_c1_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v145_c1_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v145_c1_channel <= ap_sync_channel_write_v145_c1_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v145_c_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v145_c_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v145_c_channel <= ap_sync_channel_write_v145_c_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v148 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v148 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v148 <= ap_sync_channel_write_v148;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v148_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v148_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v148_1 <= ap_sync_channel_write_v148_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v149 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v149 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v149 <= ap_sync_channel_write_v149;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v149_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v149_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v149_1 <= ap_sync_channel_write_v149_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v150 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v150 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v150 <= ap_sync_channel_write_v150;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v150_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v150_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v150_1 <= ap_sync_channel_write_v150_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v151 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v151 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v151 <= ap_sync_channel_write_v151;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v151_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v151_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v151_1 <= ap_sync_channel_write_v151_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v152 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v152 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v152 <= ap_sync_channel_write_v152;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v153 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v153 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v153 <= ap_sync_channel_write_v153;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v153_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v153_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v153_1 <= ap_sync_channel_write_v153_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready;
        end
    end
end
assign ap_channel_done_tmp_141 = ((ap_sync_reg_channel_write_tmp_141 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_done);
assign ap_channel_done_v145_c1_channel = ((ap_sync_reg_channel_write_v145_c1_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done);
assign ap_channel_done_v145_c_channel = ((ap_sync_reg_channel_write_v145_c_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done);
assign ap_channel_done_v148 = ((ap_sync_reg_channel_write_v148 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done);
assign ap_channel_done_v148_1 = ((ap_sync_reg_channel_write_v148_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done);
assign ap_channel_done_v149 = ((ap_sync_reg_channel_write_v149 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_done);
assign ap_channel_done_v149_1 = ((ap_sync_reg_channel_write_v149_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_done);
assign ap_channel_done_v150 = ((ap_sync_reg_channel_write_v150 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_done);
assign ap_channel_done_v150_1 = ((ap_sync_reg_channel_write_v150_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_done);
assign ap_channel_done_v151 = ((ap_sync_reg_channel_write_v151 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_done);
assign ap_channel_done_v151_1 = ((ap_sync_reg_channel_write_v151_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_done);
assign ap_channel_done_v152 = ((ap_sync_reg_channel_write_v152 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_done);
assign ap_channel_done_v153 = ((ap_sync_reg_channel_write_v153 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done);
assign ap_channel_done_v153_1 = ((ap_sync_reg_channel_write_v153_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_done);
assign ap_done = ap_sync_done;
assign ap_idle = ((v145_c1_channel_empty_n ^ 1'b1) & (v145_c_channel_empty_n ^ 1'b1) & (tmp_141_empty_n ^ 1'b1) & (v153_1_t_empty_n ^ 1'b1) & (v153_t_empty_n ^ 1'b1) & (v148_1_t_empty_n ^ 1'b1) & (v148_t_empty_n ^ 1'b1) & (v149_1_t_empty_n ^ 1'b1) & (v149_t_empty_n ^ 1'b1) & (v150_1_t_empty_n ^ 1'b1) & (v150_t_empty_n ^ 1'b1) & (v151_1_t_empty_n ^ 1'b1) & (v151_t_empty_n ^ 1'b1) & (v152_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_tmp_141 = ((tmp_141_full_n & ap_channel_done_tmp_141) | ap_sync_reg_channel_write_tmp_141);
assign ap_sync_channel_write_v145_c1_channel = ((v145_c1_channel_full_n & ap_channel_done_v145_c1_channel) | ap_sync_reg_channel_write_v145_c1_channel);
assign ap_sync_channel_write_v145_c_channel = ((v145_c_channel_full_n & ap_channel_done_v145_c_channel) | ap_sync_reg_channel_write_v145_c_channel);
assign ap_sync_channel_write_v148 = ((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_full_n & ap_channel_done_v148) | ap_sync_reg_channel_write_v148);
assign ap_sync_channel_write_v148_1 = ((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_full_n & ap_channel_done_v148_1) | ap_sync_reg_channel_write_v148_1);
assign ap_sync_channel_write_v149 = ((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_full_n & ap_channel_done_v149) | ap_sync_reg_channel_write_v149);
assign ap_sync_channel_write_v149_1 = ((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_full_n & ap_channel_done_v149_1) | ap_sync_reg_channel_write_v149_1);
assign ap_sync_channel_write_v150 = ((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_full_n & ap_channel_done_v150) | ap_sync_reg_channel_write_v150);
assign ap_sync_channel_write_v150_1 = ((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_full_n & ap_channel_done_v150_1) | ap_sync_reg_channel_write_v150_1);
assign ap_sync_channel_write_v151 = ((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_full_n & ap_channel_done_v151) | ap_sync_reg_channel_write_v151);
assign ap_sync_channel_write_v151_1 = ((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_full_n & ap_channel_done_v151_1) | ap_sync_reg_channel_write_v151_1);
assign ap_sync_channel_write_v152 = ((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_full_n & ap_channel_done_v152) | ap_sync_reg_channel_write_v152);
assign ap_sync_channel_write_v153 = ((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_full_n & ap_channel_done_v153) | ap_sync_reg_channel_write_v153);
assign ap_sync_channel_write_v153_1 = ((dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_full_n & ap_channel_done_v153_1) | ap_sync_reg_channel_write_v153_1);
assign ap_sync_continue = (ap_sync_done & ap_continue);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready);
assign ap_sync_done = (dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_done & dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_done);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_continue = ap_sync_continue;
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_ap_start = (v148_t_empty_n & v148_1_t_empty_n & v145_c_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_continue = ap_sync_continue;
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_ap_start = (v153_t_empty_n & v153_1_t_empty_n & v145_c1_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_continue = (ap_sync_channel_write_v153_1 & ap_sync_channel_write_v153 & ap_sync_channel_write_v148_1 & ap_sync_channel_write_v148 & ap_sync_channel_write_v145_c_channel & ap_sync_channel_write_v145_c1_channel);
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_ap_start = (v152_t_empty_n & v151_t_empty_n & v151_1_t_empty_n & v150_t_empty_n & v150_1_t_empty_n & v149_t_empty_n & v149_1_t_empty_n & tmp_141_empty_n);
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_1_i_full_n = v148_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v148_i_full_n = v148_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_1_i_full_n = v153_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_236_1_proc141_U0_v153_i_full_n = v153_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_continue = (ap_sync_channel_write_v149_1 & ap_sync_channel_write_v149);
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v145 = {{v145[(6 - 13'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_1_full_n = v149_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v149_full_n = v149_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_continue = (ap_sync_channel_write_v150_1 & ap_sync_channel_write_v150);
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v145 = {{v145[(6 - 13'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_1_full_n = v150_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v150_full_n = v150_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_continue = (ap_sync_channel_write_v151_1 & ap_sync_channel_write_v151);
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v145 = {{v145[(12 - 13'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_1_full_n = v151_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v151_full_n = v151_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_continue = (ap_sync_channel_write_v152 & ap_sync_channel_write_tmp_141);
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v145 = {{v145[(12 - 13'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v152_full_n = v152_i_full_n;
assign v16159_0_address0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v16159_0_address0;
assign v16159_0_address1 = 10'd0;
assign v16159_0_ce0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v16159_0_ce0;
assign v16159_0_ce1 = 1'b0;
assign v16159_0_d0 = 8'd0;
assign v16159_0_d1 = 8'd0;
assign v16159_0_we0 = 1'b0;
assign v16159_0_we1 = 1'b0;
assign v16159_1_address0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v16159_1_address0;
assign v16159_1_address1 = 10'd0;
assign v16159_1_ce0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_296_1_proc140_U0_v16159_1_ce0;
assign v16159_1_ce1 = 1'b0;
assign v16159_1_d0 = 8'd0;
assign v16159_1_d1 = 8'd0;
assign v16159_1_we0 = 1'b0;
assign v16159_1_we1 = 1'b0;
assign v16160_0_address0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v16160_0_address0;
assign v16160_0_address1 = 21'd0;
assign v16160_0_ce0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v16160_0_ce0;
assign v16160_0_ce1 = 1'b0;
assign v16160_0_d0 = 8'd0;
assign v16160_0_d1 = 8'd0;
assign v16160_0_we0 = 1'b0;
assign v16160_0_we1 = 1'b0;
assign v16160_1_address0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v16160_1_address0;
assign v16160_1_address1 = 21'd0;
assign v16160_1_ce0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_337_1_proc13825_U0_v16160_1_ce0;
assign v16160_1_ce1 = 1'b0;
assign v16160_1_d0 = 8'd0;
assign v16160_1_d1 = 8'd0;
assign v16160_1_we0 = 1'b0;
assign v16160_1_we1 = 1'b0;
assign v16218_address0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v16218_address0;
assign v16218_address1 = 11'd0;
assign v16218_ce0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_356_1_proc137_U0_v16218_ce0;
assign v16218_ce1 = 1'b0;
assign v16218_d0 = 8'd0;
assign v16218_d1 = 8'd0;
assign v16218_we0 = 1'b0;
assign v16218_we1 = 1'b0;
assign v16219_0_address0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_0_address0;
assign v16219_0_address1 = 10'd0;
assign v16219_0_ce0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_0_ce0;
assign v16219_0_ce1 = 1'b0;
assign v16219_0_d0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_0_d0;
assign v16219_0_d1 = 8'd0;
assign v16219_0_we0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_0_we0;
assign v16219_0_we1 = 1'b0;
assign v16219_1_address0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_1_address0;
assign v16219_1_address1 = 10'd0;
assign v16219_1_ce0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_1_ce0;
assign v16219_1_ce1 = 1'b0;
assign v16219_1_d0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_1_d0;
assign v16219_1_d1 = 8'd0;
assign v16219_1_we0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_180_1_proc143_U0_v16219_1_we0;
assign v16219_1_we1 = 1'b0;
assign v16221_0_address0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_0_address0;
assign v16221_0_address1 = 10'd0;
assign v16221_0_ce0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_0_ce0;
assign v16221_0_ce1 = 1'b0;
assign v16221_0_d0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_0_d0;
assign v16221_0_d1 = 8'd0;
assign v16221_0_we0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_0_we0;
assign v16221_0_we1 = 1'b0;
assign v16221_1_address0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_1_address0;
assign v16221_1_address1 = 10'd0;
assign v16221_1_ce0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_1_ce0;
assign v16221_1_ce1 = 1'b0;
assign v16221_1_d0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_1_d0;
assign v16221_1_d1 = 8'd0;
assign v16221_1_we0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_200_1_proc142_U0_v16221_1_we0;
assign v16221_1_we1 = 1'b0;
assign v16222_0_address0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v16222_0_address0;
assign v16222_0_address1 = 10'd0;
assign v16222_0_ce0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v16222_0_ce0;
assign v16222_0_ce1 = 1'b0;
assign v16222_0_d0 = 8'd0;
assign v16222_0_d1 = 8'd0;
assign v16222_0_we0 = 1'b0;
assign v16222_0_we1 = 1'b0;
assign v16222_1_address0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v16222_1_address0;
assign v16222_1_address1 = 10'd0;
assign v16222_1_ce0 = dataflow_in_loop_VITIS_LOOP_384_1_Loop_VITIS_LOOP_316_1_proc139_U0_v16222_1_ce0;
assign v16222_1_ce1 = 1'b0;
assign v16222_1_d0 = 8'd0;
assign v16222_1_d1 = 8'd0;
assign v16222_1_we0 = 1'b0;
assign v16222_1_we1 = 1'b0;
endmodule 