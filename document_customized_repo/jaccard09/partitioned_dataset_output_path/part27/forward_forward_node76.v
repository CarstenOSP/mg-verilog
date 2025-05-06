
module forward_forward_node76 (ap_clk,ap_rst,ap_start,start_full_n,ap_done,ap_continue,ap_idle,ap_ready,start_out,start_write,v15421_address0,v15421_ce0,v15421_q0,v15641_dout,v15641_num_data_valid,v15641_fifo_cap,v15641_empty_n,v15641_read,v15472_address0,v15472_ce0,v15472_q0,v15474_address0,v15474_ce0,v15474_q0,v15642_din,v15642_num_data_valid,v15642_fifo_cap,v15642_full_n,v15642_write,v15473_address0,v15473_ce0,v15473_we0,v15473_d0);  
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
output  [12:0] v15421_address0;
output   v15421_ce0;
input  [7:0] v15421_q0;
input  [0:0] v15641_dout;
input  [2:0] v15641_num_data_valid;
input  [2:0] v15641_fifo_cap;
input   v15641_empty_n;
output   v15641_read;
output  [16:0] v15472_address0;
output   v15472_ce0;
input  [7:0] v15472_q0;
output  [16:0] v15474_address0;
output   v15474_ce0;
input  [7:0] v15474_q0;
output  [0:0] v15642_din;
input  [2:0] v15642_num_data_valid;
input  [2:0] v15642_fifo_cap;
input   v15642_full_n;
output   v15642_write;
output  [16:0] v15473_address0;
output   v15473_ce0;
output   v15473_we0;
output  [7:0] v15473_d0;
reg ap_done;
reg ap_idle;
reg start_write;
reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    v15641_blk_n;
wire    ap_CS_fsm_state2;
reg    v15642_blk_n;
wire   [16:0] grp_dataflow_parent_loop_proc151_fu_50_v15473_address0;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15473_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc151_fu_50_v15473_d0;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15473_we0;
wire   [16:0] grp_dataflow_parent_loop_proc151_fu_50_v15473_address1;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15473_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc151_fu_50_v15473_d1;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15473_we1;
wire   [16:0] grp_dataflow_parent_loop_proc151_fu_50_v15474_address0;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15474_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc151_fu_50_v15474_d0;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15474_we0;
wire   [16:0] grp_dataflow_parent_loop_proc151_fu_50_v15474_address1;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15474_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc151_fu_50_v15474_d1;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15474_we1;
wire   [12:0] grp_dataflow_parent_loop_proc151_fu_50_v15421_address0;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15421_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc151_fu_50_v15421_d0;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15421_we0;
wire   [12:0] grp_dataflow_parent_loop_proc151_fu_50_v15421_address1;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15421_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc151_fu_50_v15421_d1;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15421_we1;
wire   [16:0] grp_dataflow_parent_loop_proc151_fu_50_v15472_address0;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15472_ce0;
wire   [7:0] grp_dataflow_parent_loop_proc151_fu_50_v15472_d0;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15472_we0;
wire   [16:0] grp_dataflow_parent_loop_proc151_fu_50_v15472_address1;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15472_ce1;
wire   [7:0] grp_dataflow_parent_loop_proc151_fu_50_v15472_d1;
wire    grp_dataflow_parent_loop_proc151_fu_50_v15472_we1;
wire    grp_dataflow_parent_loop_proc151_fu_50_ap_start;
wire    grp_dataflow_parent_loop_proc151_fu_50_ap_done;
wire    grp_dataflow_parent_loop_proc151_fu_50_ap_ready;
wire    grp_dataflow_parent_loop_proc151_fu_50_ap_idle;
reg    grp_dataflow_parent_loop_proc151_fu_50_ap_continue;
reg    grp_dataflow_parent_loop_proc151_fu_50_ap_start_reg;
reg    ap_block_state1_ignore_call11;
reg    ap_sync_reg_grp_dataflow_parent_loop_proc151_fu_50_ap_ready;
reg    ap_sync_reg_grp_dataflow_parent_loop_proc151_fu_50_ap_done;
reg    ap_block_state2_on_subcall_done;
wire    ap_sync_grp_dataflow_parent_loop_proc151_fu_50_ap_ready;
reg    ap_block_state1;
reg    v15642_write_local;
reg    v15641_read_local;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 grp_dataflow_parent_loop_proc151_fu_50_ap_start_reg = 1'b0;
#0 ap_sync_reg_grp_dataflow_parent_loop_proc151_fu_50_ap_ready = 1'b0;
#0 ap_sync_reg_grp_dataflow_parent_loop_proc151_fu_50_ap_done = 1'b0;
end
forward_dataflow_parent_loop_proc151 grp_dataflow_parent_loop_proc151_fu_50(.v15473_address0(grp_dataflow_parent_loop_proc151_fu_50_v15473_address0),.v15473_ce0(grp_dataflow_parent_loop_proc151_fu_50_v15473_ce0),.v15473_d0(grp_dataflow_parent_loop_proc151_fu_50_v15473_d0),.v15473_q0(8'd0),.v15473_we0(grp_dataflow_parent_loop_proc151_fu_50_v15473_we0),.v15473_address1(grp_dataflow_parent_loop_proc151_fu_50_v15473_address1),.v15473_ce1(grp_dataflow_parent_loop_proc151_fu_50_v15473_ce1),.v15473_d1(grp_dataflow_parent_loop_proc151_fu_50_v15473_d1),.v15473_q1(8'd0),.v15473_we1(grp_dataflow_parent_loop_proc151_fu_50_v15473_we1),.v15474_address0(grp_dataflow_parent_loop_proc151_fu_50_v15474_address0),.v15474_ce0(grp_dataflow_parent_loop_proc151_fu_50_v15474_ce0),.v15474_d0(grp_dataflow_parent_loop_proc151_fu_50_v15474_d0),.v15474_q0(v15474_q0),.v15474_we0(grp_dataflow_parent_loop_proc151_fu_50_v15474_we0),.v15474_address1(grp_dataflow_parent_loop_proc151_fu_50_v15474_address1),.v15474_ce1(grp_dataflow_parent_loop_proc151_fu_50_v15474_ce1),.v15474_d1(grp_dataflow_parent_loop_proc151_fu_50_v15474_d1),.v15474_q1(8'd0),.v15474_we1(grp_dataflow_parent_loop_proc151_fu_50_v15474_we1),.v15421_address0(grp_dataflow_parent_loop_proc151_fu_50_v15421_address0),.v15421_ce0(grp_dataflow_parent_loop_proc151_fu_50_v15421_ce0),.v15421_d0(grp_dataflow_parent_loop_proc151_fu_50_v15421_d0),.v15421_q0(v15421_q0),.v15421_we0(grp_dataflow_parent_loop_proc151_fu_50_v15421_we0),.v15421_address1(grp_dataflow_parent_loop_proc151_fu_50_v15421_address1),.v15421_ce1(grp_dataflow_parent_loop_proc151_fu_50_v15421_ce1),.v15421_d1(grp_dataflow_parent_loop_proc151_fu_50_v15421_d1),.v15421_q1(8'd0),.v15421_we1(grp_dataflow_parent_loop_proc151_fu_50_v15421_we1),.v15472_address0(grp_dataflow_parent_loop_proc151_fu_50_v15472_address0),.v15472_ce0(grp_dataflow_parent_loop_proc151_fu_50_v15472_ce0),.v15472_d0(grp_dataflow_parent_loop_proc151_fu_50_v15472_d0),.v15472_q0(v15472_q0),.v15472_we0(grp_dataflow_parent_loop_proc151_fu_50_v15472_we0),.v15472_address1(grp_dataflow_parent_loop_proc151_fu_50_v15472_address1),.v15472_ce1(grp_dataflow_parent_loop_proc151_fu_50_v15472_ce1),.v15472_d1(grp_dataflow_parent_loop_proc151_fu_50_v15472_d1),.v15472_q1(8'd0),.v15472_we1(grp_dataflow_parent_loop_proc151_fu_50_v15472_we1),.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_dataflow_parent_loop_proc151_fu_50_ap_start),.ap_done(grp_dataflow_parent_loop_proc151_fu_50_ap_done),.ap_ready(grp_dataflow_parent_loop_proc151_fu_50_ap_ready),.ap_idle(grp_dataflow_parent_loop_proc151_fu_50_ap_idle),.ap_continue(grp_dataflow_parent_loop_proc151_fu_50_ap_continue));
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
        end else if ((~((v15641_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_dataflow_parent_loop_proc151_fu_50_ap_done <= 1'b0;
    end else begin
        if ((~((v15641_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc151_fu_50_ap_done <= 1'b0;
        end else if ((grp_dataflow_parent_loop_proc151_fu_50_ap_done == 1'b1)) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc151_fu_50_ap_done <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_sync_reg_grp_dataflow_parent_loop_proc151_fu_50_ap_ready <= 1'b0;
    end else begin
        if ((~((v15641_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc151_fu_50_ap_ready <= 1'b0;
        end else if ((grp_dataflow_parent_loop_proc151_fu_50_ap_ready == 1'b1)) begin
            ap_sync_reg_grp_dataflow_parent_loop_proc151_fu_50_ap_ready <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_dataflow_parent_loop_proc151_fu_50_ap_start_reg <= 1'b0;
    end else begin
        if ((((1'b1 == ap_CS_fsm_state2) & (ap_sync_grp_dataflow_parent_loop_proc151_fu_50_ap_ready == 1'b0)) | ((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_ignore_call11)))) begin
            grp_dataflow_parent_loop_proc151_fu_50_ap_start_reg <= 1'b1;
        end else if ((grp_dataflow_parent_loop_proc151_fu_50_ap_ready == 1'b1)) begin
            grp_dataflow_parent_loop_proc151_fu_50_ap_start_reg <= 1'b0;
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
    if (((v15641_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done))) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
always @ (*) begin
    if ((~((v15641_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
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
    if ((~((v15641_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
        grp_dataflow_parent_loop_proc151_fu_50_ap_continue = 1'b1;
    end else begin
        grp_dataflow_parent_loop_proc151_fu_50_ap_continue = 1'b0;
    end
end
always @ (*) begin
    if ((~((v15641_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
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
        v15641_blk_n = v15641_empty_n;
    end else begin
        v15641_blk_n = 1'b1;
    end
end
always @ (*) begin
    if ((~((v15641_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
        v15641_read_local = 1'b1;
    end else begin
        v15641_read_local = 1'b0;
    end
end
always @ (*) begin
    if ((~((real_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
        v15642_blk_n = v15642_full_n;
    end else begin
        v15642_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
        v15642_write_local = 1'b1;
    end else begin
        v15642_write_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if ((~((v15641_empty_n == 1'b0) | (1'b1 == ap_block_state2_on_subcall_done)) & (1'b1 == ap_CS_fsm_state2))) begin
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
    ap_block_state1 = ((real_start == 1'b0) | (v15642_full_n == 1'b0) | (ap_done_reg == 1'b1));
end
always @ (*) begin
    ap_block_state1_ignore_call11 = ((real_start == 1'b0) | (v15642_full_n == 1'b0) | (ap_done_reg == 1'b1));
end
always @ (*) begin
    ap_block_state2_on_subcall_done = ((ap_sync_reg_grp_dataflow_parent_loop_proc151_fu_50_ap_ready & ap_sync_reg_grp_dataflow_parent_loop_proc151_fu_50_ap_done) == 1'b0);
end
assign ap_ready = internal_ap_ready;
assign ap_sync_grp_dataflow_parent_loop_proc151_fu_50_ap_ready = (grp_dataflow_parent_loop_proc151_fu_50_ap_ready | ap_sync_reg_grp_dataflow_parent_loop_proc151_fu_50_ap_ready);
assign grp_dataflow_parent_loop_proc151_fu_50_ap_start = grp_dataflow_parent_loop_proc151_fu_50_ap_start_reg;
assign start_out = real_start;
assign v15421_address0 = grp_dataflow_parent_loop_proc151_fu_50_v15421_address0;
assign v15421_ce0 = grp_dataflow_parent_loop_proc151_fu_50_v15421_ce0;
assign v15472_address0 = grp_dataflow_parent_loop_proc151_fu_50_v15472_address0;
assign v15472_ce0 = grp_dataflow_parent_loop_proc151_fu_50_v15472_ce0;
assign v15473_address0 = grp_dataflow_parent_loop_proc151_fu_50_v15473_address0;
assign v15473_ce0 = grp_dataflow_parent_loop_proc151_fu_50_v15473_ce0;
assign v15473_d0 = grp_dataflow_parent_loop_proc151_fu_50_v15473_d0;
assign v15473_we0 = grp_dataflow_parent_loop_proc151_fu_50_v15473_we0;
assign v15474_address0 = grp_dataflow_parent_loop_proc151_fu_50_v15474_address0;
assign v15474_ce0 = grp_dataflow_parent_loop_proc151_fu_50_v15474_ce0;
assign v15641_read = v15641_read_local;
assign v15642_din = 1'd1;
assign v15642_write = v15642_write_local;
endmodule 
