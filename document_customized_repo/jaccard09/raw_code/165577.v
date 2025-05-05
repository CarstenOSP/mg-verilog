module forward_dataflow_in_loop_VITIS_LOOP_15734_1 (ap_clk,ap_rst,v12233,v16177_1_address0,v16177_1_ce0,v16177_1_d0,v16177_1_q0,v16177_1_we0,v16177_1_address1,v16177_1_ce1,v16177_1_d1,v16177_1_q1,v16177_1_we1,v16177_0_address0,v16177_0_ce0,v16177_0_d0,v16177_0_q0,v16177_0_we0,v16177_0_address1,v16177_0_ce1,v16177_0_d1,v16177_0_q1,v16177_0_we1,v16178_0_address0,v16178_0_ce0,v16178_0_d0,v16178_0_q0,v16178_0_we0,v16178_0_address1,v16178_0_ce1,v16178_0_d1,v16178_0_q1,v16178_0_we1,v16178_1_address0,v16178_1_ce0,v16178_1_d0,v16178_1_q0,v16178_1_we0,v16178_1_address1,v16178_1_ce1,v16178_1_d1,v16178_1_q1,v16178_1_we1,v16176_0_address0,v16176_0_ce0,v16176_0_d0,v16176_0_q0,v16176_0_we0,v16176_0_address1,v16176_0_ce1,v16176_0_d1,v16176_0_q1,v16176_0_we1,v16176_1_address0,v16176_1_ce0,v16176_1_d0,v16176_1_q0,v16176_1_we0,v16176_1_address1,v16176_1_ce1,v16176_1_d1,v16176_1_q1,v16176_1_we1,v16176_2_address0,v16176_2_ce0,v16176_2_d0,v16176_2_q0,v16176_2_we0,v16176_2_address1,v16176_2_ce1,v16176_2_d1,v16176_2_q1,v16176_2_we1,v16176_3_address0,v16176_3_ce0,v16176_3_d0,v16176_3_q0,v16176_3_we0,v16176_3_address1,v16176_3_ce1,v16176_3_d1,v16176_3_q1,v16176_3_we1,v12233_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [5:0] v12233;
output  [16:0] v16177_1_address0;
output   v16177_1_ce0;
output  [7:0] v16177_1_d0;
input  [7:0] v16177_1_q0;
output   v16177_1_we0;
output  [16:0] v16177_1_address1;
output   v16177_1_ce1;
output  [7:0] v16177_1_d1;
input  [7:0] v16177_1_q1;
output   v16177_1_we1;
output  [16:0] v16177_0_address0;
output   v16177_0_ce0;
output  [7:0] v16177_0_d0;
input  [7:0] v16177_0_q0;
output   v16177_0_we0;
output  [16:0] v16177_0_address1;
output   v16177_0_ce1;
output  [7:0] v16177_0_d1;
input  [7:0] v16177_0_q1;
output   v16177_0_we1;
output  [16:0] v16178_0_address0;
output   v16178_0_ce0;
output  [7:0] v16178_0_d0;
input  [7:0] v16178_0_q0;
output   v16178_0_we0;
output  [16:0] v16178_0_address1;
output   v16178_0_ce1;
output  [7:0] v16178_0_d1;
input  [7:0] v16178_0_q1;
output   v16178_0_we1;
output  [16:0] v16178_1_address0;
output   v16178_1_ce0;
output  [7:0] v16178_1_d0;
input  [7:0] v16178_1_q0;
output   v16178_1_we0;
output  [16:0] v16178_1_address1;
output   v16178_1_ce1;
output  [7:0] v16178_1_d1;
input  [7:0] v16178_1_q1;
output   v16178_1_we1;
output  [17:0] v16176_0_address0;
output   v16176_0_ce0;
output  [7:0] v16176_0_d0;
input  [7:0] v16176_0_q0;
output   v16176_0_we0;
output  [17:0] v16176_0_address1;
output   v16176_0_ce1;
output  [7:0] v16176_0_d1;
input  [7:0] v16176_0_q1;
output   v16176_0_we1;
output  [17:0] v16176_1_address0;
output   v16176_1_ce0;
output  [7:0] v16176_1_d0;
input  [7:0] v16176_1_q0;
output   v16176_1_we0;
output  [17:0] v16176_1_address1;
output   v16176_1_ce1;
output  [7:0] v16176_1_d1;
input  [7:0] v16176_1_q1;
output   v16176_1_we1;
output  [17:0] v16176_2_address0;
output   v16176_2_ce0;
output  [7:0] v16176_2_d0;
input  [7:0] v16176_2_q0;
output   v16176_2_we0;
output  [17:0] v16176_2_address1;
output   v16176_2_ce1;
output  [7:0] v16176_2_d1;
input  [7:0] v16176_2_q1;
output   v16176_2_we1;
output  [17:0] v16176_3_address0;
output   v16176_3_ce0;
output  [7:0] v16176_3_d0;
input  [7:0] v16176_3_q0;
output   v16176_3_we0;
output  [17:0] v16176_3_address1;
output   v16176_3_ce1;
output  [7:0] v16176_3_d1;
input  [7:0] v16176_3_q1;
output   v16176_3_we1;
input   v12233_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v12241_i_q0;
wire   [7:0] v12241_t_q0;
wire   [7:0] v12241_1_i_q0;
wire   [7:0] v12241_1_t_q0;
wire   [7:0] v12240_i_q0;
wire   [7:0] v12240_t_q0;
wire   [7:0] v12240_1_i_q0;
wire   [7:0] v12240_1_t_q0;
wire   [7:0] v12239_i_q0;
wire   [7:0] v12239_t_q0;
wire   [7:0] v12239_1_i_q0;
wire   [7:0] v12239_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_d0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12233;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_0_ce0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_1_ce0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_2_ce0;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_3_ce0;
wire   [2:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_return;
wire    ap_channel_done_tmp_436;
wire    tmp_436_full_n;
reg    ap_sync_reg_channel_write_tmp_436;
wire    ap_sync_channel_write_tmp_436;
wire    ap_channel_done_v12240_1;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_full_n;
reg    ap_sync_reg_channel_write_v12240_1;
wire    ap_sync_channel_write_v12240_1;
wire    ap_channel_done_v12240;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_full_n;
reg    ap_sync_reg_channel_write_v12240;
wire    ap_sync_channel_write_v12240;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_d0;
wire   [2:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12233;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v16178_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v16178_0_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v16178_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v16178_1_ce0;
wire    ap_channel_done_v12239_1;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_full_n;
reg    ap_sync_reg_channel_write_v12239_1;
wire    ap_sync_channel_write_v12239_1;
wire    ap_channel_done_v12239;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_full_n;
reg    ap_sync_reg_channel_write_v12239;
wire    ap_sync_channel_write_v12239;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12240_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12240_1_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12239_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12239_1_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12240_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12240_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12239_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12239_ce0;
wire    ap_channel_done_v12241_1;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_full_n;
reg    ap_sync_reg_channel_write_v12241_1;
wire    ap_sync_channel_write_v12241_1;
wire    ap_channel_done_v12241;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_full_n;
reg    ap_sync_reg_channel_write_v12241;
wire    ap_sync_channel_write_v12241;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_1_d0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_0_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v12241_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v12241_1_i_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v12241_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v12241_i_ce0;
wire    v12240_i_full_n;
wire    v12240_t_empty_n;
wire    v12240_1_i_full_n;
wire    v12240_1_t_empty_n;
wire    v12239_i_full_n;
wire    v12239_t_empty_n;
wire    v12239_1_i_full_n;
wire    v12239_1_t_empty_n;
wire    v12241_i_full_n;
wire    v12241_t_empty_n;
wire    v12241_1_i_full_n;
wire    v12241_1_t_empty_n;
wire   [2:0] tmp_436_dout;
wire   [2:0] tmp_436_num_data_valid;
wire   [2:0] tmp_436_fifo_cap;
wire    tmp_436_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_tmp_436 = 1'b0;
#0 ap_sync_reg_channel_write_v12240_1 = 1'b0;
#0 ap_sync_reg_channel_write_v12240 = 1'b0;
#0 ap_sync_reg_channel_write_v12239_1 = 1'b0;
#0 ap_sync_reg_channel_write_v12239 = 1'b0;
#0 ap_sync_reg_channel_write_v12241_1 = 1'b0;
#0 ap_sync_reg_channel_write_v12241 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_15734_1_v12241_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v12241_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_d0),.i_q0(v12241_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v12241_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v12241_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12241_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12241_i_full_n),.i_write(ap_channel_done_v12241),.t_empty_n(v12241_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_15734_1_v12241_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v12241_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_d0),.i_q0(v12241_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v12241_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v12241_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12241_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12241_1_i_full_n),.i_write(ap_channel_done_v12241_1),.t_empty_n(v12241_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_15734_1_v12241_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v12240_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_d0),.i_q0(v12240_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12240_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12240_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12240_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12240_i_full_n),.i_write(ap_channel_done_v12240),.t_empty_n(v12240_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_15734_1_v12241_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v12240_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_d0),.i_q0(v12240_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12240_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12240_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12240_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12240_1_i_full_n),.i_write(ap_channel_done_v12240_1),.t_empty_n(v12240_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_15734_1_v12241_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v12239_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_d0),.i_q0(v12239_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12239_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12239_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12239_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12239_i_full_n),.i_write(ap_channel_done_v12239),.t_empty_n(v12239_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_15734_1_v12241_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 12544 ),.AddressWidth( 14 ))
v12239_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_d0),.i_q0(v12239_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12239_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12239_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12239_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12239_1_i_full_n),.i_write(ap_channel_done_v12239_1),.t_empty_n(v12239_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566 dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready),.v12240_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_address0),.v12240_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_ce0),.v12240_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_we0),.v12240_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_d0),.v12240_1_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_address0),.v12240_1_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_ce0),.v12240_1_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_we0),.v12240_1_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_d0),.v12233(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12233),.v16176_0_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_0_address0),.v16176_0_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_0_ce0),.v16176_0_q0(v16176_0_q0),.v16176_1_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_1_address0),.v16176_1_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_1_ce0),.v16176_1_q0(v16176_1_q0),.v16176_2_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_2_address0),.v16176_2_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_2_ce0),.v16176_2_q0(v16176_2_q0),.v16176_3_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_3_address0),.v16176_3_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_3_ce0),.v16176_3_q0(v16176_3_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665 dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready),.v12239_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_address0),.v12239_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_ce0),.v12239_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_we0),.v12239_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_d0),.v12239_1_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_address0),.v12239_1_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_ce0),.v12239_1_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_we0),.v12239_1_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_d0),.v12233(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12233),.v16178_0_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v16178_0_address0),.v16178_0_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v16178_0_ce0),.v16178_0_q0(v16178_0_q0),.v16178_1_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v16178_1_address0),.v16178_1_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v16178_1_ce0),.v16178_1_q0(v16178_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127 dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_ready),.v12241_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_address0),.v12241_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_ce0),.v12241_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_we0),.v12241_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_d0),.v12241_1_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_address0),.v12241_1_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_ce0),.v12241_1_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_we0),.v12241_1_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_d0),.v12240_1_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12240_1_address0),.v12240_1_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12240_1_ce0),.v12240_1_q0(v12240_1_t_q0),.v12239_1_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12239_1_address0),.v12239_1_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12239_1_ce0),.v12239_1_q0(v12239_1_t_q0),.v12240_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12240_address0),.v12240_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12240_ce0),.v12240_q0(v12240_t_q0),.v12239_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12239_address0),.v12239_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12239_ce0),.v12239_q0(v12239_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867 dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_ready),.v16177_1_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_1_address0),.v16177_1_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_1_ce0),.v16177_1_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_1_we0),.v16177_1_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_1_d0),.v16177_0_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_0_address0),.v16177_0_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_0_ce0),.v16177_0_we0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_0_we0),.v16177_0_d0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_0_d0),.p_read(tmp_436_dout),.v12241_1_i_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v12241_1_i_address0),.v12241_1_i_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v12241_1_i_ce0),.v12241_1_i_q0(v12241_1_t_q0),.v12241_i_address0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v12241_i_address0),.v12241_i_ce0(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v12241_i_ce0),.v12241_i_q0(v12241_t_q0));
forward_fifo_w3_d3_S tmp_436_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_return),.if_full_n(tmp_436_full_n),.if_write(ap_channel_done_tmp_436),.if_dout(tmp_436_dout),.if_num_data_valid(tmp_436_num_data_valid),.if_fifo_cap(tmp_436_fifo_cap),.if_empty_n(tmp_436_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_tmp_436 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_tmp_436 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_tmp_436 <= ap_sync_channel_write_tmp_436;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12239 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12239 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12239 <= ap_sync_channel_write_v12239;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12239_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12239_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12239_1 <= ap_sync_channel_write_v12239_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12240 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12240 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12240 <= ap_sync_channel_write_v12240;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12240_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12240_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12240_1 <= ap_sync_channel_write_v12240_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12241 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12241 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12241 <= ap_sync_channel_write_v12241;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12241_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_done & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12241_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12241_1 <= ap_sync_channel_write_v12241_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready;
        end
    end
end
assign ap_channel_done_tmp_436 = ((ap_sync_reg_channel_write_tmp_436 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_done);
assign ap_channel_done_v12239 = ((ap_sync_reg_channel_write_v12239 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_done);
assign ap_channel_done_v12239_1 = ((ap_sync_reg_channel_write_v12239_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_done);
assign ap_channel_done_v12240 = ((ap_sync_reg_channel_write_v12240 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_done);
assign ap_channel_done_v12240_1 = ((ap_sync_reg_channel_write_v12240_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_done);
assign ap_channel_done_v12241 = ((ap_sync_reg_channel_write_v12241 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_done);
assign ap_channel_done_v12241_1 = ((ap_sync_reg_channel_write_v12241_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_done;
assign ap_idle = ((tmp_436_empty_n ^ 1'b1) & (v12241_1_t_empty_n ^ 1'b1) & (v12241_t_empty_n ^ 1'b1) & (v12239_1_t_empty_n ^ 1'b1) & (v12239_t_empty_n ^ 1'b1) & (v12240_1_t_empty_n ^ 1'b1) & (v12240_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_tmp_436 = ((tmp_436_full_n & ap_channel_done_tmp_436) | ap_sync_reg_channel_write_tmp_436);
assign ap_sync_channel_write_v12239 = ((dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_full_n & ap_channel_done_v12239) | ap_sync_reg_channel_write_v12239);
assign ap_sync_channel_write_v12239_1 = ((dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_full_n & ap_channel_done_v12239_1) | ap_sync_reg_channel_write_v12239_1);
assign ap_sync_channel_write_v12240 = ((dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_full_n & ap_channel_done_v12240) | ap_sync_reg_channel_write_v12240);
assign ap_sync_channel_write_v12240_1 = ((dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_full_n & ap_channel_done_v12240_1) | ap_sync_reg_channel_write_v12240_1);
assign ap_sync_channel_write_v12241 = ((dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_full_n & ap_channel_done_v12241) | ap_sync_reg_channel_write_v12241);
assign ap_sync_channel_write_v12241_1 = ((dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_full_n & ap_channel_done_v12241_1) | ap_sync_reg_channel_write_v12241_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_ap_start = (v12241_t_empty_n & v12241_1_t_empty_n & tmp_436_empty_n);
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_continue = (ap_sync_channel_write_v12241_1 & ap_sync_channel_write_v12241);
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_ap_start = (v12240_t_empty_n & v12240_1_t_empty_n & v12239_t_empty_n & v12239_1_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_1_full_n = v12241_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15649_1_proc127_U0_v12241_full_n = v12241_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_continue = (ap_sync_channel_write_v12239_1 & ap_sync_channel_write_v12239);
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12233 = {{v12233[(3 - 6'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_1_full_n = v12239_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v12239_full_n = v12239_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_continue = (ap_sync_channel_write_v12240_1 & ap_sync_channel_write_v12240 & ap_sync_channel_write_tmp_436);
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12233 = {{v12233[(5 - 6'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_1_full_n = v12240_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v12240_full_n = v12240_i_full_n;
assign v16176_0_address0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_0_address0;
assign v16176_0_address1 = 18'd0;
assign v16176_0_ce0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_0_ce0;
assign v16176_0_ce1 = 1'b0;
assign v16176_0_d0 = 8'd0;
assign v16176_0_d1 = 8'd0;
assign v16176_0_we0 = 1'b0;
assign v16176_0_we1 = 1'b0;
assign v16176_1_address0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_1_address0;
assign v16176_1_address1 = 18'd0;
assign v16176_1_ce0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_1_ce0;
assign v16176_1_ce1 = 1'b0;
assign v16176_1_d0 = 8'd0;
assign v16176_1_d1 = 8'd0;
assign v16176_1_we0 = 1'b0;
assign v16176_1_we1 = 1'b0;
assign v16176_2_address0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_2_address0;
assign v16176_2_address1 = 18'd0;
assign v16176_2_ce0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_2_ce0;
assign v16176_2_ce1 = 1'b0;
assign v16176_2_d0 = 8'd0;
assign v16176_2_d1 = 8'd0;
assign v16176_2_we0 = 1'b0;
assign v16176_2_we1 = 1'b0;
assign v16176_3_address0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_3_address0;
assign v16176_3_address1 = 18'd0;
assign v16176_3_ce0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15707_1_proc12566_U0_v16176_3_ce0;
assign v16176_3_ce1 = 1'b0;
assign v16176_3_d0 = 8'd0;
assign v16176_3_d1 = 8'd0;
assign v16176_3_we0 = 1'b0;
assign v16176_3_we1 = 1'b0;
assign v16177_0_address0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_0_address0;
assign v16177_0_address1 = 17'd0;
assign v16177_0_ce0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_0_ce0;
assign v16177_0_ce1 = 1'b0;
assign v16177_0_d0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_0_d0;
assign v16177_0_d1 = 8'd0;
assign v16177_0_we0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_0_we0;
assign v16177_0_we1 = 1'b0;
assign v16177_1_address0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_1_address0;
assign v16177_1_address1 = 17'd0;
assign v16177_1_ce0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_1_ce0;
assign v16177_1_ce1 = 1'b0;
assign v16177_1_d0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_1_d0;
assign v16177_1_d1 = 8'd0;
assign v16177_1_we0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15621_1_proc12867_U0_v16177_1_we0;
assign v16177_1_we1 = 1'b0;
assign v16178_0_address0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v16178_0_address0;
assign v16178_0_address1 = 17'd0;
assign v16178_0_ce0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v16178_0_ce0;
assign v16178_0_ce1 = 1'b0;
assign v16178_0_d0 = 8'd0;
assign v16178_0_d1 = 8'd0;
assign v16178_0_we0 = 1'b0;
assign v16178_0_we1 = 1'b0;
assign v16178_1_address0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v16178_1_address0;
assign v16178_1_address1 = 17'd0;
assign v16178_1_ce0 = dataflow_in_loop_VITIS_LOOP_15734_1_Loop_VITIS_LOOP_15679_1_proc12665_U0_v16178_1_ce0;
assign v16178_1_ce1 = 1'b0;
assign v16178_1_d0 = 8'd0;
assign v16178_1_d1 = 8'd0;
assign v16178_1_we0 = 1'b0;
assign v16178_1_we1 = 1'b0;
endmodule 