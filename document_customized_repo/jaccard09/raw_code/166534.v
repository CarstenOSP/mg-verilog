module forward_forward_node61 (ap_clk,ap_rst,ap_start,start_full_n,ap_done,ap_continue,ap_idle,ap_ready,start_out,start_write,v13830_dout,v13830_num_data_valid,v13830_fifo_cap,v13830_empty_n,v13830_read,v13717_0_address0,v13717_0_ce0,v13717_0_q0,v13717_1_address0,v13717_1_ce0,v13717_1_q0,v13717_2_address0,v13717_2_ce0,v13717_2_q0,v13717_3_address0,v13717_3_ce0,v13717_3_q0,v13719_0_address0,v13719_0_ce0,v13719_0_q0,v13719_1_address0,v13719_1_ce0,v13719_1_q0,v13831_din,v13831_num_data_valid,v13831_fifo_cap,v13831_full_n,v13831_write,v13718_0_address0,v13718_0_ce0,v13718_0_we0,v13718_0_d0,v13718_1_address0,v13718_1_ce0,v13718_1_we0,v13718_1_d0); 
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
input  [0:0] v13830_dout;
input  [2:0] v13830_num_data_valid;
input  [2:0] v13830_fifo_cap;
input   v13830_empty_n;
output   v13830_read;
output  [17:0] v13717_0_address0;
output   v13717_0_ce0;
input  [7:0] v13717_0_q0;
output  [17:0] v13717_1_address0;
output   v13717_1_ce0;
input  [7:0] v13717_1_q0;
output  [17:0] v13717_2_address0;
output   v13717_2_ce0;
input  [7:0] v13717_2_q0;
output  [17:0] v13717_3_address0;
output   v13717_3_ce0;
input  [7:0] v13717_3_q0;
output  [16:0] v13719_0_address0;
output   v13719_0_ce0;
input  [7:0] v13719_0_q0;
output  [16:0] v13719_1_address0;
output   v13719_1_ce0;
input  [7:0] v13719_1_q0;
output  [0:0] v13831_din;
input  [2:0] v13831_num_data_valid;
input  [2:0] v13831_fifo_cap;
input   v13831_full_n;
output   v13831_write;
output  [16:0] v13718_0_address0;
output   v13718_0_ce0;
output   v13718_0_we0;
output  [7:0] v13718_0_d0;
output  [16:0] v13718_1_address0;
output   v13718_1_ce0;
output   v13718_1_we0;
output  [7:0] v13718_1_d0;
reg ap_done;
reg ap_idle;
reg start_write;
reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    v13830_blk_n;
wire    ap_CS_fsm_state2;
reg    v13831_blk_n;
wire   [16:0] grp_dataflow_parent_loop_proc93_fu_58_v13718_1_address0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13718_1_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13718_1_d0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13718_1_we0;
wire   [16:0] grp_dataflow_parent_loop_proc93_fu_58_v13718_1_address1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13718_1_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13718_1_d1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13718_1_we1;
wire   [16:0] grp_dataflow_parent_loop_proc93_fu_58_v13718_0_address0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13718_0_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13718_0_d0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13718_0_we0;
wire   [16:0] grp_dataflow_parent_loop_proc93_fu_58_v13718_0_address1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13718_0_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13718_0_d1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13718_0_we1;
wire   [16:0] grp_dataflow_parent_loop_proc93_fu_58_v13719_0_address0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13719_0_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13719_0_d0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13719_0_we0;
wire   [16:0] grp_dataflow_parent_loop_proc93_fu_58_v13719_0_address1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13719_0_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13719_0_d1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13719_0_we1;
wire   [16:0] grp_dataflow_parent_loop_proc93_fu_58_v13719_1_address0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13719_1_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13719_1_d0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13719_1_we0;
wire   [16:0] grp_dataflow_parent_loop_proc93_fu_58_v13719_1_address1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13719_1_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13719_1_d1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13719_1_we1;
wire   [17:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_0_address0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_0_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_0_d0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_0_we0;
wire   [17:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_0_address1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_0_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_0_d1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_0_we1;
wire   [17:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_1_address0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_1_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_1_d0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_1_we0;
wire   [17:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_1_address1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_1_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_1_d1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_1_we1;
wire   [17:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_2_address0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_2_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_2_d0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_2_we0;
wire   [17:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_2_address1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_2_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_2_d1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_2_we1;
wire   [17:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_3_address0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_3_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_3_d0;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_3_we0;
wire   [17:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_3_address1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_3_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc93_fu_58_v13717_3_d1;
wire    grp_dataflow_parent_loop_proc93_fu_58_v13717_3_we1;
wire    grp_dataflow_parent_loop_proc93_fu_58_ap_start;
wire    grp_dataflow_parent_loop_proc93_fu_58_ap_done;
wire    grp_dataflow_parent_loop_proc93_fu_58_ap_ready;
wire    grp_dataflow_parent_loop_proc93_fu_58_ap_idle;
reg    grp_dataflow_parent_loop_proc93_fu_58_ap_continue;
reg    grp_dataflow_parent_loop_proc93_fu_58_ap_start_reg;
reg    ap_block_state1_ignore_call19;
reg    ap_sync_reg_grp_dataflow_parent_loop_proc93_fu_58_ap_ready;
reg    ap_sync_reg_grp_dataflow_parent_loop_proc93_fu_58_ap_done;
reg    ap_block_state2_on_subcall_done;
wire    ap_sync_grp_dataflow_parent_loop_proc93_fu_58_ap_ready;
reg    ap_block_state1;
reg    v13831_write_local;
reg    v13830_read_local;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_parent_loop_proc93_fu_58_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_dataflow_parent_loop_proc93_fu_58_ap_ready = 1'b0;
#0 ap_sync_reg_grp_dataflow_parent_loop_proc93_fu_58_ap_done = 1'b0;
end
forward_dataflow_parent_loop_proc93 grp_dataflow_parent_loop_proc93_fu_58(.v13718_1_address0(grp_dataflow_parent_loop_proc93_fu_58_v13718_1_address0),.v13718_1_ce0(grp_dataflow_parent_loop_proc93_fu_58_v13718_1_ce0),.v13718_1_d0(grp_dataflow_parent_loop_proc93_fu_58_v13718_1_d0),.v13718_1_q0(8'd0),.v13718_1_we0(grp_dataflow_parent_loop_proc93_fu_58_v13718_1_we0),.v13718_1_address1(grp_dataflow_parent_loop_proc93_fu_58_v13718_1_address1),.v13718_1_ce1(grp_dataflow_parent_loop_proc93_fu_58_v13718_1_ce1),.v13718_1_d1(grp_dataflow_parent_loop_proc93_fu_58_v13718_1_d1),.v13718_1_q1(8'd0),.v13718_1_we1(grp_dataflow_parent_loop_proc93_fu_58_v13718_1_we1),.v13718_0_address0(grp_dataflow_parent_loop_proc93_fu_58_v13718_0_address0),.v13718_0_ce0(grp_dataflow_parent_loop_proc93_fu_58_v13718_0_ce0),.v13718_0_d0(grp_dataflow_parent_loop_proc93_fu_58_v13718_0_d0),.v13718_0_q0(8'd0),.v13718_0_we0(grp_dataflow_parent_loop_proc93_fu_58_v13718_0_we0),.v13718_0_address1(grp_dataflow_parent_loop_proc93_fu_58_v13718_0_address1),.v13718_0_ce1(grp_dataflow_parent_loop_proc93_fu_58_v13718_0_ce1),.v13718_0_d1(grp_dataflow_parent_loop_proc93_fu_58_v13718_0_d1),.v13718_0_q1(8'd0),.v13718_0_we1(grp_dataflow_parent_loop_proc93_fu_58_v13718_0_we1),.v13719_0_address0(grp_dataflow_parent_loop_proc93_fu_58_v13719_0_address0),.v13719_0_ce0(grp_dataflow_parent_loop_proc93_fu_58_v13719_0_ce0),.v13719_0_d0(grp_dataflow_parent_loop_proc93_fu_58_v13719_0_d0),.v13719_0_q0(v13719_0_q0),.v13719_0_we0(grp_dataflow_parent_loop_proc93_fu_58_v13719_0_we0),.v13719_0_address1(grp_dataflow_parent_loop_proc93_fu_58_v13719_0_address1),.v13719_0_ce1(grp_dataflow_parent_loop_proc93_fu_58_v13719_0_ce1),.v13719_0_d1(grp_dataflow_parent_loop_proc93_fu_58_v13719_0_d1),.v13719_0_q1(8'd0),.v13719_0_we1(grp_dataflow_parent_loop_proc93_fu_58_v13719_0_we1),.v13719_1_address0(grp_dataflow_parent_loop_proc93_fu_58_v13719_1_address0),.v13719_1_ce0(grp_dataflow_parent_loop_proc93_fu_58_v13719_1_ce0),.v13719_1_d0(grp_dataflow_parent_loop_proc93_fu_58_v13719_1_d0),.v13719_1_q0(v13719_1_q0),.v13719_1_we0(grp_dataflow_parent_loop_proc93_fu_58_v13719_1_we0),.v13719_1_address1(grp_dataflow_parent_loop_proc93_fu_58_v13719_1_address1),.v13719_1_ce1(grp_dataflow_parent_loop_proc93_fu_58_v13719_1_ce1),.v13719_1_d1(grp_dataflow_parent_loop_proc93_fu_58_v13719_1_d1),.v13719_1_q1(8'd0),.v13719_1_we1(grp_dataflow_parent_loop_proc93_fu_58_v13719_1_we1),.v13717_0_address0(grp_dataflow_parent_loop_proc93_fu_58_v13717_0_address0),.v13717_0_ce0(grp_dataflow_parent_loop_proc93_fu_58_v13717_0_ce0),.v13717_0_d0(grp_dataflow_parent_loop_proc93_fu_58_v13717_0_d0),.v13717_0_q0(v13717_0_q0),.v13717_0_we0(grp_dataflow_parent_loop_proc93_fu_58_v13717_0_we0),.v13717_0_address1(grp_dataflow_parent_loop_proc93_fu_58_v13717_0_address1),.v13717_0_ce1(grp_dataflow_parent_loop_proc93_fu_58_v13717_0_ce1),.v13717_0_d1(grp_dataflow_parent_loop_proc93_fu_58_v13717_0_d1),.v13717_0_q1(8'd0),.v13717_0_we1(grp_dataflow_parent_loop_proc93_fu_58_v13717_0_we1),.v13717_1_address0(grp_dataflow_parent_loop_proc93_fu_58_v13717_1_address0),.v13717_1_ce0(grp_dataflow_parent_loop_proc93_fu_58_v13717_1_ce0),.v13717_1_d0(grp_dataflow_parent_loop_proc93_fu_58_v13717_1_d0),.v13717_1_q0(v13717_1_q0),.v13717_1_we0(grp_dataflow_parent_loop_proc93_fu_58_v13717_1_we0),.v13717_1_address1(grp_dataflow_parent_loop_proc93_fu_58_v13717_1_address1),.v13717_1_ce1(grp_dataflow_parent_loop_proc93_fu_58_v13717_1_ce1),.v13717_1_d1(grp_dataflow_parent_loop_proc93_fu_58_v13717_1_d1),.v13717_1_q1(8'd0),.v13717_1_we1(grp_dataflow_parent_loop_proc93_fu_58_v13717_1_we1),.v13717_2_address0(grp_dataflow_parent_loop_proc93_fu_58_v13717_2_address0),.v13717_2_ce0(grp_dataflow_parent_loop_proc93_fu_58_v13717_2_ce0),.v13717_2_d0(grp_dataflow_parent_loop_proc93_fu_58_v13717_2_d0),.v13717_2_q0(v13717_2_q0),.v13717_2_we0(grp_dataflow_parent_loop_proc93_fu_58_v13717_2_we0),.v13717_2_address1(grp_dataflow_parent_loop_proc93_fu_58_v13717_2_address1),.v13717_2_ce1(grp_dataflow_parent_loop_proc93_fu_58_v13717_2_ce1),.v13717_2_d1(grp_dataflow_parent_loop_proc93_fu_58_v13717_2_d1),.v13717_2_q1(8'd0),.v13717_2_we1(grp_dataflow_parent_loop_proc93_fu_58_v13717_2_we1),.v13717_3_address0(grp_dataflow_parent_loop_proc93_fu_58_v13717_3_address0),.v13717_3_ce0(grp_dataflow_parent_loop_proc93_fu_58_v13717_3_ce0),.v13717_3_d0(grp_dataflow_parent_loop_proc93_fu_58_v13717_3_d0),.v13717_3_q0(v13717_3_q0),.v13717_3_we0(grp_dataflow_parent_loop_proc93_fu_58_v13717_3_we0),.v13717_3_address1(grp_dataflow_parent_loop_proc93_fu_58_v13717_3_address1),.v13717_3_ce1(grp_dataflow_parent_loop_proc93_fu_58_v13717_3_ce1),.v13717_3_d1(grp_dataflow_parent_loop_proc93_fu_58_v13717_3_d1),.v13717_3_q1(8'd0),.v13717_3_we1(grp_dataflow_parent_loop_proc93_fu_58_v13717_3_we1),.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_parent_loop_proc93_fu_58_ap_start),.ap_done(grp_dataflow_parent_loop_proc93_fu_58_ap_done),.ap_ready(grp_dataflow_parent_loop_proc93_fu_58_ap_ready),.ap_idle(grp_dataflow_parent_loop_proc93_fu_58_ap_idle),.ap_continue(grp_dataflow_parent_loop_proc93_fu_58_ap_continue));
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
        end else if ((~((v13830_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_dataflow_parent_loop_proc93_fu_58_ap_done <= 1'b0;
    end else begin
        if ((~((v13830_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc93_fu_58_ap_done <= 1'b0;
        end else if ((grp_dataflow_parent_loop_proc93_fu_58_ap_done == 1'b1)) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc93_fu_58_ap_done <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_dataflow_parent_loop_proc93_fu_58_ap_ready <= 1'b0;
    end else begin
        if ((~((v13830_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc93_fu_58_ap_ready <= 1'b0;
        end else if ((grp_dataflow_parent_loop_proc93_fu_58_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc93_fu_58_ap_ready <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_parent_loop_proc93_fu_58_ap_start_reg <= 1'b0;
    end else begin
        if ((((ap_sync_grp_dataflow_parent_loop_proc93_fu_58_ap_ready == 1'b0) & (1'b1 == ap_CS_fsm_state2)) | ((1'b0 == ap_block_state1_ignore_call19) & (1'b1 == ap_CS_fsm_state1)))) begin
            grp_dataflow_parent_loop_proc93_fu_58_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_parent_loop_proc93_fu_58_ap_ready == 1'b1)) begin
            grp_dataflow_parent_loop_proc93_fu_58_ap_start_reg <= 1'b0;
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
    if (((v13830_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done))) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if ((~((v13830_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if ((~((v13830_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
        grp_dataflow_parent_loop_proc93_fu_58_ap_continue = 1'b1;
    end else begin
        grp_dataflow_parent_loop_proc93_fu_58_ap_continue = 1'b0;
    end
end
always @ (*) begin
    if ((~((v13830_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
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
        v13830_blk_n = v13830_empty_n;
    end else begin
        v13830_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((v13830_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
        v13830_read_local = 1'b1;
    end else begin
        v13830_read_local = 1'b0;
    end
end
always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        v13831_blk_n = v13831_full_n;
    end else begin
        v13831_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1) & (1'b1 == ap_CS_fsm_state1))) begin
        v13831_write_local = 1'b1;
    end else begin
        v13831_write_local = 1'b0;
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
            if ((~((v13830_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
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
    ap_block_state1 = ((real_start == 1'b0) | (v13831_full_n == 1'b0) | (ap_done_reg == 1'b1));
end
always @ (*) begin
    ap_block_state1_ignore_call19 = ((real_start == 1'b0) | (v13831_full_n == 1'b0) | (ap_done_reg == 1'b1));
end
always @ (*) begin
    ap_block_state2_on_subcall_done = ((ap_sync_reg_grp_dataflow_parent_loop_proc93_fu_58_ap_ready & ap_sync_reg_grp_dataflow_parent_loop_proc93_fu_58_ap_done) == 1'b0);
end
assign ap_ready = internal_ap_ready;
assign ap_sync_grp_dataflow_parent_loop_proc93_fu_58_ap_ready = (grp_dataflow_parent_loop_proc93_fu_58_ap_ready | ap_sync_reg_grp_dataflow_parent_loop_proc93_fu_58_ap_ready);
assign grp_dataflow_parent_loop_proc93_fu_58_ap_start = grp_dataflow_parent_loop_proc93_fu_58_ap_start_reg;
assign start_out = real_start;
assign v13717_0_address0 = grp_dataflow_parent_loop_proc93_fu_58_v13717_0_address0;
assign v13717_0_ce0 = grp_dataflow_parent_loop_proc93_fu_58_v13717_0_ce0;
assign v13717_1_address0 = grp_dataflow_parent_loop_proc93_fu_58_v13717_1_address0;
assign v13717_1_ce0 = grp_dataflow_parent_loop_proc93_fu_58_v13717_1_ce0;
assign v13717_2_address0 = grp_dataflow_parent_loop_proc93_fu_58_v13717_2_address0;
assign v13717_2_ce0 = grp_dataflow_parent_loop_proc93_fu_58_v13717_2_ce0;
assign v13717_3_address0 = grp_dataflow_parent_loop_proc93_fu_58_v13717_3_address0;
assign v13717_3_ce0 = grp_dataflow_parent_loop_proc93_fu_58_v13717_3_ce0;
assign v13718_0_address0 = grp_dataflow_parent_loop_proc93_fu_58_v13718_0_address0;
assign v13718_0_ce0 = grp_dataflow_parent_loop_proc93_fu_58_v13718_0_ce0;
assign v13718_0_d0 = grp_dataflow_parent_loop_proc93_fu_58_v13718_0_d0;
assign v13718_0_we0 = grp_dataflow_parent_loop_proc93_fu_58_v13718_0_we0;
assign v13718_1_address0 = grp_dataflow_parent_loop_proc93_fu_58_v13718_1_address0;
assign v13718_1_ce0 = grp_dataflow_parent_loop_proc93_fu_58_v13718_1_ce0;
assign v13718_1_d0 = grp_dataflow_parent_loop_proc93_fu_58_v13718_1_d0;
assign v13718_1_we0 = grp_dataflow_parent_loop_proc93_fu_58_v13718_1_we0;
assign v13719_0_address0 = grp_dataflow_parent_loop_proc93_fu_58_v13719_0_address0;
assign v13719_0_ce0 = grp_dataflow_parent_loop_proc93_fu_58_v13719_0_ce0;
assign v13719_1_address0 = grp_dataflow_parent_loop_proc93_fu_58_v13719_1_address0;
assign v13719_1_ce0 = grp_dataflow_parent_loop_proc93_fu_58_v13719_1_ce0;
assign v13830_read = v13830_read_local;
assign v13831_din = 1'd1;
assign v13831_write = v13831_write_local;
endmodule 