
module forward_dataflow_in_loop_VITIS_LOOP_6368_1 (ap_clk,ap_rst,v4909,v16201_1_address0,v16201_1_ce0,v16201_1_d0,v16201_1_q0,v16201_1_we0,v16201_1_address1,v16201_1_ce1,v16201_1_d1,v16201_1_q1,v16201_1_we1,v16201_0_address0,v16201_0_ce0,v16201_0_d0,v16201_0_q0,v16201_0_we0,v16201_0_address1,v16201_0_ce1,v16201_0_d1,v16201_0_q1,v16201_0_we1,v16202_0_address0,v16202_0_ce0,v16202_0_d0,v16202_0_q0,v16202_0_we0,v16202_0_address1,v16202_0_ce1,v16202_0_d1,v16202_0_q1,v16202_0_we1,v16202_1_address0,v16202_1_ce0,v16202_1_d0,v16202_1_q0,v16202_1_we0,v16202_1_address1,v16202_1_ce1,v16202_1_d1,v16202_1_q1,v16202_1_we1,v16200_0_address0,v16200_0_ce0,v16200_0_d0,v16200_0_q0,v16200_0_we0,v16200_0_address1,v16200_0_ce1,v16200_0_d1,v16200_0_q1,v16200_0_we1,v16200_1_address0,v16200_1_ce0,v16200_1_d0,v16200_1_q0,v16200_1_we0,v16200_1_address1,v16200_1_ce1,v16200_1_d1,v16200_1_q1,v16200_1_we1,v4909_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [7:0] v4909;
output  [14:0] v16201_1_address0;
output   v16201_1_ce0;
output  [7:0] v16201_1_d0;
input  [7:0] v16201_1_q0;
output   v16201_1_we0;
output  [14:0] v16201_1_address1;
output   v16201_1_ce1;
output  [7:0] v16201_1_d1;
input  [7:0] v16201_1_q1;
output   v16201_1_we1;
output  [14:0] v16201_0_address0;
output   v16201_0_ce0;
output  [7:0] v16201_0_d0;
input  [7:0] v16201_0_q0;
output   v16201_0_we0;
output  [14:0] v16201_0_address1;
output   v16201_0_ce1;
output  [7:0] v16201_0_d1;
input  [7:0] v16201_0_q1;
output   v16201_0_we1;
output  [14:0] v16202_0_address0;
output   v16202_0_ce0;
output  [7:0] v16202_0_d0;
input  [7:0] v16202_0_q0;
output   v16202_0_we0;
output  [14:0] v16202_0_address1;
output   v16202_0_ce1;
output  [7:0] v16202_0_d1;
input  [7:0] v16202_0_q1;
output   v16202_0_we1;
output  [14:0] v16202_1_address0;
output   v16202_1_ce0;
output  [7:0] v16202_1_d0;
input  [7:0] v16202_1_q0;
output   v16202_1_we0;
output  [14:0] v16202_1_address1;
output   v16202_1_ce1;
output  [7:0] v16202_1_d1;
input  [7:0] v16202_1_q1;
output   v16202_1_we1;
output  [16:0] v16200_0_address0;
output   v16200_0_ce0;
output  [7:0] v16200_0_d0;
input  [7:0] v16200_0_q0;
output   v16200_0_we0;
output  [16:0] v16200_0_address1;
output   v16200_0_ce1;
output  [7:0] v16200_0_d1;
input  [7:0] v16200_0_q1;
output   v16200_0_we1;
output  [16:0] v16200_1_address0;
output   v16200_1_ce0;
output  [7:0] v16200_1_d0;
input  [7:0] v16200_1_q0;
output   v16200_1_we0;
output  [16:0] v16200_1_address1;
output   v16200_1_ce1;
output  [7:0] v16200_1_d1;
input  [7:0] v16200_1_q1;
output   v16200_1_we1;
input   v4909_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v4917_i_q0;
wire   [7:0] v4917_t_q0;
wire   [7:0] v4917_1_i_q0;
wire   [7:0] v4917_1_t_q0;
wire   [7:0] v4916_i_q0;
wire   [7:0] v4916_t_q0;
wire   [7:0] v4916_1_i_q0;
wire   [7:0] v4916_1_t_q0;
wire   [7:0] v4915_i_q0;
wire   [7:0] v4915_t_q0;
wire   [7:0] v4915_1_i_q0;
wire   [7:0] v4915_1_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_ce0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_d0;
wire   [6:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4909;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v16200_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v16200_0_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v16200_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v16200_1_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_return;
wire    ap_channel_done_tmp_83;
wire    tmp_83_full_n;
reg    ap_sync_reg_channel_write_tmp_83;
wire    ap_sync_channel_write_tmp_83;
wire    ap_channel_done_v4916_1;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_full_n;
reg    ap_sync_reg_channel_write_v4916_1;
wire    ap_sync_channel_write_v4916_1;
wire    ap_channel_done_v4916;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_full_n;
reg    ap_sync_reg_channel_write_v4916;
wire    ap_sync_channel_write_v4916;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_ce0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_d0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4909;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v16202_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v16202_0_ce0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v16202_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v16202_1_ce0;
wire    ap_channel_done_v4915_1;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_full_n;
reg    ap_sync_reg_channel_write_v4915_1;
wire    ap_sync_channel_write_v4915_1;
wire    ap_channel_done_v4915;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_full_n;
reg    ap_sync_reg_channel_write_v4915;
wire    ap_sync_channel_write_v4915;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_ce0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4916_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4916_1_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4915_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4915_1_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4916_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4916_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4915_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4915_ce0;
wire    ap_channel_done_v4917_1;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_full_n;
reg    ap_sync_reg_channel_write_v4917_1;
wire    ap_sync_channel_write_v4917_1;
wire    ap_channel_done_v4917;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_full_n;
reg    ap_sync_reg_channel_write_v4917;
wire    ap_sync_channel_write_v4917;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_ready;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_1_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_1_ce0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_1_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_1_d0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_0_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_0_ce0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_0_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_0_d0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v4917_1_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v4917_1_i_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v4917_i_address0;
wire    dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v4917_i_ce0;
wire    v4916_i_full_n;
wire    v4916_t_empty_n;
wire    v4916_1_i_full_n;
wire    v4916_1_t_empty_n;
wire    v4915_i_full_n;
wire    v4915_t_empty_n;
wire    v4915_1_i_full_n;
wire    v4915_1_t_empty_n;
wire    v4917_i_full_n;
wire    v4917_t_empty_n;
wire    v4917_1_i_full_n;
wire    v4917_1_t_empty_n;
wire   [4:0] tmp_83_dout;
wire   [2:0] tmp_83_num_data_valid;
wire   [2:0] tmp_83_fifo_cap;
wire    tmp_83_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_tmp_83 = 1'b0;
#0 ap_sync_reg_channel_write_v4916_1 = 1'b0;
#0 ap_sync_reg_channel_write_v4916 = 1'b0;
#0 ap_sync_reg_channel_write_v4915_1 = 1'b0;
#0 ap_sync_reg_channel_write_v4915 = 1'b0;
#0 ap_sync_reg_channel_write_v4917_1 = 1'b0;
#0 ap_sync_reg_channel_write_v4917 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_6368_1_v4917_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v4917_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_d0),.i_q0(v4917_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v4917_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v4917_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v4917_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v4917_i_full_n),.i_write(ap_channel_done_v4917),.t_empty_n(v4917_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6368_1_v4917_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v4917_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_d0),.i_q0(v4917_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v4917_1_i_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v4917_1_i_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v4917_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v4917_1_i_full_n),.i_write(ap_channel_done_v4917_1),.t_empty_n(v4917_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6368_1_v4917_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v4916_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_d0),.i_q0(v4916_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4916_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4916_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v4916_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v4916_i_full_n),.i_write(ap_channel_done_v4916),.t_empty_n(v4916_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6368_1_v4917_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v4916_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_d0),.i_q0(v4916_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4916_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4916_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v4916_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v4916_1_i_full_n),.i_write(ap_channel_done_v4916_1),.t_empty_n(v4916_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6368_1_v4917_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v4915_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_d0),.i_q0(v4915_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4915_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4915_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v4915_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v4915_i_full_n),.i_write(ap_channel_done_v4915),.t_empty_n(v4915_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6368_1_v4917_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 784 ),.AddressWidth( 10 ))
v4915_1_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_d0),.i_q0(v4915_1_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4915_1_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4915_1_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v4915_1_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v4915_1_i_full_n),.i_write(ap_channel_done_v4915_1),.t_empty_n(v4915_1_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120 dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready),.v4916_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_address0),.v4916_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_ce0),.v4916_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_we0),.v4916_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_d0),.v4916_1_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_address0),.v4916_1_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_ce0),.v4916_1_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_we0),.v4916_1_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_d0),.v4909(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4909),.v16200_0_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v16200_0_address0),.v16200_0_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v16200_0_ce0),.v16200_0_q0(v16200_0_q0),.v16200_1_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v16200_1_address0),.v16200_1_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v16200_1_ce0),.v16200_1_q0(v16200_1_q0),.ap_return(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119 dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready),.v4915_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_address0),.v4915_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_ce0),.v4915_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_we0),.v4915_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_d0),.v4915_1_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_address0),.v4915_1_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_ce0),.v4915_1_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_we0),.v4915_1_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_d0),.v4909(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4909),.v16202_0_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v16202_0_address0),.v16202_0_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v16202_0_ce0),.v16202_0_q0(v16202_0_q0),.v16202_1_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v16202_1_address0),.v16202_1_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v16202_1_ce0),.v16202_1_q0(v16202_1_q0));
forward_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135 dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_ready),.v4917_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_address0),.v4917_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_ce0),.v4917_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_we0),.v4917_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_d0),.v4917_1_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_address0),.v4917_1_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_ce0),.v4917_1_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_we0),.v4917_1_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_d0),.v4916_1_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4916_1_address0),.v4916_1_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4916_1_ce0),.v4916_1_q0(v4916_1_t_q0),.v4915_1_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4915_1_address0),.v4915_1_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4915_1_ce0),.v4915_1_q0(v4915_1_t_q0),.v4916_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4916_address0),.v4916_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4916_ce0),.v4916_q0(v4916_t_q0),.v4915_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4915_address0),.v4915_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4915_ce0),.v4915_q0(v4915_t_q0));
forward_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121 dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_ready),.v16201_1_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_1_address0),.v16201_1_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_1_ce0),.v16201_1_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_1_we0),.v16201_1_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_1_d0),.v16201_0_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_0_address0),.v16201_0_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_0_ce0),.v16201_0_we0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_0_we0),.v16201_0_d0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_0_d0),.p_read(tmp_83_dout),.v4917_1_i_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v4917_1_i_address0),.v4917_1_i_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v4917_1_i_ce0),.v4917_1_i_q0(v4917_1_t_q0),.v4917_i_address0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v4917_i_address0),.v4917_i_ce0(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v4917_i_ce0),.v4917_i_q0(v4917_t_q0));
forward_fifo_w5_d3_S_x tmp_83_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_return),.if_full_n(tmp_83_full_n),.if_write(ap_channel_done_tmp_83),.if_dout(tmp_83_dout),.if_num_data_valid(tmp_83_num_data_valid),.if_fifo_cap(tmp_83_fifo_cap),.if_empty_n(tmp_83_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_tmp_83 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_done & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_tmp_83 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_tmp_83 <= ap_sync_channel_write_tmp_83;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v4915 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_done & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v4915 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v4915 <= ap_sync_channel_write_v4915;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v4915_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_done & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v4915_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v4915_1 <= ap_sync_channel_write_v4915_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v4916 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_done & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v4916 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v4916 <= ap_sync_channel_write_v4916;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v4916_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_done & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v4916_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v4916_1 <= ap_sync_channel_write_v4916_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v4917 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_done & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v4917 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v4917 <= ap_sync_channel_write_v4917;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v4917_1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_done & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v4917_1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v4917_1 <= ap_sync_channel_write_v4917_1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready;
        end
    end
end
assign ap_channel_done_tmp_83 = ((ap_sync_reg_channel_write_tmp_83 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_done);
assign ap_channel_done_v4915 = ((ap_sync_reg_channel_write_v4915 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_done);
assign ap_channel_done_v4915_1 = ((ap_sync_reg_channel_write_v4915_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_done);
assign ap_channel_done_v4916 = ((ap_sync_reg_channel_write_v4916 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_done);
assign ap_channel_done_v4916_1 = ((ap_sync_reg_channel_write_v4916_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_done);
assign ap_channel_done_v4917 = ((ap_sync_reg_channel_write_v4917 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_done);
assign ap_channel_done_v4917_1 = ((ap_sync_reg_channel_write_v4917_1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_done;
assign ap_idle = ((tmp_83_empty_n ^ 1'b1) & (v4917_1_t_empty_n ^ 1'b1) & (v4917_t_empty_n ^ 1'b1) & (v4915_1_t_empty_n ^ 1'b1) & (v4915_t_empty_n ^ 1'b1) & (v4916_1_t_empty_n ^ 1'b1) & (v4916_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_tmp_83 = ((tmp_83_full_n & ap_channel_done_tmp_83) | ap_sync_reg_channel_write_tmp_83);
assign ap_sync_channel_write_v4915 = ((dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_full_n & ap_channel_done_v4915) | ap_sync_reg_channel_write_v4915);
assign ap_sync_channel_write_v4915_1 = ((dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_full_n & ap_channel_done_v4915_1) | ap_sync_reg_channel_write_v4915_1);
assign ap_sync_channel_write_v4916 = ((dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_full_n & ap_channel_done_v4916) | ap_sync_reg_channel_write_v4916);
assign ap_sync_channel_write_v4916_1 = ((dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_full_n & ap_channel_done_v4916_1) | ap_sync_reg_channel_write_v4916_1);
assign ap_sync_channel_write_v4917 = ((dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_full_n & ap_channel_done_v4917) | ap_sync_reg_channel_write_v4917);
assign ap_sync_channel_write_v4917_1 = ((dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_full_n & ap_channel_done_v4917_1) | ap_sync_reg_channel_write_v4917_1);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_ap_start = (v4917_t_empty_n & v4917_1_t_empty_n & tmp_83_empty_n);
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_continue = (ap_sync_channel_write_v4917_1 & ap_sync_channel_write_v4917);
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_ap_start = (v4916_t_empty_n & v4916_1_t_empty_n & v4915_t_empty_n & v4915_1_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_1_full_n = v4917_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6283_1_proc135_U0_v4917_full_n = v4917_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_continue = (ap_sync_channel_write_v4915_1 & ap_sync_channel_write_v4915);
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4909 = {{v4909[(5 - 8'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_1_full_n = v4915_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v4915_full_n = v4915_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_continue = (ap_sync_channel_write_v4916_1 & ap_sync_channel_write_v4916 & ap_sync_channel_write_tmp_83);
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4909 = {{v4909[(7 - 8'd1):0]}};
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_1_full_n = v4916_1_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v4916_full_n = v4916_i_full_n;
assign v16200_0_address0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v16200_0_address0;
assign v16200_0_address1 = 17'd0;
assign v16200_0_ce0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v16200_0_ce0;
assign v16200_0_ce1 = 1'b0;
assign v16200_0_d0 = 8'd0;
assign v16200_0_d1 = 8'd0;
assign v16200_0_we0 = 1'b0;
assign v16200_0_we1 = 1'b0;
assign v16200_1_address0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v16200_1_address0;
assign v16200_1_address1 = 17'd0;
assign v16200_1_ce0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6341_1_proc133120_U0_v16200_1_ce0;
assign v16200_1_ce1 = 1'b0;
assign v16200_1_d0 = 8'd0;
assign v16200_1_d1 = 8'd0;
assign v16200_1_we0 = 1'b0;
assign v16200_1_we1 = 1'b0;
assign v16201_0_address0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_0_address0;
assign v16201_0_address1 = 15'd0;
assign v16201_0_ce0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_0_ce0;
assign v16201_0_ce1 = 1'b0;
assign v16201_0_d0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_0_d0;
assign v16201_0_d1 = 8'd0;
assign v16201_0_we0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_0_we0;
assign v16201_0_we1 = 1'b0;
assign v16201_1_address0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_1_address0;
assign v16201_1_address1 = 15'd0;
assign v16201_1_ce0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_1_ce0;
assign v16201_1_ce1 = 1'b0;
assign v16201_1_d0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_1_d0;
assign v16201_1_d1 = 8'd0;
assign v16201_1_we0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6255_1_proc136121_U0_v16201_1_we0;
assign v16201_1_we1 = 1'b0;
assign v16202_0_address0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v16202_0_address0;
assign v16202_0_address1 = 15'd0;
assign v16202_0_ce0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v16202_0_ce0;
assign v16202_0_ce1 = 1'b0;
assign v16202_0_d0 = 8'd0;
assign v16202_0_d1 = 8'd0;
assign v16202_0_we0 = 1'b0;
assign v16202_0_we1 = 1'b0;
assign v16202_1_address0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v16202_1_address0;
assign v16202_1_address1 = 15'd0;
assign v16202_1_ce0 = dataflow_in_loop_VITIS_LOOP_6368_1_Loop_VITIS_LOOP_6313_1_proc134119_U0_v16202_1_ce0;
assign v16202_1_ce1 = 1'b0;
assign v16202_1_d0 = 8'd0;
assign v16202_1_d1 = 8'd0;
assign v16202_1_we0 = 1'b0;
assign v16202_1_we1 = 1'b0;
endmodule 
