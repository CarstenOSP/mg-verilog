
module forward_forward_node55 (ap_clk,ap_rst,ap_start,start_full_n,ap_done,ap_continue,ap_idle,ap_ready,start_out,start_write,v9404_dout,v9404_num_data_valid,v9404_fifo_cap,v9404_empty_n,v9404_read,v9246_0_address0,v9246_0_ce0,v9246_0_q0,v9246_1_address0,v9246_1_ce0,v9246_1_q0,v9402_dout,v9402_num_data_valid,v9402_fifo_cap,v9402_empty_n,v9402_read,v9238_address0,v9238_ce0,v9238_q0,v9184_0_address0,v9184_0_ce0,v9184_0_q0,v9184_1_address0,v9184_1_ce0,v9184_1_q0,v9251_0_address0,v9251_0_ce0,v9251_0_q0,v9251_1_address0,v9251_1_ce0,v9251_1_q0,v9406_din,v9406_num_data_valid,v9406_fifo_cap,v9406_full_n,v9406_write,v9405_din,v9405_num_data_valid,v9405_fifo_cap,v9405_full_n,v9405_write,v9247_0_address0,v9247_0_ce0,v9247_0_we0,v9247_0_d0,v9247_1_address0,v9247_1_ce0,v9247_1_we0,v9247_1_d0,v9250_0_address0,v9250_0_ce0,v9250_0_we0,v9250_0_d0,v9250_1_address0,v9250_1_ce0,v9250_1_we0,v9250_1_d0);  
parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
input   start_full_n;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
output   start_out;
output   start_write;
input  [0:0] v9404_dout;
input  [2:0] v9404_num_data_valid;
input  [2:0] v9404_fifo_cap;
input   v9404_empty_n;
output   v9404_read;
output  [14:0] v9246_0_address0;
output   v9246_0_ce0;
input  [7:0] v9246_0_q0;
output  [14:0] v9246_1_address0;
output   v9246_1_ce0;
input  [7:0] v9246_1_q0;
input  [0:0] v9402_dout;
input  [2:0] v9402_num_data_valid;
input  [2:0] v9402_fifo_cap;
input   v9402_empty_n;
output   v9402_read;
output  [16:0] v9238_address0;
output   v9238_ce0;
input  [7:0] v9238_q0;
output  [13:0] v9184_0_address0;
output   v9184_0_ce0;
input  [7:0] v9184_0_q0;
output  [13:0] v9184_1_address0;
output   v9184_1_ce0;
input  [7:0] v9184_1_q0;
output  [14:0] v9251_0_address0;
output   v9251_0_ce0;
input  [7:0] v9251_0_q0;
output  [14:0] v9251_1_address0;
output   v9251_1_ce0;
input  [7:0] v9251_1_q0;
output  [0:0] v9406_din;
input  [2:0] v9406_num_data_valid;
input  [2:0] v9406_fifo_cap;
input   v9406_full_n;
output   v9406_write;
output  [0:0] v9405_din;
input  [2:0] v9405_num_data_valid;
input  [2:0] v9405_fifo_cap;
input   v9405_full_n;
output   v9405_write;
output  [14:0] v9247_0_address0;
output   v9247_0_ce0;
output   v9247_0_we0;
output  [7:0] v9247_0_d0;
output  [14:0] v9247_1_address0;
output   v9247_1_ce0;
output   v9247_1_we0;
output  [7:0] v9247_1_d0;
output  [14:0] v9250_0_address0;
output   v9250_0_ce0;
output   v9250_0_we0;
output  [7:0] v9250_0_d0;
output  [14:0] v9250_1_address0;
output   v9250_1_ce0;
output   v9250_1_we0;
output  [7:0] v9250_1_d0;
reg ap_done;
reg ap_idle;
reg start_write;
reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    v9404_blk_n;
wire    ap_CS_fsm_state2;
reg    v9402_blk_n;
reg    v9406_blk_n;
reg    v9405_blk_n;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9250_1_address0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9250_1_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9250_1_d0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9250_1_we0;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9250_1_address1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9250_1_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9250_1_d1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9250_1_we1;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9250_0_address0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9250_0_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9250_0_d0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9250_0_we0;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9250_0_address1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9250_0_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9250_0_d1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9250_0_we1;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9247_1_address0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9247_1_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9247_1_d0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9247_1_we0;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9247_1_address1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9247_1_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9247_1_d1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9247_1_we1;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9247_0_address0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9247_0_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9247_0_d0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9247_0_we0;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9247_0_address1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9247_0_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9247_0_d1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9247_0_we1;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9246_0_address0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9246_0_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9246_0_d0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9246_0_we0;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9246_0_address1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9246_0_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9246_0_d1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9246_0_we1;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9246_1_address0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9246_1_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9246_1_d0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9246_1_we0;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9246_1_address1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9246_1_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9246_1_d1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9246_1_we1;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9251_0_address0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9251_0_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9251_0_d0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9251_0_we0;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9251_0_address1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9251_0_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9251_0_d1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9251_0_we1;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9251_1_address0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9251_1_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9251_1_d0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9251_1_we0;
wire   [14:0] grp_dataflow_parent_loop_proc135_fu_82_v9251_1_address1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9251_1_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9251_1_d1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9251_1_we1;
wire   [13:0] grp_dataflow_parent_loop_proc135_fu_82_v9184_0_address0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9184_0_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9184_0_d0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9184_0_we0;
wire   [13:0] grp_dataflow_parent_loop_proc135_fu_82_v9184_0_address1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9184_0_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9184_0_d1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9184_0_we1;
wire   [13:0] grp_dataflow_parent_loop_proc135_fu_82_v9184_1_address0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9184_1_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9184_1_d0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9184_1_we0;
wire   [13:0] grp_dataflow_parent_loop_proc135_fu_82_v9184_1_address1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9184_1_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9184_1_d1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9184_1_we1;
wire   [16:0] grp_dataflow_parent_loop_proc135_fu_82_v9238_address0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9238_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9238_d0;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9238_we0;
wire   [16:0] grp_dataflow_parent_loop_proc135_fu_82_v9238_address1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9238_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc135_fu_82_v9238_d1;
wire    grp_dataflow_parent_loop_proc135_fu_82_v9238_we1;
wire    grp_dataflow_parent_loop_proc135_fu_82_ap_start;
wire    grp_dataflow_parent_loop_proc135_fu_82_ap_done;
wire    grp_dataflow_parent_loop_proc135_fu_82_ap_ready;
wire    grp_dataflow_parent_loop_proc135_fu_82_ap_idle;
reg    grp_dataflow_parent_loop_proc135_fu_82_ap_continue;
reg    grp_dataflow_parent_loop_proc135_fu_82_ap_start_reg;
reg    ap_block_state1_ignore_call28;
reg    ap_block_state2_ignore_call28;
reg    ap_sync_reg_grp_dataflow_parent_loop_proc135_fu_82_ap_ready;
reg    ap_sync_reg_grp_dataflow_parent_loop_proc135_fu_82_ap_done;
reg    ap_block_state2_on_subcall_done;
wire    ap_sync_grp_dataflow_parent_loop_proc135_fu_82_ap_ready;
reg    ap_block_state1;
reg    v9406_write_local;
reg    v9405_write_local;
reg    ap_block_state2;
reg    v9404_read_local;
reg    v9402_read_local;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_parent_loop_proc135_fu_82_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_dataflow_parent_loop_proc135_fu_82_ap_ready = 1'b0;
#0 ap_sync_reg_grp_dataflow_parent_loop_proc135_fu_82_ap_done = 1'b0;
end
forward_dataflow_parent_loop_proc135 grp_dataflow_parent_loop_proc135_fu_82(.v9250_1_address0(grp_dataflow_parent_loop_proc135_fu_82_v9250_1_address0),.v9250_1_ce0(grp_dataflow_parent_loop_proc135_fu_82_v9250_1_ce0),.v9250_1_d0(grp_dataflow_parent_loop_proc135_fu_82_v9250_1_d0),.v9250_1_q0(8'd0),.v9250_1_we0(grp_dataflow_parent_loop_proc135_fu_82_v9250_1_we0),.v9250_1_address1(grp_dataflow_parent_loop_proc135_fu_82_v9250_1_address1),.v9250_1_ce1(grp_dataflow_parent_loop_proc135_fu_82_v9250_1_ce1),.v9250_1_d1(grp_dataflow_parent_loop_proc135_fu_82_v9250_1_d1),.v9250_1_q1(8'd0),.v9250_1_we1(grp_dataflow_parent_loop_proc135_fu_82_v9250_1_we1),.v9250_0_address0(grp_dataflow_parent_loop_proc135_fu_82_v9250_0_address0),.v9250_0_ce0(grp_dataflow_parent_loop_proc135_fu_82_v9250_0_ce0),.v9250_0_d0(grp_dataflow_parent_loop_proc135_fu_82_v9250_0_d0),.v9250_0_q0(8'd0),.v9250_0_we0(grp_dataflow_parent_loop_proc135_fu_82_v9250_0_we0),.v9250_0_address1(grp_dataflow_parent_loop_proc135_fu_82_v9250_0_address1),.v9250_0_ce1(grp_dataflow_parent_loop_proc135_fu_82_v9250_0_ce1),.v9250_0_d1(grp_dataflow_parent_loop_proc135_fu_82_v9250_0_d1),.v9250_0_q1(8'd0),.v9250_0_we1(grp_dataflow_parent_loop_proc135_fu_82_v9250_0_we1),.v9247_1_address0(grp_dataflow_parent_loop_proc135_fu_82_v9247_1_address0),.v9247_1_ce0(grp_dataflow_parent_loop_proc135_fu_82_v9247_1_ce0),.v9247_1_d0(grp_dataflow_parent_loop_proc135_fu_82_v9247_1_d0),.v9247_1_q0(8'd0),.v9247_1_we0(grp_dataflow_parent_loop_proc135_fu_82_v9247_1_we0),.v9247_1_address1(grp_dataflow_parent_loop_proc135_fu_82_v9247_1_address1),.v9247_1_ce1(grp_dataflow_parent_loop_proc135_fu_82_v9247_1_ce1),.v9247_1_d1(grp_dataflow_parent_loop_proc135_fu_82_v9247_1_d1),.v9247_1_q1(8'd0),.v9247_1_we1(grp_dataflow_parent_loop_proc135_fu_82_v9247_1_we1),.v9247_0_address0(grp_dataflow_parent_loop_proc135_fu_82_v9247_0_address0),.v9247_0_ce0(grp_dataflow_parent_loop_proc135_fu_82_v9247_0_ce0),.v9247_0_d0(grp_dataflow_parent_loop_proc135_fu_82_v9247_0_d0),.v9247_0_q0(8'd0),.v9247_0_we0(grp_dataflow_parent_loop_proc135_fu_82_v9247_0_we0),.v9247_0_address1(grp_dataflow_parent_loop_proc135_fu_82_v9247_0_address1),.v9247_0_ce1(grp_dataflow_parent_loop_proc135_fu_82_v9247_0_ce1),.v9247_0_d1(grp_dataflow_parent_loop_proc135_fu_82_v9247_0_d1),.v9247_0_q1(8'd0),.v9247_0_we1(grp_dataflow_parent_loop_proc135_fu_82_v9247_0_we1),.v9246_0_address0(grp_dataflow_parent_loop_proc135_fu_82_v9246_0_address0),.v9246_0_ce0(grp_dataflow_parent_loop_proc135_fu_82_v9246_0_ce0),.v9246_0_d0(grp_dataflow_parent_loop_proc135_fu_82_v9246_0_d0),.v9246_0_q0(v9246_0_q0),.v9246_0_we0(grp_dataflow_parent_loop_proc135_fu_82_v9246_0_we0),.v9246_0_address1(grp_dataflow_parent_loop_proc135_fu_82_v9246_0_address1),.v9246_0_ce1(grp_dataflow_parent_loop_proc135_fu_82_v9246_0_ce1),.v9246_0_d1(grp_dataflow_parent_loop_proc135_fu_82_v9246_0_d1),.v9246_0_q1(8'd0),.v9246_0_we1(grp_dataflow_parent_loop_proc135_fu_82_v9246_0_we1),.v9246_1_address0(grp_dataflow_parent_loop_proc135_fu_82_v9246_1_address0),.v9246_1_ce0(grp_dataflow_parent_loop_proc135_fu_82_v9246_1_ce0),.v9246_1_d0(grp_dataflow_parent_loop_proc135_fu_82_v9246_1_d0),.v9246_1_q0(v9246_1_q0),.v9246_1_we0(grp_dataflow_parent_loop_proc135_fu_82_v9246_1_we0),.v9246_1_address1(grp_dataflow_parent_loop_proc135_fu_82_v9246_1_address1),.v9246_1_ce1(grp_dataflow_parent_loop_proc135_fu_82_v9246_1_ce1),.v9246_1_d1(grp_dataflow_parent_loop_proc135_fu_82_v9246_1_d1),.v9246_1_q1(8'd0),.v9246_1_we1(grp_dataflow_parent_loop_proc135_fu_82_v9246_1_we1),.v9251_0_address0(grp_dataflow_parent_loop_proc135_fu_82_v9251_0_address0),.v9251_0_ce0(grp_dataflow_parent_loop_proc135_fu_82_v9251_0_ce0),.v9251_0_d0(grp_dataflow_parent_loop_proc135_fu_82_v9251_0_d0),.v9251_0_q0(v9251_0_q0),.v9251_0_we0(grp_dataflow_parent_loop_proc135_fu_82_v9251_0_we0),.v9251_0_address1(grp_dataflow_parent_loop_proc135_fu_82_v9251_0_address1),.v9251_0_ce1(grp_dataflow_parent_loop_proc135_fu_82_v9251_0_ce1),.v9251_0_d1(grp_dataflow_parent_loop_proc135_fu_82_v9251_0_d1),.v9251_0_q1(8'd0),.v9251_0_we1(grp_dataflow_parent_loop_proc135_fu_82_v9251_0_we1),.v9251_1_address0(grp_dataflow_parent_loop_proc135_fu_82_v9251_1_address0),.v9251_1_ce0(grp_dataflow_parent_loop_proc135_fu_82_v9251_1_ce0),.v9251_1_d0(grp_dataflow_parent_loop_proc135_fu_82_v9251_1_d0),.v9251_1_q0(v9251_1_q0),.v9251_1_we0(grp_dataflow_parent_loop_proc135_fu_82_v9251_1_we0),.v9251_1_address1(grp_dataflow_parent_loop_proc135_fu_82_v9251_1_address1),.v9251_1_ce1(grp_dataflow_parent_loop_proc135_fu_82_v9251_1_ce1),.v9251_1_d1(grp_dataflow_parent_loop_proc135_fu_82_v9251_1_d1),.v9251_1_q1(8'd0),.v9251_1_we1(grp_dataflow_parent_loop_proc135_fu_82_v9251_1_we1),.v9184_0_address0(grp_dataflow_parent_loop_proc135_fu_82_v9184_0_address0),.v9184_0_ce0(grp_dataflow_parent_loop_proc135_fu_82_v9184_0_ce0),.v9184_0_d0(grp_dataflow_parent_loop_proc135_fu_82_v9184_0_d0),.v9184_0_q0(v9184_0_q0),.v9184_0_we0(grp_dataflow_parent_loop_proc135_fu_82_v9184_0_we0),.v9184_0_address1(grp_dataflow_parent_loop_proc135_fu_82_v9184_0_address1),.v9184_0_ce1(grp_dataflow_parent_loop_proc135_fu_82_v9184_0_ce1),.v9184_0_d1(grp_dataflow_parent_loop_proc135_fu_82_v9184_0_d1),.v9184_0_q1(8'd0),.v9184_0_we1(grp_dataflow_parent_loop_proc135_fu_82_v9184_0_we1),.v9184_1_address0(grp_dataflow_parent_loop_proc135_fu_82_v9184_1_address0),.v9184_1_ce0(grp_dataflow_parent_loop_proc135_fu_82_v9184_1_ce0),.v9184_1_d0(grp_dataflow_parent_loop_proc135_fu_82_v9184_1_d0),.v9184_1_q0(v9184_1_q0),.v9184_1_we0(grp_dataflow_parent_loop_proc135_fu_82_v9184_1_we0),.v9184_1_address1(grp_dataflow_parent_loop_proc135_fu_82_v9184_1_address1),.v9184_1_ce1(grp_dataflow_parent_loop_proc135_fu_82_v9184_1_ce1),.v9184_1_d1(grp_dataflow_parent_loop_proc135_fu_82_v9184_1_d1),.v9184_1_q1(8'd0),.v9184_1_we1(grp_dataflow_parent_loop_proc135_fu_82_v9184_1_we1),.v9238_address0(grp_dataflow_parent_loop_proc135_fu_82_v9238_address0),.v9238_ce0(grp_dataflow_parent_loop_proc135_fu_82_v9238_ce0),.v9238_d0(grp_dataflow_parent_loop_proc135_fu_82_v9238_d0),.v9238_q0(v9238_q0),.v9238_we0(grp_dataflow_parent_loop_proc135_fu_82_v9238_we0),.v9238_address1(grp_dataflow_parent_loop_proc135_fu_82_v9238_address1),.v9238_ce1(grp_dataflow_parent_loop_proc135_fu_82_v9238_ce1),.v9238_d1(grp_dataflow_parent_loop_proc135_fu_82_v9238_d1),.v9238_q1(8'd0),.v9238_we1(grp_dataflow_parent_loop_proc135_fu_82_v9238_we1),.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_parent_loop_proc135_fu_82_ap_start),.ap_done(grp_dataflow_parent_loop_proc135_fu_82_ap_done),.ap_ready(grp_dataflow_parent_loop_proc135_fu_82_ap_ready),.ap_idle(grp_dataflow_parent_loop_proc135_fu_82_ap_idle),.ap_continue(grp_dataflow_parent_loop_proc135_fu_82_ap_continue));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((~((1'b1 == ap_block_state2) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_dataflow_parent_loop_proc135_fu_82_ap_done <= 1'b0;
    end else begin
        if ((~((1'b1 == ap_block_state2_on_subcall_done) | (1'b1 == ap_block_state2_ignore_call28)) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc135_fu_82_ap_done <= 1'b0;
        end else if ((grp_dataflow_parent_loop_proc135_fu_82_ap_done == 1'b1)) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc135_fu_82_ap_done <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_dataflow_parent_loop_proc135_fu_82_ap_ready <= 1'b0;
    end else begin
        if ((~((1'b1 == ap_block_state2_on_subcall_done) | (1'b1 == ap_block_state2_ignore_call28)) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc135_fu_82_ap_ready <= 1'b0;
        end else if ((grp_dataflow_parent_loop_proc135_fu_82_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc135_fu_82_ap_ready <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_parent_loop_proc135_fu_82_ap_start_reg <= 1'b0;
    end else begin
        if ((((ap_sync_grp_dataflow_parent_loop_proc135_fu_82_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b0 == ap_block_state1_ignore_call28) & (1'b1 == ap_CS_fsm_state1)))) begin
            grp_dataflow_parent_loop_proc135_fu_82_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_parent_loop_proc135_fu_82_ap_ready == 1'b1)) begin
            grp_dataflow_parent_loop_proc135_fu_82_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((real_start == 1'b1) & (internal_ap_ready == 1'b0))) begin
            start_once_reg <= 1'b1;
        end else if ((internal_ap_ready == 1'b1)) begin
            start_once_reg <= 1'b0;
        end
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_block_state2) | (1'b1 == ap_block_state2_on_subcall_done))) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if ((~((1'b1 == ap_block_state2) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end
always @ (*) begin
    if (((real_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if ((~((1'b1 == ap_block_state2_on_subcall_done) | (1'b1 == ap_block_state2_ignore_call28)) & (1'b1 == ap_CS_fsm_state2))) begin
        grp_dataflow_parent_loop_proc135_fu_82_ap_continue = 1'b1;
    end else begin
        grp_dataflow_parent_loop_proc135_fu_82_ap_continue = 1'b0;
    end
end
always @ (*) begin
    if ((~((1'b1 == ap_block_state2) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((start_full_n == 1'b0) & (start_once_reg == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end
always @ (*) begin
    if (((real_start == 1'b1) & (start_once_reg == 1'b0))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v9402_blk_n = v9402_empty_n;
    end else begin
        v9402_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((1'b1 == ap_block_state2) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
        v9402_read_local = 1'b1;
    end else begin
        v9402_read_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        v9404_blk_n = v9404_empty_n;
    end else begin
        v9404_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((1'b1 == ap_block_state2) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
        v9404_read_local = 1'b1;
    end else begin
        v9404_read_local = 1'b0;
    end
end
always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        v9405_blk_n = v9405_full_n;
    end else begin
        v9405_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v9405_write_local = 1'b1;
    end else begin
        v9405_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        v9406_blk_n = v9406_full_n;
    end else begin
        v9406_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v9406_write_local = 1'b1;
    end else begin
        v9406_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((1'b1 == ap_block_state2) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
always @ (*) begin
    ap_block_state1 = ((v9406_full_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1) | (v9405_full_n == 1'b0));
end
always @ (*) begin
    ap_block_state1_ignore_call28 = ((v9406_full_n == 1'b0) | (real_start == 1'b0) | (ap_done_reg == 1'b1) | (v9405_full_n == 1'b0));
end
always @ (*) begin
    ap_block_state2 = ((v9402_empty_n == 1'b0) | (v9404_empty_n == 1'b0));
end
always @ (*) begin
    ap_block_state2_ignore_call28 = ((v9402_empty_n == 1'b0) | (v9404_empty_n == 1'b0));
end
always @ (*) begin
    ap_block_state2_on_subcall_done = ((ap_sync_reg_grp_dataflow_parent_loop_proc135_fu_82_ap_ready & ap_sync_reg_grp_dataflow_parent_loop_proc135_fu_82_ap_done) == 1'b0);
end
assign ap_ready = internal_ap_ready;
assign ap_sync_grp_dataflow_parent_loop_proc135_fu_82_ap_ready = (grp_dataflow_parent_loop_proc135_fu_82_ap_ready | ap_sync_reg_grp_dataflow_parent_loop_proc135_fu_82_ap_ready);
assign grp_dataflow_parent_loop_proc135_fu_82_ap_start = grp_dataflow_parent_loop_proc135_fu_82_ap_start_reg;
assign start_out = real_start;
assign v9184_0_address0 = grp_dataflow_parent_loop_proc135_fu_82_v9184_0_address0;
assign v9184_0_ce0 = grp_dataflow_parent_loop_proc135_fu_82_v9184_0_ce0;
assign v9184_1_address0 = grp_dataflow_parent_loop_proc135_fu_82_v9184_1_address0;
assign v9184_1_ce0 = grp_dataflow_parent_loop_proc135_fu_82_v9184_1_ce0;
assign v9238_address0 = grp_dataflow_parent_loop_proc135_fu_82_v9238_address0;
assign v9238_ce0 = grp_dataflow_parent_loop_proc135_fu_82_v9238_ce0;
assign v9246_0_address0 = grp_dataflow_parent_loop_proc135_fu_82_v9246_0_address0;
assign v9246_0_ce0 = grp_dataflow_parent_loop_proc135_fu_82_v9246_0_ce0;
assign v9246_1_address0 = grp_dataflow_parent_loop_proc135_fu_82_v9246_1_address0;
assign v9246_1_ce0 = grp_dataflow_parent_loop_proc135_fu_82_v9246_1_ce0;
assign v9247_0_address0 = grp_dataflow_parent_loop_proc135_fu_82_v9247_0_address0;
assign v9247_0_ce0 = grp_dataflow_parent_loop_proc135_fu_82_v9247_0_ce0;
assign v9247_0_d0 = grp_dataflow_parent_loop_proc135_fu_82_v9247_0_d0;
assign v9247_0_we0 = grp_dataflow_parent_loop_proc135_fu_82_v9247_0_we0;
assign v9247_1_address0 = grp_dataflow_parent_loop_proc135_fu_82_v9247_1_address0;
assign v9247_1_ce0 = grp_dataflow_parent_loop_proc135_fu_82_v9247_1_ce0;
assign v9247_1_d0 = grp_dataflow_parent_loop_proc135_fu_82_v9247_1_d0;
assign v9247_1_we0 = grp_dataflow_parent_loop_proc135_fu_82_v9247_1_we0;
assign v9250_0_address0 = grp_dataflow_parent_loop_proc135_fu_82_v9250_0_address0;
assign v9250_0_ce0 = grp_dataflow_parent_loop_proc135_fu_82_v9250_0_ce0;
assign v9250_0_d0 = grp_dataflow_parent_loop_proc135_fu_82_v9250_0_d0;
assign v9250_0_we0 = grp_dataflow_parent_loop_proc135_fu_82_v9250_0_we0;
assign v9250_1_address0 = grp_dataflow_parent_loop_proc135_fu_82_v9250_1_address0;
assign v9250_1_ce0 = grp_dataflow_parent_loop_proc135_fu_82_v9250_1_ce0;
assign v9250_1_d0 = grp_dataflow_parent_loop_proc135_fu_82_v9250_1_d0;
assign v9250_1_we0 = grp_dataflow_parent_loop_proc135_fu_82_v9250_1_we0;
assign v9251_0_address0 = grp_dataflow_parent_loop_proc135_fu_82_v9251_0_address0;
assign v9251_0_ce0 = grp_dataflow_parent_loop_proc135_fu_82_v9251_0_ce0;
assign v9251_1_address0 = grp_dataflow_parent_loop_proc135_fu_82_v9251_1_address0;
assign v9251_1_ce0 = grp_dataflow_parent_loop_proc135_fu_82_v9251_1_ce0;
assign v9402_read = v9402_read_local;
assign v9404_read = v9404_read_local;
assign v9405_din = 1'd1;
assign v9405_write = v9405_write_local;
assign v9406_din = 1'd1;
assign v9406_write = v9406_write_local;
endmodule 
