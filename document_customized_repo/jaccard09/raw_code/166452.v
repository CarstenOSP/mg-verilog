module forward_dataflow_in_loop_VITIS_LOOP_9135_1 (ap_clk,ap_rst,v7230,v13724_1_address0,v13724_1_ce0,v13724_1_d0,v13724_1_q0,v13724_1_we0,v13724_1_address1,v13724_1_ce1,v13724_1_d1,v13724_1_q1,v13724_1_we1,v13724_0_address0,v13724_0_ce0,v13724_0_d0,v13724_0_q0,v13724_0_we0,v13724_0_address1,v13724_0_ce1,v13724_0_d1,v13724_0_q1,v13724_0_we1,v13725_0_address0,v13725_0_ce0,v13725_0_d0,v13725_0_q0,v13725_0_we0,v13725_0_address1,v13725_0_ce1,v13725_0_d1,v13725_0_q1,v13725_0_we1,v13725_1_address0,v13725_1_ce0,v13725_1_d0,v13725_1_q0,v13725_1_we0,v13725_1_address1,v13725_1_ce1,v13725_1_d1,v13725_1_q1,v13725_1_we1,v13723_0_address0,v13723_0_ce0,v13723_0_d0,v13723_0_q0,v13723_0_we0,v13723_0_address1,v13723_0_ce1,v13723_0_d1,v13723_0_q1,v13723_0_we1,v13723_1_address0,v13723_1_ce0,v13723_1_d0,v13723_1_q0,v13723_1_we0,v13723_1_address1,v13723_1_ce1,v13723_1_d1,v13723_1_q1,v13723_1_we1,v13723_2_address0,v13723_2_ce0,v13723_2_d0,v13723_2_q0,v13723_2_we0,v13723_2_address1,v13723_2_ce1,v13723_2_d1,v13723_2_q1,v13723_2_we1,v13723_3_address0,v13723_3_ce0,v13723_3_d0,v13723_3_q0,v13723_3_we0,v13723_3_address1,v13723_3_ce1,v13723_3_d1,v13723_3_q1,v13723_3_we1,v7230_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [7:0] v7230;
output  [15:0] v13724_1_address0;
output   v13724_1_ce0;
output  [7:0] v13724_1_d0;
input  [7:0] v13724_1_q0;
output   v13724_1_we0;
output  [15:0] v13724_1_address1;
output   v13724_1_ce1;
output  [7:0] v13724_1_d1;
input  [7:0] v13724_1_q1;
output   v13724_1_we1;
output  [15:0] v13724_0_address0;
output   v13724_0_ce0;
output  [7:0] v13724_0_d0;
input  [7:0] v13724_0_q0;
output   v13724_0_we0;
output  [15:0] v13724_0_address1;
output   v13724_0_ce1;
output  [7:0] v13724_0_d1;
input  [7:0] v13724_0_q1;
output   v13724_0_we1;
output  [15:0] v13725_0_address0;
output   v13725_0_ce0;
output  [7:0] v13725_0_d0;
input  [7:0] v13725_0_q0;
output   v13725_0_we0;
output  [15:0] v13725_0_address1;
output   v13725_0_ce1;
output  [7:0] v13725_0_d1;
input  [7:0] v13725_0_q1;
output   v13725_0_we1;
output  [15:0] v13725_1_address0;
output   v13725_1_ce0;
output  [7:0] v13725_1_d0;
input  [7:0] v13725_1_q0;
output   v13725_1_we0;
output  [15:0] v13725_1_address1;
output   v13725_1_ce1;
output  [7:0] v13725_1_d1;
input  [7:0] v13725_1_q1;
output   v13725_1_we1;
output  [16:0] v13723_0_address0;
output   v13723_0_ce0;
output  [7:0] v13723_0_d0;
input  [7:0] v13723_0_q0;
output   v13723_0_we0;
output  [16:0] v13723_0_address1;
output   v13723_0_ce1;
output  [7:0] v13723_0_d1;
input  [7:0] v13723_0_q1;
output   v13723_0_we1;
output  [16:0] v13723_1_address0;
output   v13723_1_ce0;
output  [7:0] v13723_1_d0;
input  [7:0] v13723_1_q0;
output   v13723_1_we0;
output  [16:0] v13723_1_address1;
output   v13723_1_ce1;
output  [7:0] v13723_1_d1;
input  [7:0] v13723_1_q1;
output   v13723_1_we1;
output  [16:0] v13723_2_address0;
output   v13723_2_ce0;
output  [7:0] v13723_2_d0;
input  [7:0] v13723_2_q0;
output   v13723_2_we0;
output  [16:0] v13723_2_address1;
output   v13723_2_ce1;
output  [7:0] v13723_2_d1;
input  [7:0] v13723_2_q1;
output   v13723_2_we1;
output  [16:0] v13723_3_address0;
output   v13723_3_ce0;
output  [7:0] v13723_3_d0;
input  [7:0] v13723_3_q0;
output   v13723_3_we0;
output  [16:0] v13723_3_address1;
output   v13723_3_ce1;
output  [7:0] v13723_3_d1;
input  [7:0] v13723_3_q1;
output   v13723_3_we1;
input   v7230_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v7238_i_q0;
wire   [7:0] v7238_t_q0;
wire   [7:0] v7238_1_i_q0;
wire   [7:0] v7238_1_t_q0;
wire   [7:0] v7237_i_q0;
wire   [7:0] v7237_t_q0;
wire   [7:0] v7237_1_i_q0;
wire   [7:0] v7237_1_t_q0;
wire   [7:0] v7236_i_q0;
wire   [7:0] v7236_t_q0;
wire   [7:0] v7236_1_i_q0;
wire   [7:0] v7236_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_d0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_d0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7230;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_0_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_1_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_2_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_3_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_return;
wire    ap_channel_done_tmp_23;
wire    tmp_23_full_n;
reg    ap_sync_reg_channel_write_tmp_23;
wire    ap_sync_channel_write_tmp_23;
wire    ap_channel_done_v7237_1;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_full_n;
reg    ap_sync_reg_channel_write_v7237_1;
wire    ap_sync_channel_write_v7237_1;
wire    ap_channel_done_v7237;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_full_n;
reg    ap_sync_reg_channel_write_v7237;
wire    ap_sync_channel_write_v7237;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_d0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_d0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7230;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v13725_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v13725_0_ce0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v13725_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v13725_1_ce0;
wire    ap_channel_done_v7236_1;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_full_n;
reg    ap_sync_reg_channel_write_v7236_1;
wire    ap_sync_channel_write_v7236_1;
wire    ap_channel_done_v7236;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_full_n;
reg    ap_sync_reg_channel_write_v7236;
wire    ap_sync_channel_write_v7236;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_ready;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_d0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_d0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7237_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7237_1_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7236_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7236_1_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7237_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7237_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7236_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7236_ce0;
wire    ap_channel_done_v7238_1;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_full_n;
reg    ap_sync_reg_channel_write_v7238_1;
wire    ap_sync_channel_write_v7238_1;
wire    ap_channel_done_v7238;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_full_n;
reg    ap_sync_reg_channel_write_v7238;
wire    ap_sync_channel_write_v7238;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_ready;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_1_d0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_0_d0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v7238_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v7238_1_i_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v7238_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v7238_i_ce0;
wire    v7237_i_full_n;
wire    v7237_t_empty_n;
wire    v7237_1_i_full_n;
wire    v7237_1_t_empty_n;
wire    v7236_i_full_n;
wire    v7236_t_empty_n;
wire    v7236_1_i_full_n;
wire    v7236_1_t_empty_n;
wire    v7238_i_full_n;
wire    v7238_t_empty_n;
wire    v7238_1_i_full_n;
wire    v7238_1_t_empty_n;
wire   [4:0] tmp_23_dout;
wire   [2:0] tmp_23_num_data_valid;
wire   [2:0] tmp_23_fifo_cap;
wire    tmp_23_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_tmp_23 = 1'b0;
#0 ap_sync_reg_channel_write_v7237_1 = 1'b0;
#0 ap_sync_reg_channel_write_v7237 = 1'b0;
#0 ap_sync_reg_channel_write_v7236_1 = 1'b0;
#0 ap_sync_reg_channel_write_v7236 = 1'b0;
#0 ap_sync_reg_channel_write_v7238_1 = 1'b0;
#0 ap_sync_reg_channel_write_v7238 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_9135_1_v7238_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1920 ),.AddressWidth( 11 ))
v7238_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_d0),.i_q0(v7238_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v7238_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v7238_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7238_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7238_i_full_n),.i_write(ap_channel_done_v7238),.t_empty_n(v7238_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9135_1_v7238_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1920 ),.AddressWidth( 11 ))
v7238_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_d0),.i_q0(v7238_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v7238_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v7238_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7238_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7238_1_i_full_n),.i_write(ap_channel_done_v7238_1),.t_empty_n(v7238_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9135_1_v7238_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1920 ),.AddressWidth( 11 ))
v7237_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_d0),.i_q0(v7237_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7237_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7237_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7237_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7237_i_full_n),.i_write(ap_channel_done_v7237),.t_empty_n(v7237_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9135_1_v7238_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1920 ),.AddressWidth( 11 ))
v7237_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_d0),.i_q0(v7237_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7237_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7237_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7237_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7237_1_i_full_n),.i_write(ap_channel_done_v7237_1),.t_empty_n(v7237_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9135_1_v7238_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1920 ),.AddressWidth( 11 ))
v7236_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_d0),.i_q0(v7236_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7236_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7236_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7236_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7236_i_full_n),.i_write(ap_channel_done_v7236),.t_empty_n(v7236_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9135_1_v7238_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1920 ),.AddressWidth( 11 ))
v7236_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_d0),.i_q0(v7236_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7236_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7236_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v7236_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v7236_1_i_full_n),.i_write(ap_channel_done_v7236_1),.t_empty_n(v7236_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588 dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready),.v7237_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_address0),.v7237_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_ce0),.v7237_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_we0),.v7237_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_d0),.v7237_1_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_address0),.v7237_1_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_ce0),.v7237_1_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_we0),.v7237_1_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_d0),.v7230(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7230),.v13723_0_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_0_address0),.v13723_0_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_0_ce0),.v13723_0_q0(v13723_0_q0),.v13723_1_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_1_address0),.v13723_1_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_1_ce0),.v13723_1_q0(v13723_1_q0),.v13723_2_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_2_address0),.v13723_2_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_2_ce0),.v13723_2_q0(v13723_2_q0),.v13723_3_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_3_address0),.v13723_3_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_3_ce0),.v13723_3_q0(v13723_3_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687 dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready),.v7236_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_address0),.v7236_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_ce0),.v7236_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_we0),.v7236_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_d0),.v7236_1_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_address0),.v7236_1_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_ce0),.v7236_1_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_we0),.v7236_1_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_d0),.v7230(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7230),.v13725_0_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v13725_0_address0),.v13725_0_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v13725_0_ce0),.v13725_0_q0(v13725_0_q0),.v13725_1_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v13725_1_address0),.v13725_1_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v13725_1_ce0),.v13725_1_q0(v13725_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107 dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_ready),.v7238_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_address0),.v7238_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_ce0),.v7238_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_we0),.v7238_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_d0),.v7238_1_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_address0),.v7238_1_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_ce0),.v7238_1_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_we0),.v7238_1_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_d0),.v7237_1_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7237_1_address0),.v7237_1_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7237_1_ce0),.v7237_1_q0(v7237_1_t_q0),.v7236_1_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7236_1_address0),.v7236_1_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7236_1_ce0),.v7236_1_q0(v7236_1_t_q0),.v7237_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7237_address0),.v7237_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7237_ce0),.v7237_q0(v7237_t_q0),.v7236_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7236_address0),.v7236_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7236_ce0),.v7236_q0(v7236_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889 dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_ready),.v13724_1_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_1_address0),.v13724_1_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_1_ce0),.v13724_1_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_1_we0),.v13724_1_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_1_d0),.v13724_0_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_0_address0),.v13724_0_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_0_ce0),.v13724_0_we0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_0_we0),.v13724_0_d0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_0_d0),.p_read(tmp_23_dout),.v7238_1_i_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v7238_1_i_address0),.v7238_1_i_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v7238_1_i_ce0),.v7238_1_i_q0(v7238_1_t_q0),.v7238_i_address0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v7238_i_address0),.v7238_i_ce0(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v7238_i_ce0),.v7238_i_q0(v7238_t_q0));
forward_fifo_w5_d3_S_x tmp_23_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_return),.if_full_n(tmp_23_full_n),.if_write(ap_channel_done_tmp_23),.if_dout(tmp_23_dout),.if_num_data_valid(tmp_23_num_data_valid),.if_fifo_cap(tmp_23_fifo_cap),.if_empty_n(tmp_23_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_tmp_23 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_tmp_23 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_tmp_23 <= ap_sync_channel_write_tmp_23;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7236 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7236 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7236 <= ap_sync_channel_write_v7236;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7236_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7236_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7236_1 <= ap_sync_channel_write_v7236_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7237 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7237 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7237 <= ap_sync_channel_write_v7237;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7237_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7237_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7237_1 <= ap_sync_channel_write_v7237_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7238 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7238 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7238 <= ap_sync_channel_write_v7238;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v7238_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_done & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v7238_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v7238_1 <= ap_sync_channel_write_v7238_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready;
        end
    end
end
assign ap_channel_done_tmp_23 = ((ap_sync_reg_channel_write_tmp_23 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_done);
assign ap_channel_done_v7236 = ((ap_sync_reg_channel_write_v7236 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_done);
assign ap_channel_done_v7236_1 = ((ap_sync_reg_channel_write_v7236_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_done);
assign ap_channel_done_v7237 = ((ap_sync_reg_channel_write_v7237 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_done);
assign ap_channel_done_v7237_1 = ((ap_sync_reg_channel_write_v7237_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_done);
assign ap_channel_done_v7238 = ((ap_sync_reg_channel_write_v7238 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_done);
assign ap_channel_done_v7238_1 = ((ap_sync_reg_channel_write_v7238_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_done;
assign ap_idle = ((tmp_23_empty_n ^ 1'b1) & (v7238_1_t_empty_n ^ 1'b1) & (v7238_t_empty_n ^ 1'b1) & (v7236_1_t_empty_n ^ 1'b1) & (v7236_t_empty_n ^ 1'b1) & (v7237_1_t_empty_n ^ 1'b1) & (v7237_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_tmp_23 = ((tmp_23_full_n & ap_channel_done_tmp_23) | ap_sync_reg_channel_write_tmp_23);
assign ap_sync_channel_write_v7236 = ((dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_full_n & ap_channel_done_v7236) | ap_sync_reg_channel_write_v7236);
assign ap_sync_channel_write_v7236_1 = ((dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_full_n & ap_channel_done_v7236_1) | ap_sync_reg_channel_write_v7236_1);
assign ap_sync_channel_write_v7237 = ((dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_full_n & ap_channel_done_v7237) | ap_sync_reg_channel_write_v7237);
assign ap_sync_channel_write_v7237_1 = ((dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_full_n & ap_channel_done_v7237_1) | ap_sync_reg_channel_write_v7237_1);
assign ap_sync_channel_write_v7238 = ((dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_full_n & ap_channel_done_v7238) | ap_sync_reg_channel_write_v7238);
assign ap_sync_channel_write_v7238_1 = ((dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_full_n & ap_channel_done_v7238_1) | ap_sync_reg_channel_write_v7238_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_ap_start = (v7238_t_empty_n & v7238_1_t_empty_n & tmp_23_empty_n);
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_continue = (ap_sync_channel_write_v7238_1 & ap_sync_channel_write_v7238);
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_ap_start = (v7237_t_empty_n & v7237_1_t_empty_n & v7236_t_empty_n & v7236_1_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_1_full_n = v7238_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9050_1_proc107_U0_v7238_full_n = v7238_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_continue = (ap_sync_channel_write_v7236_1 & ap_sync_channel_write_v7236);
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7230 = {{v7230[(5 - 8'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_1_full_n = v7236_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v7236_full_n = v7236_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_continue = (ap_sync_channel_write_v7237_1 & ap_sync_channel_write_v7237 & ap_sync_channel_write_tmp_23);
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7230 = {{v7230[(7 - 8'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_1_full_n = v7237_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v7237_full_n = v7237_i_full_n;
assign v13723_0_address0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_0_address0;
assign v13723_0_address1 = 17'd0;
assign v13723_0_ce0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_0_ce0;
assign v13723_0_ce1 = 1'b0;
assign v13723_0_d0 = 8'd0;
assign v13723_0_d1 = 8'd0;
assign v13723_0_we0 = 1'b0;
assign v13723_0_we1 = 1'b0;
assign v13723_1_address0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_1_address0;
assign v13723_1_address1 = 17'd0;
assign v13723_1_ce0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_1_ce0;
assign v13723_1_ce1 = 1'b0;
assign v13723_1_d0 = 8'd0;
assign v13723_1_d1 = 8'd0;
assign v13723_1_we0 = 1'b0;
assign v13723_1_we1 = 1'b0;
assign v13723_2_address0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_2_address0;
assign v13723_2_address1 = 17'd0;
assign v13723_2_ce0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_2_ce0;
assign v13723_2_ce1 = 1'b0;
assign v13723_2_d0 = 8'd0;
assign v13723_2_d1 = 8'd0;
assign v13723_2_we0 = 1'b0;
assign v13723_2_we1 = 1'b0;
assign v13723_3_address0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_3_address0;
assign v13723_3_address1 = 17'd0;
assign v13723_3_ce0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9108_1_proc10588_U0_v13723_3_ce0;
assign v13723_3_ce1 = 1'b0;
assign v13723_3_d0 = 8'd0;
assign v13723_3_d1 = 8'd0;
assign v13723_3_we0 = 1'b0;
assign v13723_3_we1 = 1'b0;
assign v13724_0_address0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_0_address0;
assign v13724_0_address1 = 16'd0;
assign v13724_0_ce0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_0_ce0;
assign v13724_0_ce1 = 1'b0;
assign v13724_0_d0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_0_d0;
assign v13724_0_d1 = 8'd0;
assign v13724_0_we0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_0_we0;
assign v13724_0_we1 = 1'b0;
assign v13724_1_address0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_1_address0;
assign v13724_1_address1 = 16'd0;
assign v13724_1_ce0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_1_ce0;
assign v13724_1_ce1 = 1'b0;
assign v13724_1_d0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_1_d0;
assign v13724_1_d1 = 8'd0;
assign v13724_1_we0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9022_1_proc10889_U0_v13724_1_we0;
assign v13724_1_we1 = 1'b0;
assign v13725_0_address0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v13725_0_address0;
assign v13725_0_address1 = 16'd0;
assign v13725_0_ce0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v13725_0_ce0;
assign v13725_0_ce1 = 1'b0;
assign v13725_0_d0 = 8'd0;
assign v13725_0_d1 = 8'd0;
assign v13725_0_we0 = 1'b0;
assign v13725_0_we1 = 1'b0;
assign v13725_1_address0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v13725_1_address0;
assign v13725_1_address1 = 16'd0;
assign v13725_1_ce0 = dataflow_in_loop_VITIS_LOOP_9135_1_Loop_VITIS_LOOP_9080_1_proc10687_U0_v13725_1_ce0;
assign v13725_1_ce1 = 1'b0;
assign v13725_1_d0 = 8'd0;
assign v13725_1_d1 = 8'd0;
assign v13725_1_we0 = 1'b0;
assign v13725_1_we1 = 1'b0;
endmodule 