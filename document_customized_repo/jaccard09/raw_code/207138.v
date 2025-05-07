module SgdLR_sw_SgdLR_sw_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_1_address1,v3_1_ce1,v3_1_we1,v3_1_d1,v3_address0,v3_ce0,v3_we0,v3_d0,v3_address1,v3_ce1,v3_we1,v3_d1,tmp,v0_address0,v0_ce0,v0_q0,v0_address1,v0_ce1,v0_q1,v22,v5,grp_fu_994_p_din0,grp_fu_994_p_din1,grp_fu_994_p_dout0,grp_fu_994_p_ce,grp_fu_998_p_din0,grp_fu_998_p_din1,grp_fu_998_p_dout0,grp_fu_998_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [8:0] v3_1_address1;
output   v3_1_ce1;
output   v3_1_we1;
output  [31:0] v3_1_d1;
output  [8:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
output  [8:0] v3_address1;
output   v3_ce1;
output   v3_we1;
output  [31:0] v3_d1;
input  [22:0] tmp;
output  [22:0] v0_address0;
output   v0_ce0;
input  [31:0] v0_q0;
output  [22:0] v0_address1;
output   v0_ce1;
input  [31:0] v0_q1;
input  [31:0] v22;
input  [12:0] v5;
output  [31:0] grp_fu_994_p_din0;
output  [31:0] grp_fu_994_p_din1;
input  [31:0] grp_fu_994_p_dout0;
output   grp_fu_994_p_ce;
output  [31:0] grp_fu_998_p_din0;
output  [31:0] grp_fu_998_p_din1;
input  [31:0] grp_fu_998_p_dout0;
output   grp_fu_998_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_40_fu_181_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [10:0] v19_4_reg_309;
reg   [10:0] v19_4_reg_309_pp0_iter1_reg;
reg   [10:0] v19_4_reg_309_pp0_iter2_reg;
reg   [10:0] v19_4_reg_309_pp0_iter3_reg;
reg   [10:0] v19_4_reg_309_pp0_iter4_reg;
reg   [10:0] v19_4_reg_309_pp0_iter5_reg;
wire   [0:0] icmp_ln53_fu_239_p2;
reg   [0:0] icmp_ln53_reg_329;
reg   [0:0] icmp_ln53_reg_329_pp0_iter1_reg;
reg   [0:0] icmp_ln53_reg_329_pp0_iter2_reg;
reg   [0:0] icmp_ln53_reg_329_pp0_iter3_reg;
reg   [0:0] icmp_ln53_reg_329_pp0_iter4_reg;
reg   [0:0] icmp_ln53_reg_329_pp0_iter5_reg;
reg   [31:0] v0_load_reg_333;
reg   [31:0] v0_load_5_reg_338;
wire   [31:0] v23_fu_256_p1;
wire   [31:0] v23_5_fu_260_p1;
reg   [31:0] v24_reg_353;
reg   [31:0] v24_1_reg_359;
wire   [63:0] zext_ln51_fu_199_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln51_2_fu_224_p1;
wire   [63:0] zext_ln48_fu_267_p1;
wire   [63:0] zext_ln51_1_fu_290_p1;
reg   [10:0] v19_fu_68;
wire   [10:0] add_ln47_fu_245_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_4;
reg    v0_ce1_local;
reg    v0_ce0_local;
reg    v3_1_we1_local;
reg    v3_1_ce1_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
reg    v3_we1_local;
reg    v3_ce1_local;
reg    v3_we0_local;
reg    v3_ce0_local;
wire   [22:0] zext_ln47_fu_189_p1;
wire   [22:0] add_ln51_fu_193_p2;
wire   [8:0] tmp_26_fu_204_p4;
wire   [22:0] add_ln51_1_fu_214_p4;
wire   [1:0] tmp_41_fu_229_p4;
wire   [8:0] trunc_ln47_fu_264_p1;
wire   [7:0] tmp_25_fu_273_p4;
wire   [8:0] or_ln1_fu_282_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
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
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 v19_fu_68 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_40_fu_181_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v19_fu_68 <= add_ln47_fu_245_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v19_fu_68 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln53_reg_329 <= icmp_ln53_fu_239_p2;
        icmp_ln53_reg_329_pp0_iter1_reg <= icmp_ln53_reg_329;
        v19_4_reg_309 <= ap_sig_allocacmp_v19_4;
        v19_4_reg_309_pp0_iter1_reg <= v19_4_reg_309;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        icmp_ln53_reg_329_pp0_iter2_reg <= icmp_ln53_reg_329_pp0_iter1_reg;
        icmp_ln53_reg_329_pp0_iter3_reg <= icmp_ln53_reg_329_pp0_iter2_reg;
        icmp_ln53_reg_329_pp0_iter4_reg <= icmp_ln53_reg_329_pp0_iter3_reg;
        icmp_ln53_reg_329_pp0_iter5_reg <= icmp_ln53_reg_329_pp0_iter4_reg;
        v19_4_reg_309_pp0_iter2_reg <= v19_4_reg_309_pp0_iter1_reg;
        v19_4_reg_309_pp0_iter3_reg <= v19_4_reg_309_pp0_iter2_reg;
        v19_4_reg_309_pp0_iter4_reg <= v19_4_reg_309_pp0_iter3_reg;
        v19_4_reg_309_pp0_iter5_reg <= v19_4_reg_309_pp0_iter4_reg;
        v24_1_reg_359 <= grp_fu_998_p_dout0;
        v24_reg_353 <= grp_fu_994_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_load_5_reg_338 <= v0_q0;
        v0_load_reg_333 <= v0_q1;
    end
end
always @ (*) begin
    if (((tmp_40_fu_181_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter5_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v19_4 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_4 = v19_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_ce0_local = 1'b1;
    end else begin
        v0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_ce1_local = 1'b1;
    end else begin
        v0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_329_pp0_iter5_reg == 1'd0))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_329_pp0_iter5_reg == 1'd0))) begin
        v3_1_we1_local = 1'b1;
    end else begin
        v3_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_329_pp0_iter5_reg == 1'd1))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_329_pp0_iter5_reg == 1'd1))) begin
        v3_we1_local = 1'b1;
    end else begin
        v3_we1_local = 1'b0;
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
assign add_ln47_fu_245_p2 = (ap_sig_allocacmp_v19_4 + 11'd2);
assign add_ln51_1_fu_214_p4 = {{{v5}, {tmp_26_fu_204_p4}}, {1'd1}};
assign add_ln51_fu_193_p2 = (zext_ln47_fu_189_p1 + tmp);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_994_p_ce = 1'b1;
assign grp_fu_994_p_din0 = v22;
assign grp_fu_994_p_din1 = v23_fu_256_p1;
assign grp_fu_998_p_ce = 1'b1;
assign grp_fu_998_p_din0 = v22;
assign grp_fu_998_p_din1 = v23_5_fu_260_p1;
assign icmp_ln53_fu_239_p2 = ((tmp_41_fu_229_p4 == 2'd0) ? 1'b1 : 1'b0);
assign or_ln1_fu_282_p3 = {{tmp_25_fu_273_p4}, {1'd1}};
assign tmp_25_fu_273_p4 = {{v19_4_reg_309_pp0_iter5_reg[8:1]}};
assign tmp_26_fu_204_p4 = {{ap_sig_allocacmp_v19_4[9:1]}};
assign tmp_40_fu_181_p3 = ap_sig_allocacmp_v19_4[32'd10];
assign tmp_41_fu_229_p4 = {{ap_sig_allocacmp_v19_4[10:9]}};
assign trunc_ln47_fu_264_p1 = v19_4_reg_309_pp0_iter5_reg[8:0];
assign v0_address0 = zext_ln51_2_fu_224_p1;
assign v0_address1 = zext_ln51_fu_199_p1;
assign v0_ce0 = v0_ce0_local;
assign v0_ce1 = v0_ce1_local;
assign v23_5_fu_260_p1 = v0_load_5_reg_338;
assign v23_fu_256_p1 = v0_load_reg_333;
assign v3_1_address0 = zext_ln51_1_fu_290_p1;
assign v3_1_address1 = zext_ln48_fu_267_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_1_d0 = v24_1_reg_359;
assign v3_1_d1 = v24_reg_353;
assign v3_1_we0 = v3_1_we0_local;
assign v3_1_we1 = v3_1_we1_local;
assign v3_address0 = zext_ln51_1_fu_290_p1;
assign v3_address1 = zext_ln48_fu_267_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign v3_d0 = v24_1_reg_359;
assign v3_d1 = v24_reg_353;
assign v3_we0 = v3_we0_local;
assign v3_we1 = v3_we1_local;
assign zext_ln47_fu_189_p1 = ap_sig_allocacmp_v19_4;
assign zext_ln48_fu_267_p1 = trunc_ln47_fu_264_p1;
assign zext_ln51_1_fu_290_p1 = or_ln1_fu_282_p3;
assign zext_ln51_2_fu_224_p1 = add_ln51_1_fu_214_p4;
assign zext_ln51_fu_199_p1 = add_ln51_fu_193_p2;
endmodule 