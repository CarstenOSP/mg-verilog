
module kernel_correlation_kernel_correlation_node3 (ap_clk,ap_rst,ap_start,start_full_n,ap_done,ap_continue,ap_idle,ap_ready,start_out,start_write,v234_dout,v234_num_data_valid,v234_fifo_cap,v234_empty_n,v234_read,v212_address0,v212_ce0,v212_q0,v236_din,v236_num_data_valid,v236_fifo_cap,v236_full_n,v236_write,v216_address0,v216_ce0,v216_we0,v216_d0,v237_din,v237_num_data_valid,v237_fifo_cap,v237_full_n,v237_write,v218_address0,v218_ce0,v218_we0,v218_d0);  
parameter    ap_ST_fsm_state1 = 5'd1;
parameter    ap_ST_fsm_state2 = 5'd2;
parameter    ap_ST_fsm_state3 = 5'd4;
parameter    ap_ST_fsm_state4 = 5'd8;
parameter    ap_ST_fsm_state5 = 5'd16;
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
input  [0:0] v234_dout;
input  [2:0] v234_num_data_valid;
input  [2:0] v234_fifo_cap;
input   v234_empty_n;
output   v234_read;
output  [7:0] v212_address0;
output   v212_ce0;
input  [31:0] v212_q0;
output  [0:0] v236_din;
input  [2:0] v236_num_data_valid;
input  [2:0] v236_fifo_cap;
input   v236_full_n;
output   v236_write;
output  [7:0] v216_address0;
output   v216_ce0;
output   v216_we0;
output  [31:0] v216_d0;
output  [0:0] v237_din;
input  [2:0] v237_num_data_valid;
input  [2:0] v237_fifo_cap;
input   v237_full_n;
output   v237_write;
output  [7:0] v218_address0;
output   v218_ce0;
output   v218_we0;
output  [31:0] v218_d0;
reg ap_done;
reg ap_idle;
reg start_write;
reg[7:0] v212_address0;
reg v212_ce0;
reg    real_start;
reg    start_once_reg;
reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [4:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    internal_ap_ready;
reg    v234_blk_n;
wire    ap_CS_fsm_state5;
reg    v236_blk_n;
reg    v237_blk_n;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_start;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_done;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_idle;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_ready;
wire   [7:0] grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v212_address0;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v212_ce0;
wire   [7:0] grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v216_address0;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v216_ce0;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v216_we0;
wire   [31:0] grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v216_d0;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_start;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_done;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_idle;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_ready;
wire   [7:0] grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v212_address0;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v212_ce0;
wire   [7:0] grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v218_address0;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v218_ce0;
wire    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v218_we0;
wire   [31:0] grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v218_d0;
reg    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_start_reg;
reg    ap_block_state1_ignore_call10;
wire    ap_CS_fsm_state2;
reg    grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_start_reg;
wire    ap_CS_fsm_state3;
wire    ap_CS_fsm_state4;
reg    ap_block_state5;
reg    v234_read_local;
reg    v236_write_local;
reg    v237_write_local;
reg   [4:0] ap_NS_fsm;
reg    ap_block_state1;
reg    ap_ST_fsm_state1_blk;
reg    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
reg    ap_ST_fsm_state5_blk;
wire    ap_ce_reg;
initial begin
#0 start_once_reg = 1'b0;
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 5'd1;
#0 grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_start_reg = 1'b0;
#0 grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_start_reg = 1'b0;
end
kernel_correlation_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1 grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_start),.ap_done(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_done),.ap_idle(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_idle),.ap_ready(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_ready),.v212_address0(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v212_address0),.v212_ce0(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v212_ce0),.v212_q0(v212_q0),.v216_address0(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v216_address0),.v216_ce0(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v216_ce0),.v216_we0(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v216_we0),.v216_d0(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v216_d0));
kernel_correlation_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2 grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_start),.ap_done(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_done),.ap_idle(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_idle),.ap_ready(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_ready),.v212_address0(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v212_address0),.v212_ce0(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v212_ce0),.v212_q0(v212_q0),.v218_address0(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v218_address0),.v218_ce0(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v218_ce0),.v218_we0(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v218_we0),.v218_d0(grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v218_d0));
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
        end else if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_start_reg <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state1) & (1'b0 == ap_block_state1_ignore_call10))) begin
            grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_ready == 1'b1)) begin
            grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state3)) begin
            grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_start_reg <= 1'b1;
        end else if ((grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_ready == 1'b1)) begin
            grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_start_reg <= 1'b0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        start_once_reg <= 1'b0;
    end else begin
        if (((internal_ap_ready == 1'b0) & (real_start == 1'b1))) begin
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
    if ((grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_done == 1'b0)) begin
        ap_ST_fsm_state2_blk = 1'b1;
    end else begin
        ap_ST_fsm_state2_blk = 1'b0;
    end
end
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if ((grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_done == 1'b0)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state5)) begin
        ap_ST_fsm_state5_blk = 1'b1;
    end else begin
        ap_ST_fsm_state5_blk = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (real_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5))) begin
        internal_ap_ready = 1'b1;
    end else begin
        internal_ap_ready = 1'b0;
    end
end
always @ (*) begin
    if (((start_once_reg == 1'b0) & (start_full_n == 1'b0))) begin
        real_start = 1'b0;
    end else begin
        real_start = ap_start;
    end
end
always @ (*) begin
    if (((start_once_reg == 1'b0) & (real_start == 1'b1))) begin
        start_write = 1'b1;
    end else begin
        start_write = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v212_address0 = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v212_address0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v212_address0 = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v212_address0;
    end else begin
        v212_address0 = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state4)) begin
        v212_ce0 = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v212_ce0;
    end else if ((1'b1 == ap_CS_fsm_state2)) begin
        v212_ce0 = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v212_ce0;
    end else begin
        v212_ce0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v234_blk_n = v234_empty_n;
    end else begin
        v234_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5))) begin
        v234_read_local = 1'b1;
    end else begin
        v234_read_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v236_blk_n = v236_full_n;
    end else begin
        v236_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5))) begin
        v236_write_local = 1'b1;
    end else begin
        v236_write_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state5)) begin
        v237_blk_n = v237_full_n;
    end else begin
        v237_blk_n = 1'b1;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5))) begin
        v237_write_local = 1'b1;
    end else begin
        v237_write_local = 1'b0;
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
            if (((grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state2))) begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state5 : begin
            if (((1'b1 == ap_CS_fsm_state5) & (1'b0 == ap_block_state5))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_state5 = ap_CS_fsm[32'd4];
always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (real_start == 1'b0));
end
always @ (*) begin
    ap_block_state1_ignore_call10 = ((ap_done_reg == 1'b1) | (real_start == 1'b0));
end
always @ (*) begin
    ap_block_state5 = ((v237_full_n == 1'b0) | (v236_full_n == 1'b0) | (v234_empty_n == 1'b0));
end
assign ap_ready = internal_ap_ready;
assign grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_start = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_ap_start_reg;
assign grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_start = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_ap_start_reg;
assign start_out = real_start;
assign v216_address0 = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v216_address0;
assign v216_ce0 = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v216_ce0;
assign v216_d0 = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v216_d0;
assign v216_we0 = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_314_1_fu_60_v216_we0;
assign v218_address0 = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v218_address0;
assign v218_ce0 = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v218_ce0;
assign v218_d0 = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v218_d0;
assign v218_we0 = grp_kernel_correlation_node3_Pipeline_VITIS_LOOP_319_2_fu_68_v218_we0;
assign v234_read = v234_read_local;
assign v236_din = 1'd1;
assign v236_write = v236_write_local;
assign v237_din = 1'd1;
assign v237_write = v237_write_local;
endmodule 
