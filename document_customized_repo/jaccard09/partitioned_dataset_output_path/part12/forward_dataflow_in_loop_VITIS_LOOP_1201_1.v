
module forward_dataflow_in_loop_VITIS_LOOP_1201_1 (ap_clk,ap_rst,v667_0,v16213_1_address0,v16213_1_ce0,v16213_1_d0,v16213_1_q0,v16213_1_we0,v16213_1_address1,v16213_1_ce1,v16213_1_d1,v16213_1_q1,v16213_1_we1,v16213_0_address0,v16213_0_ce0,v16213_0_d0,v16213_0_q0,v16213_0_we0,v16213_0_address1,v16213_0_ce1,v16213_0_d1,v16213_0_q1,v16213_0_we1,v16214_0_address0,v16214_0_ce0,v16214_0_d0,v16214_0_q0,v16214_0_we0,v16214_0_address1,v16214_0_ce1,v16214_0_d1,v16214_0_q1,v16214_0_we1,v16214_1_address0,v16214_1_ce0,v16214_1_d0,v16214_1_q0,v16214_1_we0,v16214_1_address1,v16214_1_ce1,v16214_1_d1,v16214_1_q1,v16214_1_we1,v16212_0_address0,v16212_0_ce0,v16212_0_d0,v16212_0_q0,v16212_0_we0,v16212_0_address1,v16212_0_ce1,v16212_0_d1,v16212_0_q1,v16212_0_we1,v16212_1_address0,v16212_1_ce0,v16212_1_d0,v16212_1_q0,v16212_1_we0,v16212_1_address1,v16212_1_ce1,v16212_1_d1,v16212_1_q1,v16212_1_we1,v667_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [11:0] v667_0;
output  [13:0] v16213_1_address0;
output   v16213_1_ce0;
output  [7:0] v16213_1_d0;
input  [7:0] v16213_1_q0;
output   v16213_1_we0;
output  [13:0] v16213_1_address1;
output   v16213_1_ce1;
output  [7:0] v16213_1_d1;
input  [7:0] v16213_1_q1;
output   v16213_1_we1;
output  [13:0] v16213_0_address0;
output   v16213_0_ce0;
output  [7:0] v16213_0_d0;
input  [7:0] v16213_0_q0;
output   v16213_0_we0;
output  [13:0] v16213_0_address1;
output   v16213_0_ce1;
output  [7:0] v16213_0_d1;
input  [7:0] v16213_0_q1;
output   v16213_0_we1;
output  [13:0] v16214_0_address0;
output   v16214_0_ce0;
output  [7:0] v16214_0_d0;
input  [7:0] v16214_0_q0;
output   v16214_0_we0;
output  [13:0] v16214_0_address1;
output   v16214_0_ce1;
output  [7:0] v16214_0_d1;
input  [7:0] v16214_0_q1;
output   v16214_0_we1;
output  [13:0] v16214_1_address0;
output   v16214_1_ce0;
output  [7:0] v16214_1_d0;
input  [7:0] v16214_1_q0;
output   v16214_1_we0;
output  [13:0] v16214_1_address1;
output   v16214_1_ce1;
output  [7:0] v16214_1_d1;
input  [7:0] v16214_1_q1;
output   v16214_1_we1;
output  [15:0] v16212_0_address0;
output   v16212_0_ce0;
output  [7:0] v16212_0_d0;
input  [7:0] v16212_0_q0;
output   v16212_0_we0;
output  [15:0] v16212_0_address1;
output   v16212_0_ce1;
output  [7:0] v16212_0_d1;
input  [7:0] v16212_0_q1;
output   v16212_0_we1;
output  [15:0] v16212_1_address0;
output   v16212_1_ce0;
output  [7:0] v16212_1_d0;
input  [7:0] v16212_1_q0;
output   v16212_1_we0;
output  [15:0] v16212_1_address1;
output   v16212_1_ce1;
output  [7:0] v16212_1_d1;
input  [7:0] v16212_1_q1;
output   v16212_1_we1;
input   v667_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v675_i_q0;
wire   [7:0] v675_t_q0;
wire   [7:0] v675_1_i_q0;
wire   [7:0] v675_1_t_q0;
wire   [7:0] v674_i_q0;
wire   [7:0] v674_t_q0;
wire   [7:0] v674_1_i_q0;
wire   [7:0] v674_1_t_q0;
wire   [7:0] v673_i_q0;
wire   [7:0] v673_t_q0;
wire   [7:0] v673_1_i_q0;
wire   [7:0] v673_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_d0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v16212_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v16212_0_ce0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v16212_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v16212_1_ce0;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_return;
wire    ap_channel_done_v667_0_c_channel1;
wire    v667_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v667_0_c_channel1;
wire    ap_sync_channel_write_v667_0_c_channel1;
wire    ap_channel_done_v674_1;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_full_n;
reg    ap_sync_reg_channel_write_v674_1;
wire    ap_sync_channel_write_v674_1;
wire    ap_channel_done_v674;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_full_n;
reg    ap_sync_reg_channel_write_v674;
wire    ap_sync_channel_write_v674;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v16214_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v16214_0_ce0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v16214_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v16214_1_ce0;
wire    ap_channel_done_v673_1;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_full_n;
reg    ap_sync_reg_channel_write_v673_1;
wire    ap_sync_channel_write_v673_1;
wire    ap_channel_done_v673;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_full_n;
reg    ap_sync_reg_channel_write_v673;
wire    ap_sync_channel_write_v673;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_ready;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v674_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v674_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v673_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v673_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v674_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v674_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v673_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v673_ce0;
wire    ap_channel_done_v675_1;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_full_n;
reg    ap_sync_reg_channel_write_v675_1;
wire    ap_sync_channel_write_v675_1;
wire    ap_channel_done_v675;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_full_n;
reg    ap_sync_reg_channel_write_v675;
wire    ap_sync_channel_write_v675;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_ready;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_1_d0;
wire   [13:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_0_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v675_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v675_1_ce0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v675_address0;
wire    dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v675_ce0;
wire    v674_i_full_n;
wire    v674_t_empty_n;
wire    v674_1_i_full_n;
wire    v674_1_t_empty_n;
wire    v673_i_full_n;
wire    v673_t_empty_n;
wire    v673_1_i_full_n;
wire    v673_1_t_empty_n;
wire    v675_i_full_n;
wire    v675_t_empty_n;
wire    v675_1_i_full_n;
wire    v675_1_t_empty_n;
wire   [11:0] v667_0_c_channel1_dout;
wire   [2:0] v667_0_c_channel1_num_data_valid;
wire   [2:0] v667_0_c_channel1_fifo_cap;
wire    v667_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v667_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v674_1 = 1'b0;
#0 ap_sync_reg_channel_write_v674 = 1'b0;
#0 ap_sync_reg_channel_write_v673_1 = 1'b0;
#0 ap_sync_reg_channel_write_v673 = 1'b0;
#0 ap_sync_reg_channel_write_v675_1 = 1'b0;
#0 ap_sync_reg_channel_write_v675 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_6208_1_v4856_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v675_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_d0),.i_q0(v675_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v675_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v675_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v675_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v675_i_full_n),.i_write(ap_channel_done_v675),.t_empty_n(v675_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6208_1_v4856_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v675_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_d0),.i_q0(v675_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v675_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v675_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v675_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v675_1_i_full_n),.i_write(ap_channel_done_v675_1),.t_empty_n(v675_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6208_1_v4856_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v674_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_d0),.i_q0(v674_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v674_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v674_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v674_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v674_i_full_n),.i_write(ap_channel_done_v674),.t_empty_n(v674_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6208_1_v4856_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v674_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_d0),.i_q0(v674_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v674_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v674_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v674_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v674_1_i_full_n),.i_write(ap_channel_done_v674_1),.t_empty_n(v674_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6208_1_v4856_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v673_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_d0),.i_q0(v673_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v673_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v673_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v673_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v673_i_full_n),.i_write(ap_channel_done_v673),.t_empty_n(v673_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6208_1_v4856_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 16 ),.AddressWidth( 4 ))
v673_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_d0),.i_q0(v673_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v673_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v673_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v673_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v673_1_i_full_n),.i_write(ap_channel_done_v673_1),.t_empty_n(v673_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready),.v674_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_address0),.v674_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_ce0),.v674_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_we0),.v674_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_d0),.v674_1_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_address0),.v674_1_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_ce0),.v674_1_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_we0),.v674_1_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_d0),.v667_0(v667_0),.v16212_0_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v16212_0_address0),.v16212_0_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v16212_0_ce0),.v16212_0_q0(v16212_0_q0),.v16212_1_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v16212_1_address0),.v16212_1_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v16212_1_ce0),.v16212_1_q0(v16212_1_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready),.v673_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_address0),.v673_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_ce0),.v673_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_we0),.v673_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_d0),.v673_1_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_address0),.v673_1_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_ce0),.v673_1_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_we0),.v673_1_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_d0),.v667_0(v667_0),.v16214_0_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v16214_0_address0),.v16214_0_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v16214_0_ce0),.v16214_0_q0(v16214_0_q0),.v16214_1_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v16214_1_address0),.v16214_1_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v16214_1_ce0),.v16214_1_q0(v16214_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_ready),.v675_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_address0),.v675_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_ce0),.v675_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_we0),.v675_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_d0),.v675_1_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_address0),.v675_1_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_ce0),.v675_1_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_we0),.v675_1_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_d0),.v674_1_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v674_1_address0),.v674_1_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v674_1_ce0),.v674_1_q0(v674_1_t_q0),.v673_1_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v673_1_address0),.v673_1_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v673_1_ce0),.v673_1_q0(v673_1_t_q0),.v674_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v674_address0),.v674_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v674_ce0),.v674_q0(v674_t_q0),.v673_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v673_address0),.v673_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v673_ce0),.v673_q0(v673_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_ready),.v16213_1_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_1_address0),.v16213_1_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_1_ce0),.v16213_1_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_1_we0),.v16213_1_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_1_d0),.v16213_0_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_0_address0),.v16213_0_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_0_ce0),.v16213_0_we0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_0_we0),.v16213_0_d0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_0_d0),.v675_1_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v675_1_address0),.v675_1_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v675_1_ce0),.v675_1_q0(v675_1_t_q0),.p_read(v667_0_c_channel1_dout),.v675_address0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v675_address0),.v675_ce0(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v675_ce0),.v675_q0(v675_t_q0));
forward_fifo_w12_d3_S v667_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_return),.if_full_n(v667_0_c_channel1_full_n),.if_write(ap_channel_done_v667_0_c_channel1),.if_dout(v667_0_c_channel1_dout),.if_num_data_valid(v667_0_c_channel1_num_data_valid),.if_fifo_cap(v667_0_c_channel1_fifo_cap),.if_empty_n(v667_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v667_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v667_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v667_0_c_channel1 <= ap_sync_channel_write_v667_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v673 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v673 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v673 <= ap_sync_channel_write_v673;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v673_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v673_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v673_1 <= ap_sync_channel_write_v673_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v674 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v674 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v674 <= ap_sync_channel_write_v674;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v674_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v674_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v674_1 <= ap_sync_channel_write_v674_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v675 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v675 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v675 <= ap_sync_channel_write_v675;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v675_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v675_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v675_1 <= ap_sync_channel_write_v675_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v667_0_c_channel1 = ((ap_sync_reg_channel_write_v667_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_done);
assign ap_channel_done_v673 = ((ap_sync_reg_channel_write_v673 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_done);
assign ap_channel_done_v673_1 = ((ap_sync_reg_channel_write_v673_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_done);
assign ap_channel_done_v674 = ((ap_sync_reg_channel_write_v674 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_done);
assign ap_channel_done_v674_1 = ((ap_sync_reg_channel_write_v674_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_done);
assign ap_channel_done_v675 = ((ap_sync_reg_channel_write_v675 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_done);
assign ap_channel_done_v675_1 = ((ap_sync_reg_channel_write_v675_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_done;
assign ap_idle = ((v667_0_c_channel1_empty_n ^ 1'b1) & (v675_1_t_empty_n ^ 1'b1) & (v675_t_empty_n ^ 1'b1) & (v673_1_t_empty_n ^ 1'b1) & (v673_t_empty_n ^ 1'b1) & (v674_1_t_empty_n ^ 1'b1) & (v674_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v667_0_c_channel1 = ((v667_0_c_channel1_full_n & ap_channel_done_v667_0_c_channel1) | ap_sync_reg_channel_write_v667_0_c_channel1);
assign ap_sync_channel_write_v673 = ((dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_full_n & ap_channel_done_v673) | ap_sync_reg_channel_write_v673);
assign ap_sync_channel_write_v673_1 = ((dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_full_n & ap_channel_done_v673_1) | ap_sync_reg_channel_write_v673_1);
assign ap_sync_channel_write_v674 = ((dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_full_n & ap_channel_done_v674) | ap_sync_reg_channel_write_v674);
assign ap_sync_channel_write_v674_1 = ((dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_full_n & ap_channel_done_v674_1) | ap_sync_reg_channel_write_v674_1);
assign ap_sync_channel_write_v675 = ((dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_full_n & ap_channel_done_v675) | ap_sync_reg_channel_write_v675);
assign ap_sync_channel_write_v675_1 = ((dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_full_n & ap_channel_done_v675_1) | ap_sync_reg_channel_write_v675_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_ap_start = (v675_t_empty_n & v675_1_t_empty_n & v667_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_continue = (ap_sync_channel_write_v675_1 & ap_sync_channel_write_v675);
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_ap_start = (v674_t_empty_n & v674_1_t_empty_n & v673_t_empty_n & v673_1_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_1_full_n = v675_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1128_1_proc_U0_v675_full_n = v675_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_continue = (ap_sync_channel_write_v673_1 & ap_sync_channel_write_v673);
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_1_full_n = v673_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v673_full_n = v673_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_continue = (ap_sync_channel_write_v674_1 & ap_sync_channel_write_v674 & ap_sync_channel_write_v667_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_1_full_n = v674_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v674_full_n = v674_i_full_n;
assign v16212_0_address0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v16212_0_address0;
assign v16212_0_address1 = 16'd0;
assign v16212_0_ce0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v16212_0_ce0;
assign v16212_0_ce1 = 1'b0;
assign v16212_0_d0 = 8'd0;
assign v16212_0_d1 = 8'd0;
assign v16212_0_we0 = 1'b0;
assign v16212_0_we1 = 1'b0;
assign v16212_1_address0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v16212_1_address0;
assign v16212_1_address1 = 16'd0;
assign v16212_1_ce0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1178_1_proc_U0_v16212_1_ce0;
assign v16212_1_ce1 = 1'b0;
assign v16212_1_d0 = 8'd0;
assign v16212_1_d1 = 8'd0;
assign v16212_1_we0 = 1'b0;
assign v16212_1_we1 = 1'b0;
assign v16213_0_address0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_0_address0;
assign v16213_0_address1 = 14'd0;
assign v16213_0_ce0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_0_ce0;
assign v16213_0_ce1 = 1'b0;
assign v16213_0_d0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_0_d0;
assign v16213_0_d1 = 8'd0;
assign v16213_0_we0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_0_we0;
assign v16213_0_we1 = 1'b0;
assign v16213_1_address0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_1_address0;
assign v16213_1_address1 = 14'd0;
assign v16213_1_ce0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_1_ce0;
assign v16213_1_ce1 = 1'b0;
assign v16213_1_d0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_1_d0;
assign v16213_1_d1 = 8'd0;
assign v16213_1_we0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1104_1_proc_U0_v16213_1_we0;
assign v16213_1_we1 = 1'b0;
assign v16214_0_address0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v16214_0_address0;
assign v16214_0_address1 = 14'd0;
assign v16214_0_ce0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v16214_0_ce0;
assign v16214_0_ce1 = 1'b0;
assign v16214_0_d0 = 8'd0;
assign v16214_0_d1 = 8'd0;
assign v16214_0_we0 = 1'b0;
assign v16214_0_we1 = 1'b0;
assign v16214_1_address0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v16214_1_address0;
assign v16214_1_address1 = 14'd0;
assign v16214_1_ce0 = dataflow_in_loop_VITIS_LOOP_1201_1_Loop_VITIS_LOOP_1154_1_proc_U0_v16214_1_ce0;
assign v16214_1_ce1 = 1'b0;
assign v16214_1_d0 = 8'd0;
assign v16214_1_d1 = 8'd0;
assign v16214_1_we0 = 1'b0;
assign v16214_1_we1 = 1'b0;
endmodule 
