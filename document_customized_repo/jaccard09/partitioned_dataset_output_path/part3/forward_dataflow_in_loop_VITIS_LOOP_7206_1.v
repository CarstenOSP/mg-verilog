
module forward_dataflow_in_loop_VITIS_LOOP_7206_1 (ap_clk,ap_rst,v5766,v13730_1_address0,v13730_1_ce0,v13730_1_d0,v13730_1_q0,v13730_1_we0,v13730_1_address1,v13730_1_ce1,v13730_1_d1,v13730_1_q1,v13730_1_we1,v13730_0_address0,v13730_0_ce0,v13730_0_d0,v13730_0_q0,v13730_0_we0,v13730_0_address1,v13730_0_ce1,v13730_0_d1,v13730_0_q1,v13730_0_we1,v13731_0_address0,v13731_0_ce0,v13731_0_d0,v13731_0_q0,v13731_0_we0,v13731_0_address1,v13731_0_ce1,v13731_0_d1,v13731_0_q1,v13731_0_we1,v13731_1_address0,v13731_1_ce0,v13731_1_d0,v13731_1_q0,v13731_1_we0,v13731_1_address1,v13731_1_ce1,v13731_1_d1,v13731_1_q1,v13731_1_we1,v13729_0_address0,v13729_0_ce0,v13729_0_d0,v13729_0_q0,v13729_0_we0,v13729_0_address1,v13729_0_ce1,v13729_0_d1,v13729_0_q1,v13729_0_we1,v13729_1_address0,v13729_1_ce0,v13729_1_d0,v13729_1_q0,v13729_1_we0,v13729_1_address1,v13729_1_ce1,v13729_1_d1,v13729_1_q1,v13729_1_we1,v13729_2_address0,v13729_2_ce0,v13729_2_d0,v13729_2_q0,v13729_2_we0,v13729_2_address1,v13729_2_ce1,v13729_2_d1,v13729_2_q1,v13729_2_we1,v13729_3_address0,v13729_3_ce0,v13729_3_d0,v13729_3_q0,v13729_3_we0,v13729_3_address1,v13729_3_ce1,v13729_3_d1,v13729_3_q1,v13729_3_we1,v5766_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [8:0] v5766;
output  [14:0] v13730_1_address0;
output   v13730_1_ce0;
output  [7:0] v13730_1_d0;
input  [7:0] v13730_1_q0;
output   v13730_1_we0;
output  [14:0] v13730_1_address1;
output   v13730_1_ce1;
output  [7:0] v13730_1_d1;
input  [7:0] v13730_1_q1;
output   v13730_1_we1;
output  [14:0] v13730_0_address0;
output   v13730_0_ce0;
output  [7:0] v13730_0_d0;
input  [7:0] v13730_0_q0;
output   v13730_0_we0;
output  [14:0] v13730_0_address1;
output   v13730_0_ce1;
output  [7:0] v13730_0_d1;
input  [7:0] v13730_0_q1;
output   v13730_0_we1;
output  [14:0] v13731_0_address0;
output   v13731_0_ce0;
output  [7:0] v13731_0_d0;
input  [7:0] v13731_0_q0;
output   v13731_0_we0;
output  [14:0] v13731_0_address1;
output   v13731_0_ce1;
output  [7:0] v13731_0_d1;
input  [7:0] v13731_0_q1;
output   v13731_0_we1;
output  [14:0] v13731_1_address0;
output   v13731_1_ce0;
output  [7:0] v13731_1_d0;
input  [7:0] v13731_1_q0;
output   v13731_1_we0;
output  [14:0] v13731_1_address1;
output   v13731_1_ce1;
output  [7:0] v13731_1_d1;
input  [7:0] v13731_1_q1;
output   v13731_1_we1;
output  [15:0] v13729_0_address0;
output   v13729_0_ce0;
output  [7:0] v13729_0_d0;
input  [7:0] v13729_0_q0;
output   v13729_0_we0;
output  [15:0] v13729_0_address1;
output   v13729_0_ce1;
output  [7:0] v13729_0_d1;
input  [7:0] v13729_0_q1;
output   v13729_0_we1;
output  [15:0] v13729_1_address0;
output   v13729_1_ce0;
output  [7:0] v13729_1_d0;
input  [7:0] v13729_1_q0;
output   v13729_1_we0;
output  [15:0] v13729_1_address1;
output   v13729_1_ce1;
output  [7:0] v13729_1_d1;
input  [7:0] v13729_1_q1;
output   v13729_1_we1;
output  [15:0] v13729_2_address0;
output   v13729_2_ce0;
output  [7:0] v13729_2_d0;
input  [7:0] v13729_2_q0;
output   v13729_2_we0;
output  [15:0] v13729_2_address1;
output   v13729_2_ce1;
output  [7:0] v13729_2_d1;
input  [7:0] v13729_2_q1;
output   v13729_2_we1;
output  [15:0] v13729_3_address0;
output   v13729_3_ce0;
output  [7:0] v13729_3_d0;
input  [7:0] v13729_3_q0;
output   v13729_3_we0;
output  [15:0] v13729_3_address1;
output   v13729_3_ce1;
output  [7:0] v13729_3_d1;
input  [7:0] v13729_3_q1;
output   v13729_3_we1;
input   v5766_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v5774_i_q0;
wire   [7:0] v5774_t_q0;
wire   [7:0] v5774_1_i_q0;
wire   [7:0] v5774_1_t_q0;
wire   [7:0] v5773_i_q0;
wire   [7:0] v5773_t_q0;
wire   [7:0] v5773_1_i_q0;
wire   [7:0] v5773_1_t_q0;
wire   [7:0] v5772_i_q0;
wire   [7:0] v5772_t_q0;
wire   [7:0] v5772_1_i_q0;
wire   [7:0] v5772_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_ce0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_d0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5766;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_0_ce0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_1_ce0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_2_ce0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_3_ce0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_return;
wire    ap_channel_done_tmp_167;
wire    tmp_167_full_n;
reg    ap_sync_reg_channel_write_tmp_167;
wire    ap_sync_channel_write_tmp_167;
wire    ap_channel_done_v5773_1;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_full_n;
reg    ap_sync_reg_channel_write_v5773_1;
wire    ap_sync_channel_write_v5773_1;
wire    ap_channel_done_v5773;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_full_n;
reg    ap_sync_reg_channel_write_v5773;
wire    ap_sync_channel_write_v5773;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_ce0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_d0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5766;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v13731_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v13731_0_ce0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v13731_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v13731_1_ce0;
wire    ap_channel_done_v5772_1;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_full_n;
reg    ap_sync_reg_channel_write_v5772_1;
wire    ap_sync_channel_write_v5772_1;
wire    ap_channel_done_v5772;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_full_n;
reg    ap_sync_reg_channel_write_v5772;
wire    ap_sync_channel_write_v5772;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_ready;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_ce0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5773_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5773_1_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5772_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5772_1_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5773_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5773_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5772_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5772_ce0;
wire    ap_channel_done_v5774_1;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_full_n;
reg    ap_sync_reg_channel_write_v5774_1;
wire    ap_sync_channel_write_v5774_1;
wire    ap_channel_done_v5774;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_full_n;
reg    ap_sync_reg_channel_write_v5774;
wire    ap_sync_channel_write_v5774;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_ready;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_1_d0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_0_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v5774_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v5774_1_i_ce0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v5774_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v5774_i_ce0;
wire    v5773_i_full_n;
wire    v5773_t_empty_n;
wire    v5773_1_i_full_n;
wire    v5773_1_t_empty_n;
wire    v5772_i_full_n;
wire    v5772_t_empty_n;
wire    v5772_1_i_full_n;
wire    v5772_1_t_empty_n;
wire    v5774_i_full_n;
wire    v5774_t_empty_n;
wire    v5774_1_i_full_n;
wire    v5774_1_t_empty_n;
wire   [5:0] tmp_167_dout;
wire   [2:0] tmp_167_num_data_valid;
wire   [2:0] tmp_167_fifo_cap;
wire    tmp_167_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_tmp_167 = 1'b0;
#0 ap_sync_reg_channel_write_v5773_1 = 1'b0;
#0 ap_sync_reg_channel_write_v5773 = 1'b0;
#0 ap_sync_reg_channel_write_v5772_1 = 1'b0;
#0 ap_sync_reg_channel_write_v5772 = 1'b0;
#0 ap_sync_reg_channel_write_v5774_1 = 1'b0;
#0 ap_sync_reg_channel_write_v5774 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_7206_1_v5774_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 480 ),.AddressWidth( 9 ))
v5774_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_d0),.i_q0(v5774_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v5774_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v5774_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v5774_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v5774_i_full_n),.i_write(ap_channel_done_v5774),.t_empty_n(v5774_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_7206_1_v5774_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 480 ),.AddressWidth( 9 ))
v5774_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_d0),.i_q0(v5774_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v5774_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v5774_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v5774_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v5774_1_i_full_n),.i_write(ap_channel_done_v5774_1),.t_empty_n(v5774_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_7206_1_v5774_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 480 ),.AddressWidth( 9 ))
v5773_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_d0),.i_q0(v5773_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5773_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5773_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v5773_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v5773_i_full_n),.i_write(ap_channel_done_v5773),.t_empty_n(v5773_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_7206_1_v5774_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 480 ),.AddressWidth( 9 ))
v5773_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_d0),.i_q0(v5773_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5773_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5773_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v5773_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v5773_1_i_full_n),.i_write(ap_channel_done_v5773_1),.t_empty_n(v5773_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_7206_1_v5774_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 480 ),.AddressWidth( 9 ))
v5772_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_d0),.i_q0(v5772_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5772_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5772_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v5772_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v5772_i_full_n),.i_write(ap_channel_done_v5772),.t_empty_n(v5772_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_7206_1_v5774_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 480 ),.AddressWidth( 9 ))
v5772_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_d0),.i_q0(v5772_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5772_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5772_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v5772_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v5772_1_i_full_n),.i_write(ap_channel_done_v5772_1),.t_empty_n(v5772_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101 dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready),.v5773_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_address0),.v5773_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_ce0),.v5773_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_we0),.v5773_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_d0),.v5773_1_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_address0),.v5773_1_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_ce0),.v5773_1_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_we0),.v5773_1_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_d0),.v5766(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5766),.v13729_0_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_0_address0),.v13729_0_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_0_ce0),.v13729_0_q0(v13729_0_q0),.v13729_1_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_1_address0),.v13729_1_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_1_ce0),.v13729_1_q0(v13729_1_q0),.v13729_2_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_2_address0),.v13729_2_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_2_ce0),.v13729_2_q0(v13729_2_q0),.v13729_3_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_3_address0),.v13729_3_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_3_ce0),.v13729_3_q0(v13729_3_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100 dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready),.v5772_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_address0),.v5772_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_ce0),.v5772_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_we0),.v5772_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_d0),.v5772_1_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_address0),.v5772_1_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_ce0),.v5772_1_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_we0),.v5772_1_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_d0),.v5766(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5766),.v13731_0_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v13731_0_address0),.v13731_0_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v13731_0_ce0),.v13731_0_q0(v13731_0_q0),.v13731_1_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v13731_1_address0),.v13731_1_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v13731_1_ce0),.v13731_1_q0(v13731_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111 dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_ready),.v5774_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_address0),.v5774_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_ce0),.v5774_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_we0),.v5774_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_d0),.v5774_1_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_address0),.v5774_1_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_ce0),.v5774_1_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_we0),.v5774_1_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_d0),.v5773_1_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5773_1_address0),.v5773_1_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5773_1_ce0),.v5773_1_q0(v5773_1_t_q0),.v5772_1_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5772_1_address0),.v5772_1_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5772_1_ce0),.v5772_1_q0(v5772_1_t_q0),.v5773_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5773_address0),.v5773_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5773_ce0),.v5773_q0(v5773_t_q0),.v5772_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5772_address0),.v5772_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5772_ce0),.v5772_q0(v5772_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102 dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_ready),.v13730_1_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_1_address0),.v13730_1_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_1_ce0),.v13730_1_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_1_we0),.v13730_1_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_1_d0),.v13730_0_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_0_address0),.v13730_0_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_0_ce0),.v13730_0_we0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_0_we0),.v13730_0_d0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_0_d0),.p_read(tmp_167_dout),.v5774_1_i_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v5774_1_i_address0),.v5774_1_i_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v5774_1_i_ce0),.v5774_1_i_q0(v5774_1_t_q0),.v5774_i_address0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v5774_i_address0),.v5774_i_ce0(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v5774_i_ce0),.v5774_i_q0(v5774_t_q0));
forward_fifo_w6_d3_S tmp_167_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_return),.if_full_n(tmp_167_full_n),.if_write(ap_channel_done_tmp_167),.if_dout(tmp_167_dout),.if_num_data_valid(tmp_167_num_data_valid),.if_fifo_cap(tmp_167_fifo_cap),.if_empty_n(tmp_167_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_tmp_167 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_done & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_tmp_167 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_tmp_167 <= ap_sync_channel_write_tmp_167;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v5772 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_done & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v5772 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v5772 <= ap_sync_channel_write_v5772;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v5772_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_done & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v5772_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v5772_1 <= ap_sync_channel_write_v5772_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v5773 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_done & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v5773 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v5773 <= ap_sync_channel_write_v5773;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v5773_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_done & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v5773_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v5773_1 <= ap_sync_channel_write_v5773_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v5774 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_done & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v5774 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v5774 <= ap_sync_channel_write_v5774;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v5774_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_done & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v5774_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v5774_1 <= ap_sync_channel_write_v5774_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready;
        end
    end
end
assign ap_channel_done_tmp_167 = ((ap_sync_reg_channel_write_tmp_167 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_done);
assign ap_channel_done_v5772 = ((ap_sync_reg_channel_write_v5772 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_done);
assign ap_channel_done_v5772_1 = ((ap_sync_reg_channel_write_v5772_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_done);
assign ap_channel_done_v5773 = ((ap_sync_reg_channel_write_v5773 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_done);
assign ap_channel_done_v5773_1 = ((ap_sync_reg_channel_write_v5773_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_done);
assign ap_channel_done_v5774 = ((ap_sync_reg_channel_write_v5774 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_done);
assign ap_channel_done_v5774_1 = ((ap_sync_reg_channel_write_v5774_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_done;
assign ap_idle = ((tmp_167_empty_n ^ 1'b1) & (v5774_1_t_empty_n ^ 1'b1) & (v5774_t_empty_n ^ 1'b1) & (v5772_1_t_empty_n ^ 1'b1) & (v5772_t_empty_n ^ 1'b1) & (v5773_1_t_empty_n ^ 1'b1) & (v5773_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_tmp_167 = ((tmp_167_full_n & ap_channel_done_tmp_167) | ap_sync_reg_channel_write_tmp_167);
assign ap_sync_channel_write_v5772 = ((dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_full_n & ap_channel_done_v5772) | ap_sync_reg_channel_write_v5772);
assign ap_sync_channel_write_v5772_1 = ((dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_full_n & ap_channel_done_v5772_1) | ap_sync_reg_channel_write_v5772_1);
assign ap_sync_channel_write_v5773 = ((dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_full_n & ap_channel_done_v5773) | ap_sync_reg_channel_write_v5773);
assign ap_sync_channel_write_v5773_1 = ((dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_full_n & ap_channel_done_v5773_1) | ap_sync_reg_channel_write_v5773_1);
assign ap_sync_channel_write_v5774 = ((dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_full_n & ap_channel_done_v5774) | ap_sync_reg_channel_write_v5774);
assign ap_sync_channel_write_v5774_1 = ((dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_full_n & ap_channel_done_v5774_1) | ap_sync_reg_channel_write_v5774_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_ap_start = (v5774_t_empty_n & v5774_1_t_empty_n & tmp_167_empty_n);
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_continue = (ap_sync_channel_write_v5774_1 & ap_sync_channel_write_v5774);
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_ap_start = (v5773_t_empty_n & v5773_1_t_empty_n & v5772_t_empty_n & v5772_1_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_1_full_n = v5774_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7121_1_proc111_U0_v5774_full_n = v5774_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_continue = (ap_sync_channel_write_v5772_1 & ap_sync_channel_write_v5772);
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5766 = {{v5766[(6 - 9'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_1_full_n = v5772_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v5772_full_n = v5772_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_continue = (ap_sync_channel_write_v5773_1 & ap_sync_channel_write_v5773 & ap_sync_channel_write_tmp_167);
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5766 = {{v5766[(8 - 9'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_1_full_n = v5773_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v5773_full_n = v5773_i_full_n;
assign v13729_0_address0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_0_address0;
assign v13729_0_address1 = 16'd0;
assign v13729_0_ce0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_0_ce0;
assign v13729_0_ce1 = 1'b0;
assign v13729_0_d0 = 8'd0;
assign v13729_0_d1 = 8'd0;
assign v13729_0_we0 = 1'b0;
assign v13729_0_we1 = 1'b0;
assign v13729_1_address0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_1_address0;
assign v13729_1_address1 = 16'd0;
assign v13729_1_ce0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_1_ce0;
assign v13729_1_ce1 = 1'b0;
assign v13729_1_d0 = 8'd0;
assign v13729_1_d1 = 8'd0;
assign v13729_1_we0 = 1'b0;
assign v13729_1_we1 = 1'b0;
assign v13729_2_address0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_2_address0;
assign v13729_2_address1 = 16'd0;
assign v13729_2_ce0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_2_ce0;
assign v13729_2_ce1 = 1'b0;
assign v13729_2_d0 = 8'd0;
assign v13729_2_d1 = 8'd0;
assign v13729_2_we0 = 1'b0;
assign v13729_2_we1 = 1'b0;
assign v13729_3_address0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_3_address0;
assign v13729_3_address1 = 16'd0;
assign v13729_3_ce0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7179_1_proc109101_U0_v13729_3_ce0;
assign v13729_3_ce1 = 1'b0;
assign v13729_3_d0 = 8'd0;
assign v13729_3_d1 = 8'd0;
assign v13729_3_we0 = 1'b0;
assign v13729_3_we1 = 1'b0;
assign v13730_0_address0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_0_address0;
assign v13730_0_address1 = 15'd0;
assign v13730_0_ce0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_0_ce0;
assign v13730_0_ce1 = 1'b0;
assign v13730_0_d0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_0_d0;
assign v13730_0_d1 = 8'd0;
assign v13730_0_we0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_0_we0;
assign v13730_0_we1 = 1'b0;
assign v13730_1_address0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_1_address0;
assign v13730_1_address1 = 15'd0;
assign v13730_1_ce0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_1_ce0;
assign v13730_1_ce1 = 1'b0;
assign v13730_1_d0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_1_d0;
assign v13730_1_d1 = 8'd0;
assign v13730_1_we0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7093_1_proc112102_U0_v13730_1_we0;
assign v13730_1_we1 = 1'b0;
assign v13731_0_address0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v13731_0_address0;
assign v13731_0_address1 = 15'd0;
assign v13731_0_ce0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v13731_0_ce0;
assign v13731_0_ce1 = 1'b0;
assign v13731_0_d0 = 8'd0;
assign v13731_0_d1 = 8'd0;
assign v13731_0_we0 = 1'b0;
assign v13731_0_we1 = 1'b0;
assign v13731_1_address0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v13731_1_address0;
assign v13731_1_address1 = 15'd0;
assign v13731_1_ce0 = dataflow_in_loop_VITIS_LOOP_7206_1_Loop_VITIS_LOOP_7151_1_proc110100_U0_v13731_1_ce0;
assign v13731_1_ce1 = 1'b0;
assign v13731_1_d0 = 8'd0;
assign v13731_1_d1 = 8'd0;
assign v13731_1_we0 = 1'b0;
assign v13731_1_we1 = 1'b0;
endmodule 
