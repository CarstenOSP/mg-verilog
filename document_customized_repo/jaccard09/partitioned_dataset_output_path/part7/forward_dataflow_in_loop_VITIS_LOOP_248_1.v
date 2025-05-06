
module forward_dataflow_in_loop_VITIS_LOOP_248_1 (ap_clk,ap_rst,v94_0,v15509_address0,v15509_ce0,v15509_d0,v15509_q0,v15509_we0,v15509_address1,v15509_ce1,v15509_d1,v15509_q1,v15509_we1,v15510_address0,v15510_ce0,v15510_d0,v15510_q0,v15510_we0,v15510_address1,v15510_ce1,v15510_d1,v15510_q1,v15510_we1,v15508_address0,v15508_ce0,v15508_d0,v15508_q0,v15508_we0,v15508_address1,v15508_ce1,v15508_d1,v15508_q1,v15508_we1,v94_0_ap_vld,ap_start,ap_done,ap_ready,ap_idle,ap_continue);  
input   ap_clk;
input   ap_rst;
input  [10:0] v94_0;
output  [9:0] v15509_address0;
output   v15509_ce0;
output  [7:0] v15509_d0;
input  [7:0] v15509_q0;
output   v15509_we0;
output  [9:0] v15509_address1;
output   v15509_ce1;
output  [7:0] v15509_d1;
input  [7:0] v15509_q1;
output   v15509_we1;
output  [9:0] v15510_address0;
output   v15510_ce0;
output  [7:0] v15510_d0;
input  [7:0] v15510_q0;
output   v15510_we0;
output  [9:0] v15510_address1;
output   v15510_ce1;
output  [7:0] v15510_d1;
input  [7:0] v15510_q1;
output   v15510_we1;
output  [15:0] v15508_address0;
output   v15508_ce0;
output  [7:0] v15508_d0;
input  [7:0] v15508_q0;
output   v15508_we0;
output  [15:0] v15508_address1;
output   v15508_ce1;
output  [7:0] v15508_d1;
input  [7:0] v15508_q1;
output   v15508_we1;
input   v94_0_ap_vld;
input   ap_start;
output   ap_done;
output   ap_ready;
output   ap_idle;
input   ap_continue;
wire   [7:0] v100_i_q0;
wire   [7:0] v100_t_q0;
wire   [7:0] v99_i_q0;
wire   [7:0] v99_t_q0;
wire   [7:0] v98_i_q0;
wire   [7:0] v98_t_q0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready;
wire   [15:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v15508_address0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v15508_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_address0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_ce0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_d0;
wire   [10:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_return;
wire    ap_channel_done_v94_0_c26_channel1;
wire    v94_0_c26_channel1_full_n;
reg    ap_sync_reg_channel_write_v94_0_c26_channel1;
wire    ap_sync_channel_write_v94_0_c26_channel1;
wire    ap_channel_done_v99;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_full_n;
reg    ap_sync_reg_channel_write_v99;
wire    ap_sync_channel_write_v99;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v15510_address0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v15510_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v98_address0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v98_ce0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v98_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v98_d0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v99_address0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v99_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v98_address0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v98_ce0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_address0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_ce0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_d0;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_return;
wire    ap_channel_done_v94_0_c_channel;
wire    v94_0_c_channel_full_n;
reg    ap_sync_reg_channel_write_v94_0_c_channel;
wire    ap_sync_channel_write_v94_0_c_channel;
wire    ap_channel_done_v100;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_full_n;
reg    ap_sync_reg_channel_write_v100;
wire    ap_sync_channel_write_v100;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_start;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_done;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_continue;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_idle;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_ready;
wire   [4:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v100_address0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v100_ce0;
wire   [9:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v15509_address0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v15509_ce0;
wire    dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v15509_we0;
wire   [7:0] dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v15509_d0;
wire    v99_i_full_n;
wire    v99_t_empty_n;
wire    v98_i_full_n;
wire    v98_t_empty_n;
wire    v100_i_full_n;
wire    v100_t_empty_n;
wire   [10:0] v94_0_c26_channel1_dout;
wire   [2:0] v94_0_c26_channel1_num_data_valid;
wire   [2:0] v94_0_c26_channel1_fifo_cap;
wire    v94_0_c26_channel1_empty_n;
wire   [4:0] v94_0_c_channel_dout;
wire   [2:0] v94_0_c_channel_num_data_valid;
wire   [2:0] v94_0_c_channel_fifo_cap;
wire    v94_0_c_channel_empty_n;
wire    ap_sync_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready;
reg    ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready;
wire    ap_sync_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready;
wire    ap_ce_reg;
initial begin
#0 ap_sync_reg_channel_write_v94_0_c26_channel1 = 1'b0;
#0 ap_sync_reg_channel_write_v99 = 1'b0;
#0 ap_sync_reg_channel_write_v94_0_c_channel = 1'b0;
#0 ap_sync_reg_channel_write_v100 = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready = 1'b0;
#0 ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready = 1'b0;
end
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v100_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_d0),.i_q0(v100_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v100_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v100_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v100_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v100_i_full_n),.i_write(ap_channel_done_v100),.t_empty_n(v100_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v99_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_d0),.i_q0(v99_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v99_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v99_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v99_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v99_i_full_n),.i_write(ap_channel_done_v99),.t_empty_n(v99_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_18263_1_v14173_RAM_T2P_BRAM_1R1W #(.DataWidth( 8 ),.AddressRange( 32 ),.AddressWidth( 5 ))
v98_U(.clk(ap_clk),.reset(ap_rst),.i_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v98_address0),.i_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v98_ce0),.i_we0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v98_we0),.i_d0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v98_d0),.i_q0(v98_i_q0),.t_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v98_address0),.t_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v98_ce0),.t_we0(1'b0),.t_d0(8'd0),.t_q0(v98_t_q0),.i_ce(1'b1),.t_ce(1'b1),.i_full_n(v98_i_full_n),.i_write(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_done),.t_empty_n(v98_t_empty_n),.t_read(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_ready));
forward_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready),.v94_0(v94_0),.v15508_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v15508_address0),.v15508_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v15508_ce0),.v15508_q0(v15508_q0),.v99_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_address0),.v99_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_ce0),.v99_we0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_we0),.v99_d0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready),.v94_0(v94_0),.v15510_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v15510_address0),.v15510_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v15510_ce0),.v15510_q0(v15510_q0),.v98_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v98_address0),.v98_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v98_ce0),.v98_we0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v98_we0),.v98_d0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v98_d0));
forward_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_ready),.p_read(v94_0_c26_channel1_dout),.v99_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v99_address0),.v99_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v99_ce0),.v99_q0(v99_t_q0),.v98_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v98_address0),.v98_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v98_ce0),.v98_q0(v98_t_q0),.v100_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_address0),.v100_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_ce0),.v100_we0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_we0),.v100_d0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_d0),.ap_return(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_return));
forward_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_start),.ap_done(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_done),.ap_continue(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_continue),.ap_idle(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_idle),.ap_ready(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_ready),.v100_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v100_address0),.v100_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v100_ce0),.v100_q0(v100_t_q0),.p_read(v94_0_c_channel_dout),.v15509_address0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v15509_address0),.v15509_ce0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v15509_ce0),.v15509_we0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v15509_we0),.v15509_d0(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v15509_d0));
forward_fifo_w11_d2_S v94_0_c26_channel1_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_return),.if_full_n(v94_0_c26_channel1_full_n),.if_write(ap_channel_done_v94_0_c26_channel1),.if_dout(v94_0_c26_channel1_dout),.if_num_data_valid(v94_0_c26_channel1_num_data_valid),.if_fifo_cap(v94_0_c26_channel1_fifo_cap),.if_empty_n(v94_0_c26_channel1_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_ready));
forward_fifo_w5_d2_S_x6 v94_0_c_channel_U(.clk(ap_clk),.reset(ap_rst),.if_read_ce(1'b1),.if_write_ce(1'b1),.if_din(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_return),.if_full_n(v94_0_c_channel_full_n),.if_write(ap_channel_done_v94_0_c_channel),.if_dout(v94_0_c_channel_dout),.if_num_data_valid(v94_0_c_channel_num_data_valid),.if_fifo_cap(v94_0_c_channel_fifo_cap),.if_empty_n(v94_0_c_channel_empty_n),.if_read(dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_ready));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v100 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v100 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v100 <= ap_sync_channel_write_v100;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v94_0_c26_channel1 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v94_0_c26_channel1 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v94_0_c26_channel1 <= ap_sync_channel_write_v94_0_c26_channel1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v94_0_c_channel <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v94_0_c_channel <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v94_0_c_channel <= ap_sync_channel_write_v94_0_c_channel;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_channel_write_v99 <= 1'b0;
    end else begin
        if (((dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_done & dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_continue) == 1'b1)) begin
            ap_sync_reg_channel_write_v99 <= 1'b0;
        end else begin
            ap_sync_reg_channel_write_v99 <= ap_sync_channel_write_v99;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready <= 1'b0;
    end else begin
        if (((ap_sync_ready & ap_start) == 1'b1)) begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready <= 1'b0;
        end else begin
            ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready <= ap_sync_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready;
        end
    end
end
assign ap_channel_done_v100 = ((ap_sync_reg_channel_write_v100 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_done);
assign ap_channel_done_v94_0_c26_channel1 = ((ap_sync_reg_channel_write_v94_0_c26_channel1 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_done);
assign ap_channel_done_v94_0_c_channel = ((ap_sync_reg_channel_write_v94_0_c_channel ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_done);
assign ap_channel_done_v99 = ((ap_sync_reg_channel_write_v99 ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_done);
assign ap_done = dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_done;
assign ap_idle = ((v94_0_c_channel_empty_n ^ 1'b1) & (v94_0_c26_channel1_empty_n ^ 1'b1) & (v100_t_empty_n ^ 1'b1) & (v98_t_empty_n ^ 1'b1) & (v99_t_empty_n ^ 1'b1) & dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_idle & dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_idle);
assign ap_ready = ap_sync_ready;
assign ap_sync_channel_write_v100 = ((dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_full_n & ap_channel_done_v100) | ap_sync_reg_channel_write_v100);
assign ap_sync_channel_write_v94_0_c26_channel1 = ((v94_0_c26_channel1_full_n & ap_channel_done_v94_0_c26_channel1) | ap_sync_reg_channel_write_v94_0_c26_channel1);
assign ap_sync_channel_write_v94_0_c_channel = ((v94_0_c_channel_full_n & ap_channel_done_v94_0_c_channel) | ap_sync_reg_channel_write_v94_0_c_channel);
assign ap_sync_channel_write_v99 = ((dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_full_n & ap_channel_done_v99) | ap_sync_reg_channel_write_v99);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready);
assign ap_sync_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready = (dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready | ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready);
assign ap_sync_ready = (ap_sync_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready & ap_sync_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready);
assign dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_continue = ap_continue;
assign dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_ap_start = (v94_0_c_channel_empty_n & v100_t_empty_n);
assign dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_continue = (ap_sync_channel_write_v94_0_c_channel & ap_sync_channel_write_v100);
assign dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_ap_start = (v99_t_empty_n & v98_t_empty_n & v94_0_c26_channel1_empty_n);
assign dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_194_1_proc_U0_v100_full_n = v100_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_continue = v98_i_full_n;
assign dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_continue = (ap_sync_channel_write_v99 & ap_sync_channel_write_v94_0_c26_channel1);
assign dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_start = ((ap_sync_reg_dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_ap_ready ^ 1'b1) & ap_start);
assign dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v99_full_n = v99_i_full_n;
assign v15508_address0 = dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v15508_address0;
assign v15508_address1 = 16'd0;
assign v15508_ce0 = dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_233_1_proc_U0_v15508_ce0;
assign v15508_ce1 = 1'b0;
assign v15508_d0 = 8'd0;
assign v15508_d1 = 8'd0;
assign v15508_we0 = 1'b0;
assign v15508_we1 = 1'b0;
assign v15509_address0 = dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v15509_address0;
assign v15509_address1 = 10'd0;
assign v15509_ce0 = dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v15509_ce0;
assign v15509_ce1 = 1'b0;
assign v15509_d0 = dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v15509_d0;
assign v15509_d1 = 8'd0;
assign v15509_we0 = dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_173_1_proc_U0_v15509_we0;
assign v15509_we1 = 1'b0;
assign v15510_address0 = dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v15510_address0;
assign v15510_address1 = 10'd0;
assign v15510_ce0 = dataflow_in_loop_VITIS_LOOP_248_1_Loop_VITIS_LOOP_216_1_proc_U0_v15510_ce0;
assign v15510_ce1 = 1'b0;
assign v15510_d0 = 8'd0;
assign v15510_d1 = 8'd0;
assign v15510_we0 = 1'b0;
assign v15510_we1 = 1'b0;
endmodule 
