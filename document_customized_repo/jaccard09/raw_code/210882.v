module SgdLR_sw_SgdLR_sw_Pipeline_label_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v3_3_address0,v3_3_ce0,v3_3_we0,v3_3_d0,v3_2_address0,v3_2_ce0,v3_2_we0,v3_2_d0,v3_1_address0,v3_1_ce0,v3_1_we0,v3_1_d0,v3_address0,v3_ce0,v3_we0,v3_d0,v5,v0_0_address0,v0_0_ce0,v0_0_q0,v0_2_address0,v0_2_ce0,v0_2_q0,v22,v0_1_address0,v0_1_ce0,v0_1_q0,v0_3_address0,v0_3_ce0,v0_3_q0,grp_fu_525_p_din0,grp_fu_525_p_din1,grp_fu_525_p_dout0,grp_fu_525_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v3_3_address0;
output   v3_3_ce0;
output   v3_3_we0;
output  [31:0] v3_3_d0;
output  [7:0] v3_2_address0;
output   v3_2_ce0;
output   v3_2_we0;
output  [31:0] v3_2_d0;
output  [7:0] v3_1_address0;
output   v3_1_ce0;
output   v3_1_we0;
output  [31:0] v3_1_d0;
output  [7:0] v3_address0;
output   v3_ce0;
output   v3_we0;
output  [31:0] v3_d0;
input  [12:0] v5;
output  [20:0] v0_0_address0;
output   v0_0_ce0;
input  [31:0] v0_0_q0;
output  [20:0] v0_2_address0;
output   v0_2_ce0;
input  [31:0] v0_2_q0;
input  [31:0] v22;
output  [20:0] v0_1_address0;
output   v0_1_ce0;
input  [31:0] v0_1_q0;
output  [20:0] v0_3_address0;
output   v0_3_ce0;
input  [31:0] v0_3_q0;
output  [31:0] grp_fu_525_p_din0;
output  [31:0] grp_fu_525_p_din1;
input  [31:0] grp_fu_525_p_dout0;
output   grp_fu_525_p_ce;
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
wire   [0:0] tmp_fu_202_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] lshr_ln1_fu_214_p4;
reg   [7:0] lshr_ln1_reg_309;
reg   [7:0] lshr_ln1_reg_309_pp0_iter1_reg;
reg   [7:0] lshr_ln1_reg_309_pp0_iter2_reg;
reg   [7:0] lshr_ln1_reg_309_pp0_iter3_reg;
reg   [7:0] lshr_ln1_reg_309_pp0_iter4_reg;
reg   [7:0] lshr_ln1_reg_309_pp0_iter5_reg;
wire   [0:0] icmp_ln51_fu_240_p2;
reg   [0:0] icmp_ln51_reg_324;
wire   [0:0] icmp_ln53_fu_246_p2;
reg   [0:0] icmp_ln53_reg_340;
reg   [0:0] icmp_ln53_reg_340_pp0_iter1_reg;
reg   [0:0] icmp_ln53_reg_340_pp0_iter2_reg;
reg   [0:0] icmp_ln53_reg_340_pp0_iter3_reg;
reg   [0:0] icmp_ln53_reg_340_pp0_iter4_reg;
reg   [0:0] icmp_ln53_reg_340_pp0_iter5_reg;
wire   [31:0] select_ln51_fu_263_p3;
reg   [31:0] select_ln51_reg_344;
wire   [31:0] select_ln51_1_fu_270_p3;
reg   [31:0] select_ln51_1_reg_349;
wire   [31:0] v23_fu_277_p1;
reg   [31:0] v24_reg_364;
wire   [31:0] grp_fu_190_p2;
reg   [31:0] v24_1_reg_370;
wire   [63:0] zext_ln51_fu_232_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln48_fu_285_p1;
reg   [10:0] v19_fu_66;
wire   [10:0] add_ln47_fu_252_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v19_1;
reg    v0_0_ce0_local;
reg    v0_2_ce0_local;
reg    v0_1_ce0_local;
reg    v0_3_ce0_local;
reg    v3_2_we0_local;
reg    v3_2_ce0_local;
reg    v3_3_we0_local;
reg    v3_3_ce0_local;
reg    v3_we0_local;
reg    v3_ce0_local;
reg    v3_1_we0_local;
reg    v3_1_ce0_local;
wire   [31:0] grp_fu_190_p1;
wire   [20:0] add_ln1_fu_224_p3;
wire   [1:0] trunc_ln47_fu_210_p1;
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
#0 v19_fu_66 = 11'd0;
#0 ap_done_reg = 1'b0;
end
SgdLR_sw_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(v22),.din1(grp_fu_190_p1),.ce(1'b1),.dout(grp_fu_190_p2));
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
        if (((tmp_fu_202_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v19_fu_66 <= add_ln47_fu_252_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v19_fu_66 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln51_reg_324 <= icmp_ln51_fu_240_p2;
        icmp_ln53_reg_340 <= icmp_ln53_fu_246_p2;
        icmp_ln53_reg_340_pp0_iter1_reg <= icmp_ln53_reg_340;
        lshr_ln1_reg_309 <= {{ap_sig_allocacmp_v19_1[9:2]}};
        lshr_ln1_reg_309_pp0_iter1_reg <= lshr_ln1_reg_309;
        select_ln51_1_reg_349 <= select_ln51_1_fu_270_p3;
        select_ln51_reg_344 <= select_ln51_fu_263_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        icmp_ln53_reg_340_pp0_iter2_reg <= icmp_ln53_reg_340_pp0_iter1_reg;
        icmp_ln53_reg_340_pp0_iter3_reg <= icmp_ln53_reg_340_pp0_iter2_reg;
        icmp_ln53_reg_340_pp0_iter4_reg <= icmp_ln53_reg_340_pp0_iter3_reg;
        icmp_ln53_reg_340_pp0_iter5_reg <= icmp_ln53_reg_340_pp0_iter4_reg;
        lshr_ln1_reg_309_pp0_iter2_reg <= lshr_ln1_reg_309_pp0_iter1_reg;
        lshr_ln1_reg_309_pp0_iter3_reg <= lshr_ln1_reg_309_pp0_iter2_reg;
        lshr_ln1_reg_309_pp0_iter4_reg <= lshr_ln1_reg_309_pp0_iter3_reg;
        lshr_ln1_reg_309_pp0_iter5_reg <= lshr_ln1_reg_309_pp0_iter4_reg;
        v24_1_reg_370 <= grp_fu_190_p2;
        v24_reg_364 <= grp_fu_525_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_fu_202_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v19_1 = 11'd0;
    end else begin
        ap_sig_allocacmp_v19_1 = v19_fu_66;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_340_pp0_iter5_reg == 1'd1))) begin
        v3_1_we0_local = 1'b1;
    end else begin
        v3_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_340_pp0_iter5_reg == 1'd0))) begin
        v3_2_we0_local = 1'b1;
    end else begin
        v3_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_340_pp0_iter5_reg == 1'd0))) begin
        v3_3_we0_local = 1'b1;
    end else begin
        v3_3_we0_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (icmp_ln53_reg_340_pp0_iter5_reg == 1'd1))) begin
        v3_we0_local = 1'b1;
    end else begin
        v3_we0_local = 1'b0;
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
assign add_ln1_fu_224_p3 = {{v5}, {lshr_ln1_fu_214_p4}};
assign add_ln47_fu_252_p2 = (ap_sig_allocacmp_v19_1 + 11'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_190_p1 = select_ln51_1_reg_349;
assign grp_fu_525_p_ce = 1'b1;
assign grp_fu_525_p_din0 = v22;
assign grp_fu_525_p_din1 = v23_fu_277_p1;
assign icmp_ln51_fu_240_p2 = ((trunc_ln47_fu_210_p1 != 2'd0) ? 1'b1 : 1'b0);
assign icmp_ln53_fu_246_p2 = ((trunc_ln47_fu_210_p1 == 2'd0) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_214_p4 = {{ap_sig_allocacmp_v19_1[9:2]}};
assign select_ln51_1_fu_270_p3 = ((icmp_ln51_reg_324[0:0] == 1'b1) ? v0_3_q0 : v0_1_q0);
assign select_ln51_fu_263_p3 = ((icmp_ln51_reg_324[0:0] == 1'b1) ? v0_2_q0 : v0_0_q0);
assign tmp_fu_202_p3 = ap_sig_allocacmp_v19_1[32'd10];
assign trunc_ln47_fu_210_p1 = ap_sig_allocacmp_v19_1[1:0];
assign v0_0_address0 = zext_ln51_fu_232_p1;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_1_address0 = zext_ln51_fu_232_p1;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_2_address0 = zext_ln51_fu_232_p1;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_3_address0 = zext_ln51_fu_232_p1;
assign v0_3_ce0 = v0_3_ce0_local;
assign v23_fu_277_p1 = select_ln51_reg_344;
assign v3_1_address0 = zext_ln48_fu_285_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_d0 = v24_1_reg_370;
assign v3_1_we0 = v3_1_we0_local;
assign v3_2_address0 = zext_ln48_fu_285_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_d0 = v24_reg_364;
assign v3_2_we0 = v3_2_we0_local;
assign v3_3_address0 = zext_ln48_fu_285_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_d0 = v24_1_reg_370;
assign v3_3_we0 = v3_3_we0_local;
assign v3_address0 = zext_ln48_fu_285_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_d0 = v24_reg_364;
assign v3_we0 = v3_we0_local;
assign zext_ln48_fu_285_p1 = lshr_ln1_reg_309_pp0_iter5_reg;
assign zext_ln51_fu_232_p1 = add_ln1_fu_224_p3;
endmodule 