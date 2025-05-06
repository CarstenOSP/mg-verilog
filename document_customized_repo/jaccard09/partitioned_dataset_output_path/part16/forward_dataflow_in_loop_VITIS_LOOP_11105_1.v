
module forward_dataflow_in_loop_VITIS_LOOP_11105_1 (ap_clk,ap_rst,v8727,v16189_1_address0,v16189_1_ce0,v16189_1_d0,v16189_1_q0,v16189_1_we0,v16189_1_address1,v16189_1_ce1,v16189_1_d1,v16189_1_q1,v16189_1_we1,v16189_0_address0,v16189_0_ce0,v16189_0_d0,v16189_0_q0,v16189_0_we0,v16189_0_address1,v16189_0_ce1,v16189_0_d1,v16189_0_q1,v16189_0_we1,v16190_0_address0,v16190_0_ce0,v16190_0_d0,v16190_0_q0,v16190_0_we0,v16190_0_address1,v16190_0_ce1,v16190_0_d1,v16190_0_q1,v16190_0_we1,v16190_1_address0,v16190_1_ce0,v16190_1_d0,v16190_1_q0,v16190_1_we0,v16190_1_address1,v16190_1_ce1,v16190_1_d1,v16190_1_q1,v16190_1_we1,v16188_0_address0,v16188_0_ce0,v16188_0_d0,v16188_0_q0,v16188_0_we0,v16188_0_address1,v16188_0_ce1,v16188_0_d1,v16188_0_q1,v16188_0_we1,v16188_1_address0,v16188_1_ce0,v16188_1_d0,v16188_1_q0,v16188_1_we0,v16188_1_address1,v16188_1_ce1,v16188_1_d1,v16188_1_q1,v16188_1_we1,v16188_2_address0,v16188_2_ce0,v16188_2_d0,v16188_2_q0,v16188_2_we0,v16188_2_address1,v16188_2_ce1,v16188_2_d1,v16188_2_q1,v16188_2_we1,v16188_3_address0,v16188_3_ce0,v16188_3_d0,v16188_3_q0,v16188_3_we0,v16188_3_address1,v16188_3_ce1,v16188_3_d1,v16188_3_q1,v16188_3_we1,v8727_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [6:0] v8727;
output  [15:0] v16189_1_address0;
output   v16189_1_ce0;
output  [7:0] v16189_1_d0;
input  [7:0] v16189_1_q0;
output   v16189_1_we0;
output  [15:0] v16189_1_address1;
output   v16189_1_ce1;
output  [7:0] v16189_1_d1;
input  [7:0] v16189_1_q1;
output   v16189_1_we1;
output  [15:0] v16189_0_address0;
output   v16189_0_ce0;
output  [7:0] v16189_0_d0;
input  [7:0] v16189_0_q0;
output   v16189_0_we0;
output  [15:0] v16189_0_address1;
output   v16189_0_ce1;
output  [7:0] v16189_0_d1;
input  [7:0] v16189_0_q1;
output   v16189_0_we1;
output  [15:0] v16190_0_address0;
output   v16190_0_ce0;
output  [7:0] v16190_0_d0;
input  [7:0] v16190_0_q0;
output   v16190_0_we0;
output  [15:0] v16190_0_address1;
output   v16190_0_ce1;
output  [7:0] v16190_0_d1;
input  [7:0] v16190_0_q1;
output   v16190_0_we1;
output  [15:0] v16190_1_address0;
output   v16190_1_ce0;
output  [7:0] v16190_1_d0;
input  [7:0] v16190_1_q0;
output   v16190_1_we0;
output  [15:0] v16190_1_address1;
output   v16190_1_ce1;
output  [7:0] v16190_1_d1;
input  [7:0] v16190_1_q1;
output   v16190_1_we1;
output  [16:0] v16188_0_address0;
output   v16188_0_ce0;
output  [7:0] v16188_0_d0;
input  [7:0] v16188_0_q0;
output   v16188_0_we0;
output  [16:0] v16188_0_address1;
output   v16188_0_ce1;
output  [7:0] v16188_0_d1;
input  [7:0] v16188_0_q1;
output   v16188_0_we1;
output  [16:0] v16188_1_address0;
output   v16188_1_ce0;
output  [7:0] v16188_1_d0;
input  [7:0] v16188_1_q0;
output   v16188_1_we0;
output  [16:0] v16188_1_address1;
output   v16188_1_ce1;
output  [7:0] v16188_1_d1;
input  [7:0] v16188_1_q1;
output   v16188_1_we1;
output  [16:0] v16188_2_address0;
output   v16188_2_ce0;
output  [7:0] v16188_2_d0;
input  [7:0] v16188_2_q0;
output   v16188_2_we0;
output  [16:0] v16188_2_address1;
output   v16188_2_ce1;
output  [7:0] v16188_2_d1;
input  [7:0] v16188_2_q1;
output   v16188_2_we1;
output  [16:0] v16188_3_address0;
output   v16188_3_ce0;
output  [7:0] v16188_3_d0;
input  [7:0] v16188_3_q0;
output   v16188_3_we0;
output  [16:0] v16188_3_address1;
output   v16188_3_ce1;
output  [7:0] v16188_3_d1;
input  [7:0] v16188_3_q1;
output   v16188_3_we1;
input   v8727_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v8735_i_q0;
wire   [7:0] v8735_t_q0;
wire   [7:0] v8735_1_i_q0;
wire   [7:0] v8735_1_t_q0;
wire   [7:0] v8734_i_q0;
wire   [7:0] v8734_t_q0;
wire   [7:0] v8734_1_i_q0;
wire   [7:0] v8734_1_t_q0;
wire   [7:0] v8733_i_q0;
wire   [7:0] v8733_t_q0;
wire   [7:0] v8733_1_i_q0;
wire   [7:0] v8733_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_ce0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_d0;
wire   [5:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8727;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_0_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_1_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_2_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_2_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_3_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_3_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_return;
wire    ap_channel_done_tmp_662;
wire    tmp_662_full_n;
reg    ap_sync_reg_channel_write_tmp_662;
wire    ap_sync_channel_write_tmp_662;
wire    ap_channel_done_v8734_1;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_full_n;
reg    ap_sync_reg_channel_write_v8734_1;
wire    ap_sync_channel_write_v8734_1;
wire    ap_channel_done_v8734;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_full_n;
reg    ap_sync_reg_channel_write_v8734;
wire    ap_sync_channel_write_v8734;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_ce0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8727;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v16190_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v16190_0_ce0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v16190_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v16190_1_ce0;
wire    ap_channel_done_v8733_1;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_full_n;
reg    ap_sync_reg_channel_write_v8733_1;
wire    ap_sync_channel_write_v8733_1;
wire    ap_channel_done_v8733;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_full_n;
reg    ap_sync_reg_channel_write_v8733;
wire    ap_sync_channel_write_v8733;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_ce0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8734_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8734_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8733_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8733_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8734_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8734_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8733_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8733_ce0;
wire    ap_channel_done_v8735_1;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_full_n;
reg    ap_sync_reg_channel_write_v8735_1;
wire    ap_sync_channel_write_v8735_1;
wire    ap_channel_done_v8735;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_full_n;
reg    ap_sync_reg_channel_write_v8735;
wire    ap_sync_channel_write_v8735;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_ready;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_1_d0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_0_d0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v8735_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v8735_1_i_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v8735_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v8735_i_ce0;
wire    v8734_i_full_n;
wire    v8734_t_empty_n;
wire    v8734_1_i_full_n;
wire    v8734_1_t_empty_n;
wire    v8733_i_full_n;
wire    v8733_t_empty_n;
wire    v8733_1_i_full_n;
wire    v8733_1_t_empty_n;
wire    v8735_i_full_n;
wire    v8735_t_empty_n;
wire    v8735_1_i_full_n;
wire    v8735_1_t_empty_n;
wire   [3:0] tmp_662_dout;
wire   [2:0] tmp_662_num_data_valid;
wire   [2:0] tmp_662_fifo_cap;
wire    tmp_662_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_tmp_662 = 1'b0;
#0 ap_sync_reg_channel_write_v8734_1 = 1'b0;
#0 ap_sync_reg_channel_write_v8734 = 1'b0;
#0 ap_sync_reg_channel_write_v8733_1 = 1'b0;
#0 ap_sync_reg_channel_write_v8733 = 1'b0;
#0 ap_sync_reg_channel_write_v8735_1 = 1'b0;
#0 ap_sync_reg_channel_write_v8735 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_11105_1_v8735_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v8735_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_d0),.i_q0(v8735_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v8735_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v8735_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8735_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8735_i_full_n),.i_write(ap_channel_done_v8735),.t_empty_n(v8735_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_11105_1_v8735_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v8735_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_d0),.i_q0(v8735_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v8735_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v8735_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8735_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8735_1_i_full_n),.i_write(ap_channel_done_v8735_1),.t_empty_n(v8735_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_11105_1_v8735_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v8734_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_d0),.i_q0(v8734_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8734_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8734_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8734_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8734_i_full_n),.i_write(ap_channel_done_v8734),.t_empty_n(v8734_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_11105_1_v8735_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v8734_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_d0),.i_q0(v8734_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8734_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8734_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8734_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8734_1_i_full_n),.i_write(ap_channel_done_v8734_1),.t_empty_n(v8734_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_11105_1_v8735_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v8733_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_d0),.i_q0(v8733_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8733_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8733_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8733_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8733_i_full_n),.i_write(ap_channel_done_v8733),.t_empty_n(v8733_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_11105_1_v8735_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 3136 ),.AddressWidth( 12 ))
v8733_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_d0),.i_q0(v8733_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8733_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8733_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v8733_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v8733_1_i_full_n),.i_write(ap_channel_done_v8733_1),.t_empty_n(v8733_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993 dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready),.v8734_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_address0),.v8734_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_ce0),.v8734_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_we0),.v8734_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_d0),.v8734_1_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_address0),.v8734_1_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_ce0),.v8734_1_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_we0),.v8734_1_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_d0),.v8727(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8727),.v16188_0_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_0_address0),.v16188_0_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_0_ce0),.v16188_0_q0(v16188_0_q0),.v16188_1_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_1_address0),.v16188_1_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_1_ce0),.v16188_1_q0(v16188_1_q0),.v16188_2_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_2_address0),.v16188_2_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_2_ce0),.v16188_2_q0(v16188_2_q0),.v16188_3_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_3_address0),.v16188_3_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_3_ce0),.v16188_3_q0(v16188_3_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092 dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready),.v8733_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_address0),.v8733_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_ce0),.v8733_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_we0),.v8733_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_d0),.v8733_1_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_address0),.v8733_1_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_ce0),.v8733_1_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_we0),.v8733_1_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_d0),.v8727(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8727),.v16190_0_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v16190_0_address0),.v16190_0_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v16190_0_ce0),.v16190_0_q0(v16190_0_q0),.v16190_1_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v16190_1_address0),.v16190_1_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v16190_1_ce0),.v16190_1_q0(v16190_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131 dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_ready),.v8735_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_address0),.v8735_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_ce0),.v8735_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_we0),.v8735_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_d0),.v8735_1_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_address0),.v8735_1_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_ce0),.v8735_1_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_we0),.v8735_1_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_d0),.v8734_1_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8734_1_address0),.v8734_1_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8734_1_ce0),.v8734_1_q0(v8734_1_t_q0),.v8733_1_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8733_1_address0),.v8733_1_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8733_1_ce0),.v8733_1_q0(v8733_1_t_q0),.v8734_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8734_address0),.v8734_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8734_ce0),.v8734_q0(v8734_t_q0),.v8733_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8733_address0),.v8733_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8733_ce0),.v8733_q0(v8733_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294 dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_ready),.v16189_1_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_1_address0),.v16189_1_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_1_ce0),.v16189_1_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_1_we0),.v16189_1_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_1_d0),.v16189_0_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_0_address0),.v16189_0_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_0_ce0),.v16189_0_we0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_0_we0),.v16189_0_d0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_0_d0),.p_read(tmp_662_dout),.v8735_1_i_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v8735_1_i_address0),.v8735_1_i_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v8735_1_i_ce0),.v8735_1_i_q0(v8735_1_t_q0),.v8735_i_address0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v8735_i_address0),.v8735_i_ce0(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v8735_i_ce0),.v8735_i_q0(v8735_t_q0));
forward_fifo_w4_d3_S tmp_662_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_return),.if_full_n(tmp_662_full_n),.if_write(ap_channel_done_tmp_662),.if_dout(tmp_662_dout),.if_num_data_valid(tmp_662_num_data_valid),.if_fifo_cap(tmp_662_fifo_cap),.if_empty_n(tmp_662_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_tmp_662 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_done & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_tmp_662 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_tmp_662 <= ap_sync_channel_write_tmp_662;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8733 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_done & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8733 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8733 <= ap_sync_channel_write_v8733;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8733_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_done & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8733_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8733_1 <= ap_sync_channel_write_v8733_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8734 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_done & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8734 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8734 <= ap_sync_channel_write_v8734;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8734_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_done & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8734_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8734_1 <= ap_sync_channel_write_v8734_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8735 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_done & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8735 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8735 <= ap_sync_channel_write_v8735;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v8735_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_done & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v8735_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v8735_1 <= ap_sync_channel_write_v8735_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready;
        end
    end
end
assign ap_channel_done_tmp_662 = ((ap_sync_reg_channel_write_tmp_662 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_done);
assign ap_channel_done_v8733 = ((ap_sync_reg_channel_write_v8733 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_done);
assign ap_channel_done_v8733_1 = ((ap_sync_reg_channel_write_v8733_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_done);
assign ap_channel_done_v8734 = ((ap_sync_reg_channel_write_v8734 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_done);
assign ap_channel_done_v8734_1 = ((ap_sync_reg_channel_write_v8734_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_done);
assign ap_channel_done_v8735 = ((ap_sync_reg_channel_write_v8735 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_done);
assign ap_channel_done_v8735_1 = ((ap_sync_reg_channel_write_v8735_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_done;
assign ap_idle = ((tmp_662_empty_n ^ 1'b1) & (v8735_1_t_empty_n ^ 1'b1) & (v8735_t_empty_n ^ 1'b1) & (v8733_1_t_empty_n ^ 1'b1) & (v8733_t_empty_n ^ 1'b1) & (v8734_1_t_empty_n ^ 1'b1) & (v8734_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_tmp_662 = ((tmp_662_full_n & ap_channel_done_tmp_662) | ap_sync_reg_channel_write_tmp_662);
assign ap_sync_channel_write_v8733 = ((dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_full_n & ap_channel_done_v8733) | ap_sync_reg_channel_write_v8733);
assign ap_sync_channel_write_v8733_1 = ((dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_full_n & ap_channel_done_v8733_1) | ap_sync_reg_channel_write_v8733_1);
assign ap_sync_channel_write_v8734 = ((dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_full_n & ap_channel_done_v8734) | ap_sync_reg_channel_write_v8734);
assign ap_sync_channel_write_v8734_1 = ((dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_full_n & ap_channel_done_v8734_1) | ap_sync_reg_channel_write_v8734_1);
assign ap_sync_channel_write_v8735 = ((dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_full_n & ap_channel_done_v8735) | ap_sync_reg_channel_write_v8735);
assign ap_sync_channel_write_v8735_1 = ((dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_full_n & ap_channel_done_v8735_1) | ap_sync_reg_channel_write_v8735_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_ap_start = (v8735_t_empty_n & v8735_1_t_empty_n & tmp_662_empty_n);
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_continue = (ap_sync_channel_write_v8735_1 & ap_sync_channel_write_v8735);
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_ap_start = (v8734_t_empty_n & v8734_1_t_empty_n & v8733_t_empty_n & v8733_1_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_1_full_n = v8735_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11020_1_proc131_U0_v8735_full_n = v8735_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_continue = (ap_sync_channel_write_v8733_1 & ap_sync_channel_write_v8733);
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8727 = {{v8727[(4 - 7'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_1_full_n = v8733_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v8733_full_n = v8733_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_continue = (ap_sync_channel_write_v8734_1 & ap_sync_channel_write_v8734 & ap_sync_channel_write_tmp_662);
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8727 = {{v8727[(6 - 7'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_1_full_n = v8734_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v8734_full_n = v8734_i_full_n;
assign v16188_0_address0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_0_address0;
assign v16188_0_address1 = 17'd0;
assign v16188_0_ce0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_0_ce0;
assign v16188_0_ce1 = 1'b0;
assign v16188_0_d0 = 8'd0;
assign v16188_0_d1 = 8'd0;
assign v16188_0_we0 = 1'b0;
assign v16188_0_we1 = 1'b0;
assign v16188_1_address0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_1_address0;
assign v16188_1_address1 = 17'd0;
assign v16188_1_ce0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_1_ce0;
assign v16188_1_ce1 = 1'b0;
assign v16188_1_d0 = 8'd0;
assign v16188_1_d1 = 8'd0;
assign v16188_1_we0 = 1'b0;
assign v16188_1_we1 = 1'b0;
assign v16188_2_address0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_2_address0;
assign v16188_2_address1 = 17'd0;
assign v16188_2_ce0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_2_ce0;
assign v16188_2_ce1 = 1'b0;
assign v16188_2_d0 = 8'd0;
assign v16188_2_d1 = 8'd0;
assign v16188_2_we0 = 1'b0;
assign v16188_2_we1 = 1'b0;
assign v16188_3_address0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_3_address0;
assign v16188_3_address1 = 17'd0;
assign v16188_3_ce0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11078_1_proc12993_U0_v16188_3_ce0;
assign v16188_3_ce1 = 1'b0;
assign v16188_3_d0 = 8'd0;
assign v16188_3_d1 = 8'd0;
assign v16188_3_we0 = 1'b0;
assign v16188_3_we1 = 1'b0;
assign v16189_0_address0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_0_address0;
assign v16189_0_address1 = 16'd0;
assign v16189_0_ce0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_0_ce0;
assign v16189_0_ce1 = 1'b0;
assign v16189_0_d0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_0_d0;
assign v16189_0_d1 = 8'd0;
assign v16189_0_we0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_0_we0;
assign v16189_0_we1 = 1'b0;
assign v16189_1_address0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_1_address0;
assign v16189_1_address1 = 16'd0;
assign v16189_1_ce0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_1_ce0;
assign v16189_1_ce1 = 1'b0;
assign v16189_1_d0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_1_d0;
assign v16189_1_d1 = 8'd0;
assign v16189_1_we0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_10992_1_proc13294_U0_v16189_1_we0;
assign v16189_1_we1 = 1'b0;
assign v16190_0_address0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v16190_0_address0;
assign v16190_0_address1 = 16'd0;
assign v16190_0_ce0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v16190_0_ce0;
assign v16190_0_ce1 = 1'b0;
assign v16190_0_d0 = 8'd0;
assign v16190_0_d1 = 8'd0;
assign v16190_0_we0 = 1'b0;
assign v16190_0_we1 = 1'b0;
assign v16190_1_address0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v16190_1_address0;
assign v16190_1_address1 = 16'd0;
assign v16190_1_ce0 = dataflow_in_loop_VITIS_LOOP_11105_1_Loop_VITIS_LOOP_11050_1_proc13092_U0_v16190_1_ce0;
assign v16190_1_ce1 = 1'b0;
assign v16190_1_d0 = 8'd0;
assign v16190_1_d1 = 8'd0;
assign v16190_1_we0 = 1'b0;
assign v16190_1_we1 = 1'b0;
endmodule 
