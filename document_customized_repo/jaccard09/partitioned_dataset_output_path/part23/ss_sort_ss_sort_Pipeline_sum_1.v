
module ss_sort_ss_sort_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,bucket_address0,bucket_ce0,bucket_q0,sum_address0,sum_ce0,sum_we0,sum_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] bucket_address0;
output   bucket_ce0;
input  [31:0] bucket_q0;
output  [6:0] sum_address0;
output   sum_ce0;
output   sum_we0;
output  [31:0] sum_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln25_fu_85_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [7:0] radixID_1_reg_157;
reg   [7:0] radixID_1_reg_157_pp0_iter1_reg;
reg   [31:0] bucket_load_reg_171;
wire   [63:0] zext_ln27_fu_109_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln25_fu_128_p1;
reg   [7:0] radixID_fu_38;
wire   [7:0] add_ln25_fu_114_p2;
wire    ap_loop_init;
reg   [7:0] ap_sig_allocacmp_radixID_1;
reg   [31:0] store_forwarded11_fu_42;
wire   [31:0] add_ln27_fu_132_p2;
reg    bucket_ce0_local;
reg    sum_we0_local;
reg    sum_ce0_local;
wire   [6:0] trunc_ln26_fu_91_p1;
wire   [10:0] shl_ln_fu_95_p3;
wire   [10:0] add_ln26_fu_103_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 radixID_fu_38 = 8'd0;
#0 store_forwarded11_fu_42 = 32'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln25_fu_85_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            radixID_fu_38 <= add_ln25_fu_114_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            radixID_fu_38 <= 8'd1;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            store_forwarded11_fu_42 <= 32'd0;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            store_forwarded11_fu_42 <= add_ln27_fu_132_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        bucket_load_reg_171 <= bucket_q0;
        radixID_1_reg_157 <= ap_sig_allocacmp_radixID_1;
        radixID_1_reg_157_pp0_iter1_reg <= radixID_1_reg_157;
    end
end
always @ (*) begin
    if (((icmp_ln25_fu_85_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_radixID_1 = 8'd1;
    end else begin
        ap_sig_allocacmp_radixID_1 = radixID_fu_38;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        bucket_ce0_local = 1'b1;
    end else begin
        bucket_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        sum_ce0_local = 1'b1;
    end else begin
        sum_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        sum_we0_local = 1'b1;
    end else begin
        sum_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_fu_114_p2 = (ap_sig_allocacmp_radixID_1 + 8'd1);
assign add_ln26_fu_103_p2 = ($signed(shl_ln_fu_95_p3) + $signed(11'd2047));
assign add_ln27_fu_132_p2 = (bucket_load_reg_171 + store_forwarded11_fu_42);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bucket_address0 = zext_ln27_fu_109_p1;
assign bucket_ce0 = bucket_ce0_local;
assign icmp_ln25_fu_85_p2 = ((ap_sig_allocacmp_radixID_1 == 8'd128) ? 1'b1 : 1'b0);
assign shl_ln_fu_95_p3 = {{trunc_ln26_fu_91_p1}, {4'd0}};
assign sum_address0 = zext_ln25_fu_128_p1;
assign sum_ce0 = sum_ce0_local;
assign sum_d0 = add_ln27_fu_132_p2;
assign sum_we0 = sum_we0_local;
assign trunc_ln26_fu_91_p1 = ap_sig_allocacmp_radixID_1[6:0];
assign zext_ln25_fu_128_p1 = radixID_1_reg_157_pp0_iter1_reg;
assign zext_ln27_fu_109_p1 = add_ln26_fu_103_p2;
endmodule 
