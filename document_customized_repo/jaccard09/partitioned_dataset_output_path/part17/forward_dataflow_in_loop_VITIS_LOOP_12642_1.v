
module forward_dataflow_in_loop_VITIS_LOOP_12642_1 (ap_clk,ap_rst,v8011,v9197_1_address0,v9197_1_ce0,v9197_1_d0,v9197_1_q0,v9197_1_we0,v9197_1_address1,v9197_1_ce1,v9197_1_d1,v9197_1_q1,v9197_1_we1,v9197_0_address0,v9197_0_ce0,v9197_0_d0,v9197_0_q0,v9197_0_we0,v9197_0_address1,v9197_0_ce1,v9197_0_d1,v9197_0_q1,v9197_0_we1,v9198_0_address0,v9198_0_ce0,v9198_0_d0,v9198_0_q0,v9198_0_we0,v9198_0_address1,v9198_0_ce1,v9198_0_d1,v9198_0_q1,v9198_0_we1,v9198_1_address0,v9198_1_ce0,v9198_1_d0,v9198_1_q0,v9198_1_we0,v9198_1_address1,v9198_1_ce1,v9198_1_d1,v9198_1_q1,v9198_1_we1,v9196_0_address0,v9196_0_ce0,v9196_0_d0,v9196_0_q0,v9196_0_we0,v9196_0_address1,v9196_0_ce1,v9196_0_d1,v9196_0_q1,v9196_0_we1,v9196_1_address0,v9196_1_ce0,v9196_1_d0,v9196_1_q0,v9196_1_we0,v9196_1_address1,v9196_1_ce1,v9196_1_d1,v9196_1_q1,v9196_1_we1,v9196_2_address0,v9196_2_ce0,v9196_2_d0,v9196_2_q0,v9196_2_we0,v9196_2_address1,v9196_2_ce1,v9196_2_d1,v9196_2_q1,v9196_2_we1,v9196_3_address0,v9196_3_ce0,v9196_3_d0,v9196_3_q0,v9196_3_we0,v9196_3_address1,v9196_3_ce1,v9196_3_d1,v9196_3_q1,v9196_3_we1,v8011_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [7:0] v8011;
output  [18:0] v9197_1_address0;
output   v9197_1_ce0;
output  [7:0] v9197_1_d0;
input  [7:0] v9197_1_q0;
output   v9197_1_we0;
output  [18:0] v9197_1_address1;
output   v9197_1_ce1;
output  [7:0] v9197_1_d1;
input  [7:0] v9197_1_q1;
output   v9197_1_we1;
output  [18:0] v9197_0_address0;
output   v9197_0_ce0;
output  [7:0] v9197_0_d0;
input  [7:0] v9197_0_q0;
output   v9197_0_we0;
output  [18:0] v9197_0_address1;
output   v9197_0_ce1;
output  [7:0] v9197_0_d1;
input  [7:0] v9197_0_q1;
output   v9197_0_we1;
output  [18:0] v9198_0_address0;
output   v9198_0_ce0;
output  [7:0] v9198_0_d0;
input  [7:0] v9198_0_q0;
output   v9198_0_we0;
output  [18:0] v9198_0_address1;
output   v9198_0_ce1;
output  [7:0] v9198_0_d1;
input  [7:0] v9198_0_q1;
output   v9198_0_we1;
output  [18:0] v9198_1_address0;
output   v9198_1_ce0;
output  [7:0] v9198_1_d0;
input  [7:0] v9198_1_q0;
output   v9198_1_we0;
output  [18:0] v9198_1_address1;
output   v9198_1_ce1;
output  [7:0] v9198_1_d1;
input  [7:0] v9198_1_q1;
output   v9198_1_we1;
output  [19:0] v9196_0_address0;
output   v9196_0_ce0;
output  [7:0] v9196_0_d0;
input  [7:0] v9196_0_q0;
output   v9196_0_we0;
output  [19:0] v9196_0_address1;
output   v9196_0_ce1;
output  [7:0] v9196_0_d1;
input  [7:0] v9196_0_q1;
output   v9196_0_we1;
output  [19:0] v9196_1_address0;
output   v9196_1_ce0;
output  [7:0] v9196_1_d0;
input  [7:0] v9196_1_q0;
output   v9196_1_we0;
output  [19:0] v9196_1_address1;
output   v9196_1_ce1;
output  [7:0] v9196_1_d1;
input  [7:0] v9196_1_q1;
output   v9196_1_we1;
output  [19:0] v9196_2_address0;
output   v9196_2_ce0;
output  [7:0] v9196_2_d0;
input  [7:0] v9196_2_q0;
output   v9196_2_we0;
output  [19:0] v9196_2_address1;
output   v9196_2_ce1;
output  [7:0] v9196_2_d1;
input  [7:0] v9196_2_q1;
output   v9196_2_we1;
output  [19:0] v9196_3_address0;
output   v9196_3_ce0;
output  [7:0] v9196_3_d0;
input  [7:0] v9196_3_q0;
output   v9196_3_we0;
output  [19:0] v9196_3_address1;
output   v9196_3_ce1;
output  [7:0] v9196_3_d1;
input  [7:0] v9196_3_q1;
output   v9196_3_we1;
input   v8011_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v8019_i_q0;
wire   [7:0] v8019_t_q0;
wire   [7:0] v8019_1_i_q0;
wire   [7:0] v8019_1_t_q0;
wire   [7:0] v8018_i_q0;
wire   [7:0] v8018_t_q0;
wire   [7:0] v8018_1_i_q0;
wire   [7:0] v8018_1_t_q0;
wire   [7:0] v8017_i_q0;
wire   [7:0] v8017_t_q0;
wire   [7:0] v8017_1_i_q0;
wire   [7:0] v8017_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_d0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8011;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_0_ce0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_1_ce0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_2_ce0;
wire   [19:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_3_ce0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_return;
wire    ap_channel_done_tmp_382;
wire    tmp_382_full_n;
reg    ap_sync_reg_channel_write_tmp_382;
wire    ap_sync_channel_write_tmp_382;
wire    ap_channel_done_v8018_1;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_full_n;
reg    ap_sync_reg_channel_write_v8018_1;
wire    ap_sync_channel_write_v8018_1;
wire    ap_channel_done_v8018;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_full_n;
reg    ap_sync_reg_channel_write_v8018;
wire    ap_sync_channel_write_v8018;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_d0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8011;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v9198_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v9198_0_ce0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v9198_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v9198_1_ce0;
wire    ap_channel_done_v8017_1;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_full_n;
reg    ap_sync_reg_channel_write_v8017_1;
wire    ap_sync_channel_write_v8017_1;
wire    ap_channel_done_v8017;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_full_n;
reg    ap_sync_reg_channel_write_v8017;
wire    ap_sync_channel_write_v8017;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8018_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8018_1_i_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8017_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8017_1_i_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8018_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8018_i_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8017_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8017_i_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_return;
wire    ap_channel_done_v8011_c_channel1;
wire    v8011_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v8011_c_channel1;
wire    ap_sync_channel_write_v8011_c_channel1;
wire    ap_channel_done_v8019_1;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_full_n;
reg    ap_sync_reg_channel_write_v8019_1;
wire    ap_sync_channel_write_v8019_1;
wire    ap_channel_done_v8019;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_full_n;
reg    ap_sync_reg_channel_write_v8019;
wire    ap_sync_channel_write_v8019;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_ready;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_1_d0;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_0_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v8019_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v8019_1_i_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v8019_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v8019_i_ce0;
wire    v8018_i_full_n;
wire    v8018_t_empty_n;
wire    v8018_1_i_full_n;
wire    v8018_1_t_empty_n;
wire    v8017_i_full_n;
wire    v8017_t_empty_n;
wire    v8017_1_i_full_n;
wire    v8017_1_t_empty_n;
wire    v8019_i_full_n;
wire    v8019_t_empty_n;
wire    v8019_1_i_full_n;
wire    v8019_1_t_empty_n;
wire   [6:0] tmp_382_dout;
wire   [2:0] tmp_382_num_data_valid;
wire   [2:0] tmp_382_fifo_cap;
wire    tmp_382_empty_n;
wire   [4:0] v8011_c_channel1_dout;
wire   [2:0] v8011_c_channel1_num_data_valid;
wire   [2:0] v8011_c_channel1_fifo_cap;
wire    v8011_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_tmp_382 = 1'b0;
#0 ap_sync_reg_channel_write_v8018_1 = 1'b0;
#0 ap_sync_reg_channel_write_v8018 = 1'b0;
#0 ap_sync_reg_channel_write_v8017_1 = 1'b0;
#0 ap_sync_reg_channel_write_v8017 = 1'b0;
#0 ap_sync_reg_channel_write_v8011_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v8019_1 = 1'b0;
#0 ap_sync_reg_channel_write_v8019 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_12642_1_v8019_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v8019_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_d0),.i_q0(v8019_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v8019_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v8019_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8019_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8019_i_full_n),.i_write(ap_channel_done_v8019),.t_empty_n(v8019_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12642_1_v8019_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v8019_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_d0),.i_q0(v8019_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v8019_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v8019_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8019_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8019_1_i_full_n),.i_write(ap_channel_done_v8019_1),.t_empty_n(v8019_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12642_1_v8019_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v8018_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_d0),.i_q0(v8018_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8018_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8018_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8018_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8018_i_full_n),.i_write(ap_channel_done_v8018),.t_empty_n(v8018_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12642_1_v8019_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v8018_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_d0),.i_q0(v8018_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8018_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8018_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8018_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8018_1_i_full_n),.i_write(ap_channel_done_v8018_1),.t_empty_n(v8018_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12642_1_v8019_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v8017_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_d0),.i_q0(v8017_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8017_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8017_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8017_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8017_i_full_n),.i_write(ap_channel_done_v8017),.t_empty_n(v8017_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12642_1_v8019_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v8017_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_d0),.i_q0(v8017_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8017_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8017_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8017_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8017_1_i_full_n),.i_write(ap_channel_done_v8017_1),.t_empty_n(v8017_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039 dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready),.v8018_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_address0),.v8018_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_ce0),.v8018_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_we0),.v8018_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_d0),.v8018_1_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_address0),.v8018_1_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_ce0),.v8018_1_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_we0),.v8018_1_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_d0),.v8011(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8011),.v9196_0_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_0_address0),.v9196_0_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_0_ce0),.v9196_0_q0(v9196_0_q0),.v9196_1_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_1_address0),.v9196_1_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_1_ce0),.v9196_1_q0(v9196_1_q0),.v9196_2_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_2_address0),.v9196_2_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_2_ce0),.v9196_2_q0(v9196_2_q0),.v9196_3_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_3_address0),.v9196_3_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_3_ce0),.v9196_3_q0(v9196_3_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138 dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready),.v8017_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_address0),.v8017_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_ce0),.v8017_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_we0),.v8017_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_d0),.v8017_1_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_address0),.v8017_1_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_ce0),.v8017_1_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_we0),.v8017_1_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_d0),.v8011(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8011),.v9198_0_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v9198_0_address0),.v9198_0_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v9198_0_ce0),.v9198_0_q0(v9198_0_q0),.v9198_1_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v9198_1_address0),.v9198_1_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v9198_1_ce0),.v9198_1_q0(v9198_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152 dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_ready),.p_read(tmp_382_dout),.v8019_i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_address0),.v8019_i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_ce0),.v8019_i_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_we0),.v8019_i_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_d0),.v8019_1_i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_address0),.v8019_1_i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_ce0),.v8019_1_i_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_we0),.v8019_1_i_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_d0),.v8018_1_i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8018_1_i_address0),.v8018_1_i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8018_1_i_ce0),.v8018_1_i_q0(v8018_1_t_q0),.v8017_1_i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8017_1_i_address0),.v8017_1_i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8017_1_i_ce0),.v8017_1_i_q0(v8017_1_t_q0),.v8018_i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8018_i_address0),.v8018_i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8018_i_ce0),.v8018_i_q0(v8018_t_q0),.v8017_i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8017_i_address0),.v8017_i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8017_i_ce0),.v8017_i_q0(v8017_t_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340 dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_ready),.v9197_1_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_1_address0),.v9197_1_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_1_ce0),.v9197_1_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_1_we0),.v9197_1_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_1_d0),.v9197_0_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_0_address0),.v9197_0_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_0_ce0),.v9197_0_we0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_0_we0),.v9197_0_d0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_0_d0),.p_read(v8011_c_channel1_dout),.v8019_1_i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v8019_1_i_address0),.v8019_1_i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v8019_1_i_ce0),.v8019_1_i_q0(v8019_1_t_q0),.v8019_i_address0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v8019_i_address0),.v8019_i_ce0(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v8019_i_ce0),.v8019_i_q0(v8019_t_q0));
forward_fifo_w7_d2_S tmp_382_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_return),.if_full_n(tmp_382_full_n),.if_write(ap_channel_done_tmp_382),.if_dout(tmp_382_dout),.if_num_data_valid(tmp_382_num_data_valid),.if_fifo_cap(tmp_382_fifo_cap),.if_empty_n(tmp_382_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_ready));
forward_fifo_w5_d2_S v8011_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_return),.if_full_n(v8011_c_channel1_full_n),.if_write(ap_channel_done_v8011_c_channel1),.if_dout(v8011_c_channel1_dout),.if_num_data_valid(v8011_c_channel1_num_data_valid),.if_fifo_cap(v8011_c_channel1_fifo_cap),.if_empty_n(v8011_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_tmp_382 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_tmp_382 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_tmp_382 <= ap_sync_channel_write_tmp_382;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8011_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8011_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8011_c_channel1 <= ap_sync_channel_write_v8011_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8017 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8017 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8017 <= ap_sync_channel_write_v8017;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8017_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8017_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8017_1 <= ap_sync_channel_write_v8017_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8018 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8018 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8018 <= ap_sync_channel_write_v8018;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8018_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8018_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8018_1 <= ap_sync_channel_write_v8018_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8019 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8019 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8019 <= ap_sync_channel_write_v8019;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8019_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_done & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8019_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8019_1 <= ap_sync_channel_write_v8019_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready;
        end
    end
end
assign ap_channel_done_tmp_382 = ((ap_sync_reg_channel_write_tmp_382 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_done);
assign ap_channel_done_v8011_c_channel1 = ((ap_sync_reg_channel_write_v8011_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_done);
assign ap_channel_done_v8017 = ((ap_sync_reg_channel_write_v8017 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_done);
assign ap_channel_done_v8017_1 = ((ap_sync_reg_channel_write_v8017_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_done);
assign ap_channel_done_v8018 = ((ap_sync_reg_channel_write_v8018 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_done);
assign ap_channel_done_v8018_1 = ((ap_sync_reg_channel_write_v8018_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_done);
assign ap_channel_done_v8019 = ((ap_sync_reg_channel_write_v8019 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_done);
assign ap_channel_done_v8019_1 = ((ap_sync_reg_channel_write_v8019_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_done;
assign ap_idle = ((v8011_c_channel1_empty_n ^ 1'b1) & (tmp_382_empty_n ^ 1'b1) & (v8019_1_t_empty_n ^ 1'b1) & (v8019_t_empty_n ^ 1'b1) & (v8017_1_t_empty_n ^ 1'b1) & (v8017_t_empty_n ^ 1'b1) & (v8018_1_t_empty_n ^ 1'b1) & (v8018_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_tmp_382 = ((tmp_382_full_n & ap_channel_done_tmp_382) | ap_sync_reg_channel_write_tmp_382);
assign ap_sync_channel_write_v8011_c_channel1 = ((v8011_c_channel1_full_n & ap_channel_done_v8011_c_channel1) | ap_sync_reg_channel_write_v8011_c_channel1);
assign ap_sync_channel_write_v8017 = ((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_full_n & ap_channel_done_v8017) | ap_sync_reg_channel_write_v8017);
assign ap_sync_channel_write_v8017_1 = ((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_full_n & ap_channel_done_v8017_1) | ap_sync_reg_channel_write_v8017_1);
assign ap_sync_channel_write_v8018 = ((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_full_n & ap_channel_done_v8018) | ap_sync_reg_channel_write_v8018);
assign ap_sync_channel_write_v8018_1 = ((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_full_n & ap_channel_done_v8018_1) | ap_sync_reg_channel_write_v8018_1);
assign ap_sync_channel_write_v8019 = ((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_full_n & ap_channel_done_v8019) | ap_sync_reg_channel_write_v8019);
assign ap_sync_channel_write_v8019_1 = ((dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_full_n & ap_channel_done_v8019_1) | ap_sync_reg_channel_write_v8019_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_ap_start = (v8019_t_empty_n & v8019_1_t_empty_n & v8011_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_continue = (ap_sync_channel_write_v8019_1 & ap_sync_channel_write_v8019 & ap_sync_channel_write_v8011_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_ap_start = (v8018_t_empty_n & v8018_1_t_empty_n & v8017_t_empty_n & v8017_1_t_empty_n & tmp_382_empty_n);
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_1_i_full_n = v8019_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12551_1_proc152_U0_v8019_i_full_n = v8019_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_continue = (ap_sync_channel_write_v8017_1 & ap_sync_channel_write_v8017);
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8011 = {{v8011[(5 - 8'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_1_full_n = v8017_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v8017_full_n = v8017_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_continue = (ap_sync_channel_write_v8018_1 & ap_sync_channel_write_v8018 & ap_sync_channel_write_tmp_382);
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8011 = {{v8011[(7 - 8'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_1_full_n = v8018_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v8018_full_n = v8018_i_full_n;
assign v9196_0_address0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_0_address0;
assign v9196_0_address1 = 20'd0;
assign v9196_0_ce0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_0_ce0;
assign v9196_0_ce1 = 1'b0;
assign v9196_0_d0 = 8'd0;
assign v9196_0_d1 = 8'd0;
assign v9196_0_we0 = 1'b0;
assign v9196_0_we1 = 1'b0;
assign v9196_1_address0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_1_address0;
assign v9196_1_address1 = 20'd0;
assign v9196_1_ce0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_1_ce0;
assign v9196_1_ce1 = 1'b0;
assign v9196_1_d0 = 8'd0;
assign v9196_1_d1 = 8'd0;
assign v9196_1_we0 = 1'b0;
assign v9196_1_we1 = 1'b0;
assign v9196_2_address0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_2_address0;
assign v9196_2_address1 = 20'd0;
assign v9196_2_ce0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_2_ce0;
assign v9196_2_ce1 = 1'b0;
assign v9196_2_d0 = 8'd0;
assign v9196_2_d1 = 8'd0;
assign v9196_2_we0 = 1'b0;
assign v9196_2_we1 = 1'b0;
assign v9196_3_address0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_3_address0;
assign v9196_3_address1 = 20'd0;
assign v9196_3_ce0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12615_1_proc15039_U0_v9196_3_ce0;
assign v9196_3_ce1 = 1'b0;
assign v9196_3_d0 = 8'd0;
assign v9196_3_d1 = 8'd0;
assign v9196_3_we0 = 1'b0;
assign v9196_3_we1 = 1'b0;
assign v9197_0_address0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_0_address0;
assign v9197_0_address1 = 19'd0;
assign v9197_0_ce0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_0_ce0;
assign v9197_0_ce1 = 1'b0;
assign v9197_0_d0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_0_d0;
assign v9197_0_d1 = 8'd0;
assign v9197_0_we0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_0_we0;
assign v9197_0_we1 = 1'b0;
assign v9197_1_address0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_1_address0;
assign v9197_1_address1 = 19'd0;
assign v9197_1_ce0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_1_ce0;
assign v9197_1_ce1 = 1'b0;
assign v9197_1_d0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_1_d0;
assign v9197_1_d1 = 8'd0;
assign v9197_1_we0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12521_1_proc15340_U0_v9197_1_we0;
assign v9197_1_we1 = 1'b0;
assign v9198_0_address0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v9198_0_address0;
assign v9198_0_address1 = 19'd0;
assign v9198_0_ce0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v9198_0_ce0;
assign v9198_0_ce1 = 1'b0;
assign v9198_0_d0 = 8'd0;
assign v9198_0_d1 = 8'd0;
assign v9198_0_we0 = 1'b0;
assign v9198_0_we1 = 1'b0;
assign v9198_1_address0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v9198_1_address0;
assign v9198_1_address1 = 19'd0;
assign v9198_1_ce0 = dataflow_in_loop_VITIS_LOOP_12642_1_Loop_VITIS_LOOP_12587_1_proc15138_U0_v9198_1_ce0;
assign v9198_1_ce1 = 1'b0;
assign v9198_1_d0 = 8'd0;
assign v9198_1_d1 = 8'd0;
assign v9198_1_we0 = 1'b0;
assign v9198_1_we1 = 1'b0;
endmodule 
