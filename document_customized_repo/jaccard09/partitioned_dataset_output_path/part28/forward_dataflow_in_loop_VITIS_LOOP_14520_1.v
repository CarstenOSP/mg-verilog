
module forward_dataflow_in_loop_VITIS_LOOP_14520_1 (ap_clk,ap_rst,v11555_0,v15461_address0,v15461_ce0,v15461_d0,v15461_q0,v15461_we0,v15461_address1,v15461_ce1,v15461_d1,v15461_q1,v15461_we1,v15462_address0,v15462_ce0,v15462_d0,v15462_q0,v15462_we0,v15462_address1,v15462_ce1,v15462_d1,v15462_q1,v15462_we1,v15423_address0,v15423_ce0,v15423_d0,v15423_q0,v15423_we0,v15423_address1,v15423_ce1,v15423_d1,v15423_q1,v15423_we1,v15460_address0,v15460_ce0,v15460_d0,v15460_q0,v15460_we0,v15460_address1,v15460_ce1,v15460_d1,v15460_q1,v15460_we1,v11555_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [8:0] v11555_0;
output  [15:0] v15461_address0;
output   v15461_ce0;
output  [7:0] v15461_d0;
input  [7:0] v15461_q0;
output   v15461_we0;
output  [15:0] v15461_address1;
output   v15461_ce1;
output  [7:0] v15461_d1;
input  [7:0] v15461_q1;
output   v15461_we1;
output  [15:0] v15462_address0;
output   v15462_ce0;
output  [7:0] v15462_d0;
input  [7:0] v15462_q0;
output   v15462_we0;
output  [15:0] v15462_address1;
output   v15462_ce1;
output  [7:0] v15462_d1;
input  [7:0] v15462_q1;
output   v15462_we1;
output  [11:0] v15423_address0;
output   v15423_ce0;
output  [7:0] v15423_d0;
input  [7:0] v15423_q0;
output   v15423_we0;
output  [11:0] v15423_address1;
output   v15423_ce1;
output  [7:0] v15423_d1;
input  [7:0] v15423_q1;
output   v15423_we1;
output  [17:0] v15460_address0;
output   v15460_ce0;
output  [7:0] v15460_d0;
input  [7:0] v15460_q0;
output   v15460_we0;
output  [17:0] v15460_address1;
output   v15460_ce1;
output  [7:0] v15460_d1;
input  [7:0] v15460_q1;
output   v15460_we1;
input   v11555_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v11564_i_q0;
wire   [7:0] v11564_t_q0;
wire   [7:0] v11563_i_q0;
wire   [7:0] v11563_t_q0;
wire   [7:0] v11562_i_q0;
wire   [7:0] v11562_t_q0;
wire   [7:0] v11561_i_q0;
wire   [7:0] v11561_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready;
wire   [17:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v15460_address0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v15460_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v11563_address0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v11563_ce0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v11563_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v11563_d0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready;
wire   [11:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v15423_address0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v15423_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_address0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_ce0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_d0;
wire   [8:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_return;
wire    ap_channel_done_v11555_0_c79_channel2;
wire    v11555_0_c79_channel2_full_n;
reg    ap_sync_reg_channel_write_v11555_0_c79_channel2;
wire    ap_sync_channel_write_v11555_0_c79_channel2;
wire    ap_channel_done_v11562;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_full_n;
reg    ap_sync_reg_channel_write_v11562;
wire    ap_sync_channel_write_v11562;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v15462_address0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v15462_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v11561_address0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v11561_ce0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v11561_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v11561_d0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11562_address0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11562_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11563_address0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11563_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11561_address0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11561_ce0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_address0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_ce0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_d0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_return;
wire    ap_channel_done_v11555_0_c_channel1;
wire    v11555_0_c_channel1_full_n;
reg    ap_sync_reg_channel_write_v11555_0_c_channel1;
wire    ap_sync_channel_write_v11555_0_c_channel1;
wire    ap_channel_done_v11564;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_full_n;
reg    ap_sync_reg_channel_write_v11564;
wire    ap_sync_channel_write_v11564;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_ready;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v11564_address0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v11564_ce0;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v15461_address0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v15461_ce0;
wire    dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v15461_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v15461_d0;
wire    v11563_i_full_n;
wire    v11563_t_empty_n;
wire    v11562_i_full_n;
wire    v11562_t_empty_n;
wire    v11561_i_full_n;
wire    v11561_t_empty_n;
wire    v11564_i_full_n;
wire    v11564_t_empty_n;
wire   [8:0] v11555_0_c79_channel2_dout;
wire   [2:0] v11555_0_c79_channel2_num_data_valid;
wire   [2:0] v11555_0_c79_channel2_fifo_cap;
wire    v11555_0_c79_channel2_empty_n;
wire   [4:0] v11555_0_c_channel1_dout;
wire   [2:0] v11555_0_c_channel1_num_data_valid;
wire   [2:0] v11555_0_c_channel1_fifo_cap;
wire    v11555_0_c_channel1_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v11555_0_c79_channel2 = 1'b0;
#0 ap_sync_reg_channel_write_v11562 = 1'b0;
#0 ap_sync_reg_channel_write_v11555_0_c_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v11564 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v11564_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_d0),.i_q0(v11564_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v11564_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v11564_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11564_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11564_i_full_n),.i_write(ap_channel_done_v11564),.t_empty_n(v11564_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v11563_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v11563_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v11563_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v11563_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v11563_d0),.i_q0(v11563_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11563_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11563_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11563_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11563_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_done),.t_empty_n(v11563_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v11562_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_d0),.i_q0(v11562_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11562_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11562_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11562_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11562_i_full_n),.i_write(ap_channel_done_v11562),.t_empty_n(v11562_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_19662_1_v15048_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 1568 ),.AddressWidth( 11 ))
v11561_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v11561_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v11561_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v11561_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v11561_d0),.i_q0(v11561_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11561_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11561_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v11561_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v11561_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_done),.t_empty_n(v11561_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111 dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready),.v11555_0(v11555_0),.v15460_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v15460_address0),.v15460_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v15460_ce0),.v15460_q0(v15460_q0),.v11563_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v11563_address0),.v11563_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v11563_ce0),.v11563_we0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v11563_we0),.v11563_d0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v11563_d0));
forward_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready),.v11555_0(v11555_0),.v15423_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v15423_address0),.v15423_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v15423_ce0),.v15423_q0(v15423_q0),.v11562_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_address0),.v11562_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_ce0),.v11562_we0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_we0),.v11562_d0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110 dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready),.v11555_0(v11555_0),.v15462_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v15462_address0),.v15462_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v15462_ce0),.v15462_q0(v15462_q0),.v11561_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v11561_address0),.v11561_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v11561_ce0),.v11561_we0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v11561_we0),.v11561_d0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v11561_d0));
forward_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_ready),.p_read(v11555_0_c79_channel2_dout),.v11562_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11562_address0),.v11562_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11562_ce0),.v11562_q0(v11562_t_q0),.v11563_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11563_address0),.v11563_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11563_ce0),.v11563_q0(v11563_t_q0),.v11561_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11561_address0),.v11561_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11561_ce0),.v11561_q0(v11561_t_q0),.v11564_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_address0),.v11564_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_ce0),.v11564_we0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_we0),.v11564_d0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112 dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_ready),.p_read(v11555_0_c_channel1_dout),.v11564_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v11564_address0),.v11564_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v11564_ce0),.v11564_q0(v11564_t_q0),.v15461_address0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v15461_address0),.v15461_ce0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v15461_ce0),.v15461_we0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v15461_we0),.v15461_d0(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v15461_d0));
forward_fifo_w9_d2_S_x0 v11555_0_c79_channel2_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_return),.if_full_n(v11555_0_c79_channel2_full_n),.if_write(ap_channel_done_v11555_0_c79_channel2),.if_dout(v11555_0_c79_channel2_dout),.if_num_data_valid(v11555_0_c79_channel2_num_data_valid),.if_fifo_cap(v11555_0_c79_channel2_fifo_cap),.if_empty_n(v11555_0_c79_channel2_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_ready));
forward_fifo_w5_d2_S_x5 v11555_0_c_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_return),.if_full_n(v11555_0_c_channel1_full_n),.if_write(ap_channel_done_v11555_0_c_channel1),.if_dout(v11555_0_c_channel1_dout),.if_num_data_valid(v11555_0_c_channel1_num_data_valid),.if_fifo_cap(v11555_0_c_channel1_fifo_cap),.if_empty_n(v11555_0_c_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11555_0_c79_channel2 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11555_0_c79_channel2 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11555_0_c79_channel2 <= ap_sync_channel_write_v11555_0_c79_channel2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11555_0_c_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11555_0_c_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11555_0_c_channel1 <= ap_sync_channel_write_v11555_0_c_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11562 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11562 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11562 <= ap_sync_channel_write_v11562;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v11564 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v11564 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v11564 <= ap_sync_channel_write_v11564;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v11555_0_c79_channel2 = ((ap_sync_reg_channel_write_v11555_0_c79_channel2 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_done);
assign ap_channel_done_v11555_0_c_channel1 = ((ap_sync_reg_channel_write_v11555_0_c_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_done);
assign ap_channel_done_v11562 = ((ap_sync_reg_channel_write_v11562 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_done);
assign ap_channel_done_v11564 = ((ap_sync_reg_channel_write_v11564 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_done;
assign ap_idle = ((v11555_0_c_channel1_empty_n ^ 1'b1) & (v11555_0_c79_channel2_empty_n ^ 1'b1) & (v11564_t_empty_n ^ 1'b1) & (v11561_t_empty_n ^ 1'b1) & (v11562_t_empty_n ^ 1'b1) & (v11563_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v11555_0_c79_channel2 = ((v11555_0_c79_channel2_full_n & ap_channel_done_v11555_0_c79_channel2) | ap_sync_reg_channel_write_v11555_0_c79_channel2);
assign ap_sync_channel_write_v11555_0_c_channel1 = ((v11555_0_c_channel1_full_n & ap_channel_done_v11555_0_c_channel1) | ap_sync_reg_channel_write_v11555_0_c_channel1);
assign ap_sync_channel_write_v11562 = ((dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_full_n & ap_channel_done_v11562) | ap_sync_reg_channel_write_v11562);
assign ap_sync_channel_write_v11564 = ((dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_full_n & ap_channel_done_v11564) | ap_sync_reg_channel_write_v11564);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_ap_start = (v11564_t_empty_n & v11555_0_c_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_continue = (ap_sync_channel_write_v11564 & ap_sync_channel_write_v11555_0_c_channel1);
assign dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_ap_start = (v11563_t_empty_n & v11562_t_empty_n & v11561_t_empty_n & v11555_0_c79_channel2_empty_n);
assign dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14429_1_proc_U0_v11564_full_n = v11564_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_continue = v11561_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_continue = (ap_sync_channel_write_v11562 & ap_sync_channel_write_v11555_0_c79_channel2);
assign dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v11562_full_n = v11562_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_continue = v11563_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_ap_ready ^ 1'b1) & ap_start);
assign v15423_address0 = dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v15423_address0;
assign v15423_address1 = 12'd0;
assign v15423_ce0 = dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14481_1_proc_U0_v15423_ce0;
assign v15423_ce1 = 1'b0;
assign v15423_d0 = 8'd0;
assign v15423_d1 = 8'd0;
assign v15423_we0 = 1'b0;
assign v15423_we1 = 1'b0;
assign v15460_address0 = dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v15460_address0;
assign v15460_address1 = 18'd0;
assign v15460_ce0 = dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14500_1_proc111_U0_v15460_ce0;
assign v15460_ce1 = 1'b0;
assign v15460_d0 = 8'd0;
assign v15460_d1 = 8'd0;
assign v15460_we0 = 1'b0;
assign v15460_we1 = 1'b0;
assign v15461_address0 = dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v15461_address0;
assign v15461_address1 = 16'd0;
assign v15461_ce0 = dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v15461_ce0;
assign v15461_ce1 = 1'b0;
assign v15461_d0 = dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v15461_d0;
assign v15461_d1 = 8'd0;
assign v15461_we0 = dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14401_1_proc112_U0_v15461_we0;
assign v15461_we1 = 1'b0;
assign v15462_address0 = dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v15462_address0;
assign v15462_address1 = 16'd0;
assign v15462_ce0 = dataflow_in_loop_VITIS_LOOP_14520_1_Loop_VITIS_LOOP_14460_1_proc110_U0_v15462_ce0;
assign v15462_ce1 = 1'b0;
assign v15462_d0 = 8'd0;
assign v15462_d1 = 8'd0;
assign v15462_we0 = 1'b0;
assign v15462_we1 = 1'b0;
endmodule 
