module ss_sort_ss_sort_Pipeline_sum_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sum_address0,sum_ce0,sum_we0,sum_d0,sum_q0,sum_address1,sum_ce1,sum_we1,sum_d1,bucket_address0,bucket_ce0,bucket_q0,bucket_address1,bucket_ce1,bucket_q1); 
parameter    ap_ST_fsm_state1 = 3'd1;
parameter    ap_ST_fsm_state2 = 3'd2;
parameter    ap_ST_fsm_state3 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] sum_address0;
output   sum_ce0;
output   sum_we0;
output  [31:0] sum_d0;
input  [31:0] sum_q0;
output  [6:0] sum_address1;
output   sum_ce1;
output   sum_we1;
output  [31:0] sum_d1;
output  [10:0] bucket_address0;
output   bucket_ce0;
input  [31:0] bucket_q0;
output  [10:0] bucket_address1;
output   bucket_ce1;
input  [31:0] bucket_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
wire    ap_CS_fsm_state3;
reg   [0:0] tmp_reg_236;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [6:0] radixID_1_reg_215;
reg    ap_block_state1_pp0_stage0_iter0;
wire   [7:0] add_ln25_fu_152_p2;
reg   [7:0] add_ln25_reg_231;
wire   [31:0] add_ln27_1_fu_179_p2;
reg   [31:0] add_ln27_1_reg_245;
wire    ap_CS_fsm_state2;
reg   [31:0] bucket_load_128_reg_251;
wire   [63:0] zext_ln27_1_fu_147_p1;
wire   [63:0] zext_ln27_fu_136_p1;
wire   [63:0] zext_ln27_2_fu_174_p1;
wire   [63:0] zext_ln9_fu_185_p1;
wire   [63:0] zext_ln25_fu_189_p1;
reg   [6:0] radixID_fu_48;
wire   [6:0] add_ln25_1_fu_198_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_radixID_1;
reg    sum_ce0_local;
reg   [6:0] sum_address0_local;
reg    sum_we1_local;
reg    sum_ce1_local;
reg    sum_we0_local;
wire   [31:0] add_ln27_2_fu_193_p2;
reg    bucket_ce1_local;
reg    bucket_ce0_local;
wire   [10:0] shl_ln_fu_122_p3;
wire   [10:0] add_ln26_fu_130_p2;
wire   [6:0] add_ln27_fu_141_p2;
wire   [7:0] zext_ln9_1_fu_118_p1;
wire   [10:0] or_ln1_fu_166_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 radixID_fu_48 = 7'd0;
#0 ap_done_reg = 1'b0;
end
ss_sort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_loop_init == 1'b1) & (1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        radixID_fu_48 <= 7'd1;
    end else if (((tmp_reg_236 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        radixID_fu_48 <= add_ln25_1_fu_198_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        add_ln25_reg_231 <= add_ln25_fu_152_p2;
        radixID_1_reg_215 <= ap_sig_allocacmp_radixID_1;
        tmp_reg_236 <= add_ln25_fu_152_p2[32'd7];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        add_ln27_1_reg_245 <= add_ln27_1_fu_179_p2;
        bucket_load_128_reg_251 <= bucket_q0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_block_state1_pp0_stage0_iter0)) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end
assign ap_ST_fsm_state2_blk = 1'b0;
assign ap_ST_fsm_state3_blk = 1'b0;
always @ (*) begin
    if (((tmp_reg_236 == 1'd1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start_int == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_sig_allocacmp_radixID_1 = 7'd1;
    end else begin
        ap_sig_allocacmp_radixID_1 = radixID_fu_48;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_ce0_local = 1'b1;
    end else begin
        bucket_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
        bucket_ce1_local = 1'b1;
    end else begin
        bucket_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_236 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        sum_address0_local = zext_ln25_fu_189_p1;
    end else if ((1'b1 == ap_CS_fsm_state1)) begin
        sum_address0_local = zext_ln27_1_fu_147_p1;
    end else begin
        sum_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((tmp_reg_236 == 1'd0) & (1'b1 == ap_CS_fsm_state3)) | ((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1)))) begin
        sum_ce0_local = 1'b1;
    end else begin
        sum_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_ce1_local = 1'b1;
    end else begin
        sum_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((tmp_reg_236 == 1'd0) & (1'b1 == ap_CS_fsm_state3))) begin
        sum_we0_local = 1'b1;
    end else begin
        sum_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        sum_we1_local = 1'b1;
    end else begin
        sum_we1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (((1'b0 == ap_block_state1_pp0_stage0_iter0) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln25_1_fu_198_p2 = (radixID_1_reg_215 + 7'd2);
assign add_ln25_fu_152_p2 = (zext_ln9_1_fu_118_p1 + 8'd1);
assign add_ln26_fu_130_p2 = ($signed(shl_ln_fu_122_p3) + $signed(11'd2047));
assign add_ln27_1_fu_179_p2 = (bucket_q1 + sum_q0);
assign add_ln27_2_fu_193_p2 = (bucket_load_128_reg_251 + add_ln27_1_reg_245);
assign add_ln27_fu_141_p2 = ($signed(ap_sig_allocacmp_radixID_1) + $signed(7'd127));
assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];
always @ (*) begin
    ap_block_state1_pp0_stage0_iter0 = (ap_start_int == 1'b0);
end
assign ap_done = ap_done_sig;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign bucket_address0 = zext_ln27_2_fu_174_p1;
assign bucket_address1 = zext_ln27_fu_136_p1;
assign bucket_ce0 = bucket_ce0_local;
assign bucket_ce1 = bucket_ce1_local;
assign or_ln1_fu_166_p3 = {{ap_sig_allocacmp_radixID_1}, {4'd15}};
assign shl_ln_fu_122_p3 = {{ap_sig_allocacmp_radixID_1}, {4'd0}};
assign sum_address0 = sum_address0_local;
assign sum_address1 = zext_ln9_fu_185_p1;
assign sum_ce0 = sum_ce0_local;
assign sum_ce1 = sum_ce1_local;
assign sum_d0 = add_ln27_2_fu_193_p2;
assign sum_d1 = add_ln27_1_reg_245;
assign sum_we0 = sum_we0_local;
assign sum_we1 = sum_we1_local;
assign zext_ln25_fu_189_p1 = add_ln25_reg_231;
assign zext_ln27_1_fu_147_p1 = add_ln27_fu_141_p2;
assign zext_ln27_2_fu_174_p1 = or_ln1_fu_166_p3;
assign zext_ln27_fu_136_p1 = add_ln26_fu_130_p2;
assign zext_ln9_1_fu_118_p1 = ap_sig_allocacmp_radixID_1;
assign zext_ln9_fu_185_p1 = radixID_1_reg_215;
endmodule 