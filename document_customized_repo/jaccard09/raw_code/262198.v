module backprop_backprop_Pipeline_label_1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v19_2_address0,v19_2_ce0,v19_2_we0,v19_2_d0,v19_1_address0,v19_1_ce0,v19_1_we0,v19_1_d0,v19_address0,v19_ce0,v19_we0,v19_d0,v20_address0,v20_ce0,v20_we0,v20_d0,v18_5_out_i,v18_5_out_o,v18_5_out_o_ap_vld,v18_4_out_i,v18_4_out_o,v18_4_out_o_ap_vld,v18_3_out_i,v18_3_out_o,v18_3_out_o_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v19_2_address0;
output   v19_2_ce0;
output   v19_2_we0;
output  [63:0] v19_2_d0;
output  [4:0] v19_1_address0;
output   v19_1_ce0;
output   v19_1_we0;
output  [63:0] v19_1_d0;
output  [4:0] v19_address0;
output   v19_ce0;
output   v19_we0;
output  [63:0] v19_d0;
output  [5:0] v20_address0;
output   v20_ce0;
output   v20_we0;
output  [63:0] v20_d0;
input  [63:0] v18_5_out_i;
output  [63:0] v18_5_out_o;
output   v18_5_out_o_ap_vld;
input  [63:0] v18_4_out_i;
output  [63:0] v18_4_out_o;
output   v18_4_out_o_ap_vld;
input  [63:0] v18_3_out_i;
output  [63:0] v18_3_out_o;
output   v18_3_out_o_ap_vld;
reg ap_idle;
reg[63:0] v18_5_out_o;
reg v18_5_out_o_ap_vld;
reg[63:0] v18_4_out_o;
reg v18_4_out_o_ap_vld;
reg[63:0] v18_3_out_o;
reg v18_3_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln59_fu_152_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln59_reg_368;
wire    ap_block_pp0_stage0_11001;
wire   [63:0] zext_ln59_fu_164_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln59_1_fu_306_p1;
wire   [63:0] empty_fu_225_p3;
wire   [63:0] empty_1021_fu_239_p3;
wire   [63:0] empty_1022_fu_253_p3;
reg   [6:0] phi_urem_fu_66;
wire   [6:0] select_ln62_fu_329_p3;
wire    ap_loop_init;
reg   [13:0] phi_mul_fu_70;
wire   [13:0] add_ln59_1_fu_290_p2;
reg   [6:0] v22_fu_74;
wire   [6:0] add_ln59_fu_158_p2;
reg   [6:0] ap_sig_allocacmp_v22_1;
reg    v20_we0_local;
reg    v20_ce0_local;
reg    v19_1_we0_local;
wire   [1:0] trunc_ln59_fu_313_p1;
reg    v19_1_ce0_local;
reg    v19_we0_local;
reg    v19_ce0_local;
reg    v19_2_we0_local;
reg    v19_2_ce0_local;
wire   [6:0] sub_ln62_fu_181_p2;
wire   [0:0] tmp_982_fu_187_p3;
wire   [0:0] icmp_ln63_1_fu_207_p2;
wire   [0:0] or_ln63_fu_213_p2;
wire   [0:0] icmp_ln63_fu_201_p2;
wire   [0:0] or_ln63_1_fu_219_p2;
wire   [0:0] xor_ln62_fu_195_p2;
wire   [0:0] and_ln63_fu_233_p2;
wire   [0:0] and_ln63_1_fu_247_p2;
wire   [4:0] tmp_fu_296_p4;
wire   [6:0] add_ln62_fu_317_p2;
wire   [0:0] icmp_ln62_fu_323_p2;
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
#0 phi_urem_fu_66 = 7'd0;
#0 phi_mul_fu_70 = 14'd0;
#0 v22_fu_74 = 7'd0;
#0 ap_done_reg = 1'b0;
end
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
            ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            phi_mul_fu_70 <= 14'd0;
        end else if (((icmp_ln59_reg_368 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            phi_mul_fu_70 <= add_ln59_1_fu_290_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            phi_urem_fu_66 <= 7'd0;
        end else if (((icmp_ln59_reg_368 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            phi_urem_fu_66 <= select_ln62_fu_329_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln59_fu_152_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v22_fu_74 <= add_ln59_fu_158_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v22_fu_74 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln59_reg_368 <= icmp_ln59_fu_152_p2;
    end
end
always @ (*) begin
    if (((icmp_ln59_fu_152_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v22_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v22_1 = v22_fu_74;
    end
end
always @ (*) begin
    if (((icmp_ln59_fu_152_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_3_out_o = empty_1022_fu_253_p3;
    end else begin
        v18_3_out_o = v18_3_out_i;
    end
end
always @ (*) begin
    if (((icmp_ln59_fu_152_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_3_out_o_ap_vld = 1'b1;
    end else begin
        v18_3_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln59_fu_152_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_4_out_o = empty_1021_fu_239_p3;
    end else begin
        v18_4_out_o = v18_4_out_i;
    end
end
always @ (*) begin
    if (((icmp_ln59_fu_152_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_4_out_o_ap_vld = 1'b1;
    end else begin
        v18_4_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln59_fu_152_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_5_out_o = empty_fu_225_p3;
    end else begin
        v18_5_out_o = v18_5_out_i;
    end
end
always @ (*) begin
    if (((icmp_ln59_fu_152_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_5_out_o_ap_vld = 1'b1;
    end else begin
        v18_5_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln59_reg_368 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln59_fu_313_p1 == 2'd1))) begin
        v19_1_we0_local = 1'b1;
    end else begin
        v19_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_2_ce0_local = 1'b1;
    end else begin
        v19_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln59_fu_313_p1 == 2'd0) & ~(trunc_ln59_fu_313_p1 == 2'd1) & (icmp_ln59_reg_368 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_2_we0_local = 1'b1;
    end else begin
        v19_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln59_reg_368 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln59_fu_313_p1 == 2'd0))) begin
        v19_we0_local = 1'b1;
    end else begin
        v19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln59_fu_152_p2 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_we0_local = 1'b1;
    end else begin
        v20_we0_local = 1'b0;
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
assign add_ln59_1_fu_290_p2 = (phi_mul_fu_70 + 14'd171);
assign add_ln59_fu_158_p2 = (ap_sig_allocacmp_v22_1 + 7'd1);
assign add_ln62_fu_317_p2 = (phi_urem_fu_66 + 7'd1);
assign and_ln63_1_fu_247_p2 = (xor_ln62_fu_195_p2 & icmp_ln63_1_fu_207_p2);
assign and_ln63_fu_233_p2 = (xor_ln62_fu_195_p2 & icmp_ln63_fu_201_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_1021_fu_239_p3 = ((and_ln63_fu_233_p2[0:0] == 1'b1) ? 64'd0 : v18_4_out_i);
assign empty_1022_fu_253_p3 = ((and_ln63_1_fu_247_p2[0:0] == 1'b1) ? 64'd0 : v18_3_out_i);
assign empty_fu_225_p3 = ((or_ln63_1_fu_219_p2[0:0] == 1'b1) ? v18_5_out_i : 64'd0);
assign icmp_ln59_fu_152_p2 = ((ap_sig_allocacmp_v22_1 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln62_fu_323_p2 = ((add_ln62_fu_317_p2 < 7'd3) ? 1'b1 : 1'b0);
assign icmp_ln63_1_fu_207_p2 = ((ap_sig_allocacmp_v22_1 == 7'd1) ? 1'b1 : 1'b0);
assign icmp_ln63_fu_201_p2 = ((ap_sig_allocacmp_v22_1 == 7'd0) ? 1'b1 : 1'b0);
assign or_ln63_1_fu_219_p2 = (or_ln63_fu_213_p2 | icmp_ln63_fu_201_p2);
assign or_ln63_fu_213_p2 = (tmp_982_fu_187_p3 | icmp_ln63_1_fu_207_p2);
assign select_ln62_fu_329_p3 = ((icmp_ln62_fu_323_p2[0:0] == 1'b1) ? add_ln62_fu_317_p2 : 7'd0);
assign sub_ln62_fu_181_p2 = (7'd2 - ap_sig_allocacmp_v22_1);
assign tmp_982_fu_187_p3 = sub_ln62_fu_181_p2[32'd6];
assign tmp_fu_296_p4 = {{phi_mul_fu_70[13:9]}};
assign trunc_ln59_fu_313_p1 = phi_urem_fu_66[1:0];
assign v19_1_address0 = zext_ln59_1_fu_306_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_1_d0 = 64'd0;
assign v19_1_we0 = v19_1_we0_local;
assign v19_2_address0 = zext_ln59_1_fu_306_p1;
assign v19_2_ce0 = v19_2_ce0_local;
assign v19_2_d0 = 64'd0;
assign v19_2_we0 = v19_2_we0_local;
assign v19_address0 = zext_ln59_1_fu_306_p1;
assign v19_ce0 = v19_ce0_local;
assign v19_d0 = 64'd0;
assign v19_we0 = v19_we0_local;
assign v20_address0 = zext_ln59_fu_164_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_d0 = 64'd0;
assign v20_we0 = v20_we0_local;
assign xor_ln62_fu_195_p2 = (tmp_982_fu_187_p3 ^ 1'd1);
assign zext_ln59_1_fu_306_p1 = tmp_fu_296_p4;
assign zext_ln59_fu_164_p1 = ap_sig_allocacmp_v22_1;
endmodule 