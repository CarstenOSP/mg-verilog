module forward_dataflow_in_loop_VITIS_LOOP_7972_1 (ap_clk,ap_rst,v6753_0,v15497_address0,v15497_ce0,v15497_d0,v15497_q0,v15497_we0,v15497_address1,v15497_ce1,v15497_d1,v15497_q1,v15497_we1,v15498_address0,v15498_ce0,v15498_d0,v15498_q0,v15498_we0,v15498_address1,v15498_ce1,v15498_d1,v15498_q1,v15498_we1,v15417_address0,v15417_ce0,v15417_d0,v15417_q0,v15417_we0,v15417_address1,v15417_ce1,v15417_d1,v15417_q1,v15417_we1,v15496_address0,v15496_ce0,v15496_d0,v15496_q0,v15496_we0,v15496_address1,v15496_ce1,v15496_d1,v15496_q1,v15496_we1,v6753_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue); 
input   ap_clk;
input   ap_rst;
input  [12:0] v6753_0;
output  [14:0] v15497_address0;
output   v15497_ce0;
output  [7:0] v15497_d0;
input  [7:0] v15497_q0;
output   v15497_we0;
output  [14:0] v15497_address1;
output   v15497_ce1;
output  [7:0] v15497_d1;
input  [7:0] v15497_q1;
output   v15497_we1;
output  [14:0] v15498_address0;
output   v15498_ce0;
output  [7:0] v15498_d0;
input  [7:0] v15498_q0;
output   v15498_we0;
output  [14:0] v15498_address1;
output   v15498_ce1;
output  [7:0] v15498_d1;
input  [7:0] v15498_q1;
output   v15498_we1;
output  [12:0] v15417_address0;
output   v15417_ce0;
output  [7:0] v15417_d0;
input  [7:0] v15417_q0;
output   v15417_we0;
output  [12:0] v15417_address1;
output   v15417_ce1;
output  [7:0] v15417_d1;
input  [7:0] v15417_q1;
output   v15417_we1;
output  [16:0] v15496_address0;
output   v15496_ce0;
output  [7:0] v15496_d0;
input  [7:0] v15496_q0;
output   v15496_we0;
output  [16:0] v15496_address1;
output   v15496_ce1;
output  [7:0] v15496_d1;
input  [7:0] v15496_q1;
output   v15496_we1;
input   v6753_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v6762_i_q0;
wire   [7:0] v6762_t_q0;
wire   [7:0] v6761_i_q0;
wire   [7:0] v6761_t_q0;
wire   [7:0] v6760_i_q0;
wire   [7:0] v6760_t_q0;
wire   [7:0] v6759_i_q0;
wire   [7:0] v6759_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready;
wire   [16:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v15496_address0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v15496_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_address0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_ce0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_d0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_return;
wire    ap_channel_done_v6753_0_c43_channel1;
wire    v6753_0_c43_channel1_full_n;
reg    ap_sync_reg_channel_write_v6753_0_c43_channel1;
wire    ap_sync_channel_write_v6753_0_c43_channel1;
wire    ap_channel_done_v6761;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_full_n;
reg    ap_sync_reg_channel_write_v6761;
wire    ap_sync_channel_write_v6761;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v15417_address0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v15417_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v6760_address0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v6760_ce0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v6760_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v6760_d0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v15498_address0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v15498_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v6759_address0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v6759_ce0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v6759_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v6759_d0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6761_address0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6761_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6760_address0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6760_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6759_address0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6759_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_address0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_ce0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_d0;
wire   [12:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_return;
wire    ap_channel_done_v6753_0_c_channel;
wire    v6753_0_c_channel_full_n;
reg    ap_sync_reg_channel_write_v6753_0_c_channel;
wire    ap_sync_channel_write_v6753_0_c_channel;
wire    ap_channel_done_v6762;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_full_n;
reg    ap_sync_reg_channel_write_v6762;
wire    ap_sync_channel_write_v6762;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v6762_address0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v6762_ce0;
wire   [14:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v15497_address0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v15497_ce0;
wire    dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v15497_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v15497_d0;
wire    v6761_i_full_n;
wire    v6761_t_empty_n;
wire    v6760_i_full_n;
wire    v6760_t_empty_n;
wire    v6759_i_full_n;
wire    v6759_t_empty_n;
wire    v6762_i_full_n;
wire    v6762_t_empty_n;
wire   [12:0] v6753_0_c43_channel1_dout;
wire   [2:0] v6753_0_c43_channel1_num_data_valid;
wire   [2:0] v6753_0_c43_channel1_fifo_cap;
wire    v6753_0_c43_channel1_empty_n;
wire   [12:0] v6753_0_c_channel_dout;
wire   [2:0] v6753_0_c_channel_num_data_valid;
wire   [2:0] v6753_0_c_channel_fifo_cap;
wire    v6753_0_c_channel_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v6753_0_c43_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v6761 = 1'b0;
#0 ap_sync_reg_channel_write_v6753_0_c_channel = 1'b0;
#0 ap_sync_reg_channel_write_v6762 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v6762_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_d0),.i_q0(v6762_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v6762_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v6762_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v6762_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v6762_i_full_n),.i_write(ap_channel_done_v6762),.t_empty_n(v6762_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v6761_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_d0),.i_q0(v6761_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6761_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6761_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v6761_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v6761_i_full_n),.i_write(ap_channel_done_v6761),.t_empty_n(v6761_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v6760_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v6760_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v6760_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v6760_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v6760_d0),.i_q0(v6760_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6760_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6760_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v6760_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v6760_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_done),.t_empty_n(v6760_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v6759_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v6759_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v6759_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v6759_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v6759_d0),.i_q0(v6759_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6759_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6759_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v6759_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v6759_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_done),.t_empty_n(v6759_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready),.v6753_0(v6753_0),.v15496_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v15496_address0),.v15496_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v15496_ce0),.v15496_q0(v15496_q0),.v6761_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_address0),.v6761_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_ce0),.v6761_we0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_we0),.v6761_d0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready),.v6753_0(v6753_0),.v15417_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v15417_address0),.v15417_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v15417_ce0),.v15417_q0(v15417_q0),.v6760_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v6760_address0),.v6760_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v6760_ce0),.v6760_we0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v6760_we0),.v6760_d0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v6760_d0));
forward_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready),.v6753_0(v6753_0),.v15498_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v15498_address0),.v15498_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v15498_ce0),.v15498_q0(v15498_q0),.v6759_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v6759_address0),.v6759_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v6759_ce0),.v6759_we0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v6759_we0),.v6759_d0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v6759_d0));
forward_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_ready),.p_read(v6753_0_c43_channel1_dout),.v6761_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6761_address0),.v6761_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6761_ce0),.v6761_q0(v6761_t_q0),.v6760_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6760_address0),.v6760_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6760_ce0),.v6760_q0(v6760_t_q0),.v6759_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6759_address0),.v6759_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6759_ce0),.v6759_q0(v6759_t_q0),.v6762_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_address0),.v6762_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_ce0),.v6762_we0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_we0),.v6762_d0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_ready),.v6762_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v6762_address0),.v6762_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v6762_ce0),.v6762_q0(v6762_t_q0),.p_read(v6753_0_c_channel_dout),.v15497_address0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v15497_address0),.v15497_ce0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v15497_ce0),.v15497_we0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v15497_we0),.v15497_d0(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v15497_d0));
forward_fifo_w13_d2_S v6753_0_c43_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_return),.if_full_n(v6753_0_c43_channel1_full_n),.if_write(ap_channel_done_v6753_0_c43_channel1),.if_dout(v6753_0_c43_channel1_dout),.if_num_data_valid(v6753_0_c43_channel1_num_data_valid),.if_fifo_cap(v6753_0_c43_channel1_fifo_cap),.if_empty_n(v6753_0_c43_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_ready));
forward_fifo_w13_d2_S v6753_0_c_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_return),.if_full_n(v6753_0_c_channel_full_n),.if_write(ap_channel_done_v6753_0_c_channel),.if_dout(v6753_0_c_channel_dout),.if_num_data_valid(v6753_0_c_channel_num_data_valid),.if_fifo_cap(v6753_0_c_channel_fifo_cap),.if_empty_n(v6753_0_c_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v6753_0_c43_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v6753_0_c43_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v6753_0_c43_channel1 <= ap_sync_channel_write_v6753_0_c43_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v6753_0_c_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v6753_0_c_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v6753_0_c_channel <= ap_sync_channel_write_v6753_0_c_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v6761 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v6761 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v6761 <= ap_sync_channel_write_v6761;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v6762 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v6762 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v6762 <= ap_sync_channel_write_v6762;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v6753_0_c43_channel1 = ((ap_sync_reg_channel_write_v6753_0_c43_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_done);
assign ap_channel_done_v6753_0_c_channel = ((ap_sync_reg_channel_write_v6753_0_c_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_done);
assign ap_channel_done_v6761 = ((ap_sync_reg_channel_write_v6761 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_done);
assign ap_channel_done_v6762 = ((ap_sync_reg_channel_write_v6762 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_done;
assign ap_idle = ((v6753_0_c_channel_empty_n ^ 1'b1) & (v6753_0_c43_channel1_empty_n ^ 1'b1) & (v6762_t_empty_n ^ 1'b1) & (v6759_t_empty_n ^ 1'b1) & (v6760_t_empty_n ^ 1'b1) & (v6761_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v6753_0_c43_channel1 = ((v6753_0_c43_channel1_full_n & ap_channel_done_v6753_0_c43_channel1) | ap_sync_reg_channel_write_v6753_0_c43_channel1);
assign ap_sync_channel_write_v6753_0_c_channel = ((v6753_0_c_channel_full_n & ap_channel_done_v6753_0_c_channel) | ap_sync_reg_channel_write_v6753_0_c_channel);
assign ap_sync_channel_write_v6761 = ((dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_full_n & ap_channel_done_v6761) | ap_sync_reg_channel_write_v6761);
assign ap_sync_channel_write_v6762 = ((dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_full_n & ap_channel_done_v6762) | ap_sync_reg_channel_write_v6762);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_ap_start = (v6762_t_empty_n & v6753_0_c_channel_empty_n);
assign dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_continue = (ap_sync_channel_write_v6762 & ap_sync_channel_write_v6753_0_c_channel);
assign dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_ap_start = (v6761_t_empty_n & v6760_t_empty_n & v6759_t_empty_n & v6753_0_c43_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7893_1_proc_U0_v6762_full_n = v6762_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_continue = v6759_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_continue = v6760_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_continue = (ap_sync_channel_write_v6761 & ap_sync_channel_write_v6753_0_c43_channel1);
assign dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v6761_full_n = v6761_i_full_n;
assign v15417_address0 = dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v15417_address0;
assign v15417_address1 = 13'd0;
assign v15417_ce0 = dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7937_1_proc_U0_v15417_ce0;
assign v15417_ce1 = 1'b0;
assign v15417_d0 = 8'd0;
assign v15417_d1 = 8'd0;
assign v15417_we0 = 1'b0;
assign v15417_we1 = 1'b0;
assign v15496_address0 = dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v15496_address0;
assign v15496_address1 = 17'd0;
assign v15496_ce0 = dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7956_1_proc_U0_v15496_ce0;
assign v15496_ce1 = 1'b0;
assign v15496_d0 = 8'd0;
assign v15496_d1 = 8'd0;
assign v15496_we0 = 1'b0;
assign v15496_we1 = 1'b0;
assign v15497_address0 = dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v15497_address0;
assign v15497_address1 = 15'd0;
assign v15497_ce0 = dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v15497_ce0;
assign v15497_ce1 = 1'b0;
assign v15497_d0 = dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v15497_d0;
assign v15497_d1 = 8'd0;
assign v15497_we0 = dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7869_1_proc_U0_v15497_we0;
assign v15497_we1 = 1'b0;
assign v15498_address0 = dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v15498_address0;
assign v15498_address1 = 15'd0;
assign v15498_ce0 = dataflow_in_loop_VITIS_LOOP_7972_1_Loop_VITIS_LOOP_7920_1_proc_U0_v15498_ce0;
assign v15498_ce1 = 1'b0;
assign v15498_d0 = 8'd0;
assign v15498_d1 = 8'd0;
assign v15498_we0 = 1'b0;
assign v15498_we1 = 1'b0;
endmodule 