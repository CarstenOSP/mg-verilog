module forward_dataflow_in_loop_VITIS_LOOP_16412_1 (ap_clk,ap_rst,v12816_0,v15449_address0,v15449_ce0,v15449_d0,v15449_q0,v15449_we0,v15449_address1,v15449_ce1,v15449_d1,v15449_q1,v15449_we1,v15450_address0,v15450_ce0,v15450_d0,v15450_q0,v15450_we0,v15450_address1,v15450_ce1,v15450_d1,v15450_q1,v15450_we1,v15425_address0,v15425_ce0,v15425_d0,v15425_q0,v15425_we0,v15425_address1,v15425_ce1,v15425_d1,v15425_q1,v15425_we1,v15448_address0,v15448_ce0,v15448_d0,v15448_q0,v15448_we0,v15448_address1,v15448_ce1,v15448_d1,v15448_q1,v15448_we1,v12816_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [7:0] v12816_0;
output  [16:0] v15449_address0;
output   v15449_ce0;
output  [7:0] v15449_d0;
input  [7:0] v15449_q0;
output   v15449_we0;
output  [16:0] v15449_address1;
output   v15449_ce1;
output  [7:0] v15449_d1;
input  [7:0] v15449_q1;
output   v15449_we1;
output  [16:0] v15450_address0;
output   v15450_ce0;
output  [7:0] v15450_d0;
input  [7:0] v15450_q0;
output   v15450_we0;
output  [16:0] v15450_address1;
output   v15450_ce1;
output  [7:0] v15450_d1;
input  [7:0] v15450_q1;
output   v15450_we1;
output  [10:0] v15425_address0;
output   v15425_ce0;
output  [7:0] v15425_d0;
input  [7:0] v15425_q0;
output   v15425_we0;
output  [10:0] v15425_address1;
output   v15425_ce1;
output  [7:0] v15425_d1;
input  [7:0] v15425_q1;
output   v15425_we1;
output  [18:0] v15448_address0;
output   v15448_ce0;
output  [7:0] v15448_d0;
input  [7:0] v15448_q0;
output   v15448_we0;
output  [18:0] v15448_address1;
output   v15448_ce1;
output  [7:0] v15448_d1;
input  [7:0] v15448_q1;
output   v15448_we1;
input   v12816_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v12825_i_q0;
wire   [7:0] v12825_t_q0;
wire   [7:0] v12824_i_q0;
wire   [7:0] v12824_t_q0;
wire   [7:0] v12823_i_q0;
wire   [7:0] v12823_t_q0;
wire   [7:0] v12822_i_q0;
wire   [7:0] v12822_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready;
wire   [18:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v15448_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v15448_ce0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v12824_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v12824_ce0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v12824_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v12824_d0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v15425_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v15425_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_ce0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_d0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_return;
wire    ap_channel_done_v12816_0_c81_channel2;
wire    v12816_0_c81_channel2_full_n;
reg    ap_sync_reg_channel_write_v12816_0_c81_channel2;
wire    ap_sync_channel_write_v12816_0_c81_channel2;
wire    ap_channel_done_v12823;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_full_n;
reg    ap_sync_reg_channel_write_v12823;
wire    ap_sync_channel_write_v12823;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v15450_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v15450_ce0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v12822_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v12822_ce0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v12822_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v12822_d0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12823_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12823_ce0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12824_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12824_ce0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12822_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12822_ce0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_ce0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_d0;
wire   [3:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_return;
wire    ap_channel_done_v12816_0_c_channel1;
wire    v12816_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v12816_0_c_channel1;
wire    ap_sync_channel_write_v12816_0_c_channel1;
wire    ap_channel_done_v12825;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_full_n;
reg    ap_sync_reg_channel_write_v12825;
wire    ap_sync_channel_write_v12825;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_ready;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v12825_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v12825_ce0;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v15449_address0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v15449_ce0;
wire    dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v15449_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v15449_d0;
wire    v12824_i_full_n;
wire    v12824_t_empty_n;
wire    v12823_i_full_n;
wire    v12823_t_empty_n;
wire    v12822_i_full_n;
wire    v12822_t_empty_n;
wire    v12825_i_full_n;
wire    v12825_t_empty_n;
wire   [7:0] v12816_0_c81_channel2_dout;
wire   [2:0] v12816_0_c81_channel2_num_data_valid;
wire   [2:0] v12816_0_c81_channel2_fifo_cap;
wire    v12816_0_c81_channel2_empty_n;
wire   [3:0] v12816_0_c_channel1_dout;
wire   [2:0] v12816_0_c_channel1_num_data_valid;
wire   [2:0] v12816_0_c_channel1_fifo_cap;
wire    v12816_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v12816_0_c81_channel2 = 1'b0;
#0 ap_sync_reg_channel_write_v12823 = 1'b0;
#0 ap_sync_reg_channel_write_v12816_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v12825 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14175_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 6272 ),.AddressWidth( 13 ))
v12825_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_d0),.i_q0(v12825_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v12825_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v12825_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12825_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12825_i_full_n),.i_write(ap_channel_done_v12825),.t_empty_n(v12825_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14175_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 6272 ),.AddressWidth( 13 ))
v12824_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v12824_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v12824_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v12824_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v12824_d0),.i_q0(v12824_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12824_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12824_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12824_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12824_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_done),.t_empty_n(v12824_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v12823_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_d0),.i_q0(v12823_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12823_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12823_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12823_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12823_i_full_n),.i_write(ap_channel_done_v12823),.t_empty_n(v12823_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14175_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 6272 ),.AddressWidth( 13 ))
v12822_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v12822_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v12822_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v12822_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v12822_d0),.i_q0(v12822_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12822_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12822_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v12822_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v12822_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_done),.t_empty_n(v12822_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83 dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready),.v12816_0(v12816_0),.v15448_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v15448_address0),.v15448_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v15448_ce0),.v15448_q0(v15448_q0),.v12824_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v12824_address0),.v12824_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v12824_ce0),.v12824_we0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v12824_we0),.v12824_d0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v12824_d0));
forward_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready),.v12816_0(v12816_0),.v15425_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v15425_address0),.v15425_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v15425_ce0),.v15425_q0(v15425_q0),.v12823_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_address0),.v12823_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_ce0),.v12823_we0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_we0),.v12823_d0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82 dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready),.v12816_0(v12816_0),.v15450_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v15450_address0),.v15450_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v15450_ce0),.v15450_q0(v15450_q0),.v12822_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v12822_address0),.v12822_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v12822_ce0),.v12822_we0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v12822_we0),.v12822_d0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v12822_d0));
forward_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_ready),.p_read(v12816_0_c81_channel2_dout),.v12823_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12823_address0),.v12823_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12823_ce0),.v12823_q0(v12823_t_q0),.v12824_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12824_address0),.v12824_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12824_ce0),.v12824_q0(v12824_t_q0),.v12822_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12822_address0),.v12822_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12822_ce0),.v12822_q0(v12822_t_q0),.v12825_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_address0),.v12825_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_ce0),.v12825_we0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_we0),.v12825_d0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84 dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_ready),.p_read(v12816_0_c_channel1_dout),.v12825_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v12825_address0),.v12825_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v12825_ce0),.v12825_q0(v12825_t_q0),.v15449_address0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v15449_address0),.v15449_ce0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v15449_ce0),.v15449_we0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v15449_we0),.v15449_d0(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v15449_d0));
forward_fifo_w8_d2_S_x v12816_0_c81_channel2_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_return),.if_full_n(v12816_0_c81_channel2_full_n),.if_write(ap_channel_done_v12816_0_c81_channel2),.if_dout(v12816_0_c81_channel2_dout),.if_num_data_valid(v12816_0_c81_channel2_num_data_valid),.if_fifo_cap(v12816_0_c81_channel2_fifo_cap),.if_empty_n(v12816_0_c81_channel2_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_ready));
forward_fifo_w4_d2_S_x1 v12816_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_return),.if_full_n(v12816_0_c_channel1_full_n),.if_write(ap_channel_done_v12816_0_c_channel1),.if_dout(v12816_0_c_channel1_dout),.if_num_data_valid(v12816_0_c_channel1_num_data_valid),.if_fifo_cap(v12816_0_c_channel1_fifo_cap),.if_empty_n(v12816_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12816_0_c81_channel2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12816_0_c81_channel2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12816_0_c81_channel2 <= ap_sync_channel_write_v12816_0_c81_channel2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12816_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12816_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12816_0_c_channel1 <= ap_sync_channel_write_v12816_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12823 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12823 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12823 <= ap_sync_channel_write_v12823;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v12825 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v12825 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v12825 <= ap_sync_channel_write_v12825;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v12816_0_c81_channel2 = ((ap_sync_reg_channel_write_v12816_0_c81_channel2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_done);
assign ap_channel_done_v12816_0_c_channel1 = ((ap_sync_reg_channel_write_v12816_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_done);
assign ap_channel_done_v12823 = ((ap_sync_reg_channel_write_v12823 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_done);
assign ap_channel_done_v12825 = ((ap_sync_reg_channel_write_v12825 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_done;
assign ap_idle = ((v12816_0_c_channel1_empty_n ^ 1'b1) & (v12816_0_c81_channel2_empty_n ^ 1'b1) & (v12825_t_empty_n ^ 1'b1) & (v12822_t_empty_n ^ 1'b1) & (v12823_t_empty_n ^ 1'b1) & (v12824_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v12816_0_c81_channel2 = ((v12816_0_c81_channel2_full_n & ap_channel_done_v12816_0_c81_channel2) | ap_sync_reg_channel_write_v12816_0_c81_channel2);
assign ap_sync_channel_write_v12816_0_c_channel1 = ((v12816_0_c_channel1_full_n & ap_channel_done_v12816_0_c_channel1) | ap_sync_reg_channel_write_v12816_0_c_channel1);
assign ap_sync_channel_write_v12823 = ((dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_full_n & ap_channel_done_v12823) | ap_sync_reg_channel_write_v12823);
assign ap_sync_channel_write_v12825 = ((dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_full_n & ap_channel_done_v12825) | ap_sync_reg_channel_write_v12825);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_ap_start = (v12825_t_empty_n & v12816_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_continue = (ap_sync_channel_write_v12825 & ap_sync_channel_write_v12816_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_ap_start = (v12824_t_empty_n & v12823_t_empty_n & v12822_t_empty_n & v12816_0_c81_channel2_empty_n);
assign dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16321_1_proc_U0_v12825_full_n = v12825_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_continue = v12822_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_continue = (ap_sync_channel_write_v12823 & ap_sync_channel_write_v12816_0_c81_channel2);
assign dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v12823_full_n = v12823_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_continue = v12824_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_ap_ready ^ 1'b1) & ap_start);
assign v15425_address0 = dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v15425_address0;
assign v15425_address1 = 11'd0;
assign v15425_ce0 = dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16373_1_proc_U0_v15425_ce0;
assign v15425_ce1 = 1'b0;
assign v15425_d0 = 8'd0;
assign v15425_d1 = 8'd0;
assign v15425_we0 = 1'b0;
assign v15425_we1 = 1'b0;
assign v15448_address0 = dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v15448_address0;
assign v15448_address1 = 19'd0;
assign v15448_ce0 = dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16392_1_proc83_U0_v15448_ce0;
assign v15448_ce1 = 1'b0;
assign v15448_d0 = 8'd0;
assign v15448_d1 = 8'd0;
assign v15448_we0 = 1'b0;
assign v15448_we1 = 1'b0;
assign v15449_address0 = dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v15449_address0;
assign v15449_address1 = 17'd0;
assign v15449_ce0 = dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v15449_ce0;
assign v15449_ce1 = 1'b0;
assign v15449_d0 = dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v15449_d0;
assign v15449_d1 = 8'd0;
assign v15449_we0 = dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16293_1_proc84_U0_v15449_we0;
assign v15449_we1 = 1'b0;
assign v15450_address0 = dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v15450_address0;
assign v15450_address1 = 17'd0;
assign v15450_ce0 = dataflow_in_loop_VITIS_LOOP_16412_1_Loop_VITIS_LOOP_16352_1_proc82_U0_v15450_ce0;
assign v15450_ce1 = 1'b0;
assign v15450_d0 = 8'd0;
assign v15450_d1 = 8'd0;
assign v15450_we0 = 1'b0;
assign v15450_we1 = 1'b0;
endmodule 