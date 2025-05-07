module forward_dataflow_in_loop_VITIS_LOOP_230_1_Loop_VITIS_LOOP_184_1_proc25_Pipeline_VITIS_LO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,v88_address0,v88_ce0,v88_we0,v88_d0,v88_1_address0,v88_1_ce0,v88_1_we0,v88_1_d0,mul5_i,v13696_0_address0,v13696_0_ce0,v13696_0_q0,v13696_1_address0,v13696_1_ce0,v13696_1_q0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] mul_i;
output  [8:0] v88_address0;
output   v88_ce0;
output   v88_we0;
output  [7:0] v88_d0;
output  [8:0] v88_1_address0;
output   v88_1_ce0;
output   v88_1_we0;
output  [7:0] v88_1_d0;
input  [10:0] mul5_i;
output  [21:0] v13696_0_address0;
output   v13696_0_ce0;
input  [7:0] v13696_0_q0;
output  [21:0] v13696_1_address0;
output   v13696_1_ce0;
input  [7:0] v13696_1_q0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln184_fu_282_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] select_ln184_fu_202_p3;
reg   [4:0] select_ln184_reg_372;
reg   [4:0] select_ln184_reg_372_pp0_iter1_reg;
wire   [8:0] add_ln190_fu_258_p2;
reg   [8:0] add_ln190_reg_377;
reg   [8:0] add_ln190_reg_377_pp0_iter1_reg;
reg   [8:0] add_ln190_reg_377_pp0_iter2_reg;
reg   [8:0] add_ln190_reg_377_pp0_iter3_reg;
wire   [0:0] icmp_ln185_fu_276_p2;
reg   [0:0] icmp_ln185_reg_382;
reg   [0:0] icmp_ln184_reg_387;
reg   [0:0] ap_phi_mux_icmp_ln18524_phi_fu_165_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln188_2_fu_325_p1;
wire   [63:0] zext_ln190_2_fu_330_p1;
reg   [8:0] indvar_flatten21_fu_84;
wire   [8:0] add_ln184_1_fu_270_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten21_load;
reg   [5:0] v6622_fu_88;
wire   [5:0] v66_fu_210_p3;
reg   [5:0] ap_sig_allocacmp_v6622_load;
reg   [4:0] v6723_fu_92;
wire   [4:0] v67_fu_264_p2;
reg   [4:0] ap_sig_allocacmp_v6723_load;
reg    v13696_0_ce0_local;
reg    v13696_1_ce0_local;
reg    v88_1_we0_local;
reg    v88_1_ce0_local;
reg    v88_we0_local;
reg    v88_ce0_local;
wire   [5:0] add_ln184_fu_196_p2;
wire   [4:0] trunc_ln190_fu_222_p1;
wire   [8:0] tmp_fu_226_p3;
wire   [8:0] zext_ln190_fu_234_p1;
wire   [3:0] lshr_ln_fu_244_p4;
wire   [8:0] sub_ln190_fu_238_p2;
wire   [8:0] zext_ln190_1_fu_254_p1;
wire   [10:0] zext_ln185_fu_303_p1;
wire   [10:0] add_ln187_fu_306_p2;
wire   [9:0] lshr_ln32_fu_311_p4;
wire   [21:0] grp_fu_335_p4;
wire   [5:0] grp_fu_335_p1;
wire   [9:0] grp_fu_335_p2;
wire   [9:0] grp_fu_335_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [11:0] grp_fu_335_p10;
wire   [21:0] grp_fu_335_p30;
reg    ap_condition_313;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 indvar_flatten21_fu_84 = 9'd0;
#0 v6622_fu_88 = 6'd0;
#0 v6723_fu_92 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_ama_addmuladd_12ns_6ns_10ns_10ns_22_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 12 ),.din1_WIDTH( 6 ),.din2_WIDTH( 10 ),.din3_WIDTH( 10 ),.dout_WIDTH( 22 ))
ama_addmuladd_12ns_6ns_10ns_10ns_22_4_1_U14489(.clk(ap_clk),.reset(ap_rst),.din0(mul_i),.din1(grp_fu_335_p1),.din2(grp_fu_335_p2),.din3(grp_fu_335_p3),.ce(1'b1),.dout(grp_fu_335_p4));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            indvar_flatten21_fu_84 <= add_ln184_1_fu_270_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten21_fu_84 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v6622_fu_88 <= v66_fu_210_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v6622_fu_88 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v6723_fu_92 <= v67_fu_264_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v6723_fu_92 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln190_reg_377 <= add_ln190_fu_258_p2;
        add_ln190_reg_377_pp0_iter1_reg <= add_ln190_reg_377;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln184_reg_387 <= icmp_ln184_fu_282_p2;
        select_ln184_reg_372 <= select_ln184_fu_202_p3;
        select_ln184_reg_372_pp0_iter1_reg <= select_ln184_reg_372;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_ln190_reg_377_pp0_iter2_reg <= add_ln190_reg_377_pp0_iter1_reg;
        add_ln190_reg_377_pp0_iter3_reg <= add_ln190_reg_377_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln185_reg_382 <= icmp_ln185_fu_276_p2;
    end
end
always @ (*) begin
    if (((icmp_ln184_fu_282_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_313)) begin
            ap_phi_mux_icmp_ln18524_phi_fu_165_p4 = icmp_ln185_reg_382;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln18524_phi_fu_165_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln18524_phi_fu_165_p4 = icmp_ln185_reg_382;
        end
    end else begin
        ap_phi_mux_icmp_ln18524_phi_fu_165_p4 = icmp_ln185_reg_382;
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
        ap_sig_allocacmp_indvar_flatten21_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten21_load = indvar_flatten21_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v6622_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v6622_load = v6622_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v6723_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v6723_load = v6723_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13696_0_ce0_local = 1'b1;
    end else begin
        v13696_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v13696_1_ce0_local = 1'b1;
    end else begin
        v13696_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v88_1_ce0_local = 1'b1;
    end else begin
        v88_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v88_1_we0_local = 1'b1;
    end else begin
        v88_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v88_ce0_local = 1'b1;
    end else begin
        v88_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v88_we0_local = 1'b1;
    end else begin
        v88_we0_local = 1'b0;
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
assign add_ln184_1_fu_270_p2 = (ap_sig_allocacmp_indvar_flatten21_load + 9'd1);
assign add_ln184_fu_196_p2 = (ap_sig_allocacmp_v6622_load + 6'd1);
assign add_ln187_fu_306_p2 = (mul5_i + zext_ln185_fu_303_p1);
assign add_ln190_fu_258_p2 = (sub_ln190_fu_238_p2 + zext_ln190_1_fu_254_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_313 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln184_reg_387 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_335_p1 = grp_fu_335_p10;
assign grp_fu_335_p10 = v66_fu_210_p3;
assign grp_fu_335_p2 = 22'd735;
assign grp_fu_335_p3 = grp_fu_335_p30;
assign grp_fu_335_p30 = lshr_ln32_fu_311_p4;
assign icmp_ln184_fu_282_p2 = ((ap_sig_allocacmp_indvar_flatten21_load == 9'd479) ? 1'b1 : 1'b0);
assign icmp_ln185_fu_276_p2 = ((v67_fu_264_p2 == 5'd30) ? 1'b1 : 1'b0);
assign lshr_ln32_fu_311_p4 = {{add_ln187_fu_306_p2[10:1]}};
assign lshr_ln_fu_244_p4 = {{select_ln184_fu_202_p3[4:1]}};
assign select_ln184_fu_202_p3 = ((ap_phi_mux_icmp_ln18524_phi_fu_165_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v6723_load);
assign sub_ln190_fu_238_p2 = (tmp_fu_226_p3 - zext_ln190_fu_234_p1);
assign tmp_fu_226_p3 = {{trunc_ln190_fu_222_p1}, {4'd0}};
assign trunc_ln190_fu_222_p1 = v66_fu_210_p3[4:0];
assign v13696_0_address0 = zext_ln188_2_fu_325_p1;
assign v13696_0_ce0 = v13696_0_ce0_local;
assign v13696_1_address0 = zext_ln188_2_fu_325_p1;
assign v13696_1_ce0 = v13696_1_ce0_local;
assign v66_fu_210_p3 = ((ap_phi_mux_icmp_ln18524_phi_fu_165_p4[0:0] == 1'b1) ? add_ln184_fu_196_p2 : ap_sig_allocacmp_v6622_load);
assign v67_fu_264_p2 = (select_ln184_fu_202_p3 + 5'd2);
assign v88_1_address0 = zext_ln190_2_fu_330_p1;
assign v88_1_ce0 = v88_1_ce0_local;
assign v88_1_d0 = v13696_0_q0;
assign v88_1_we0 = v88_1_we0_local;
assign v88_address0 = zext_ln190_2_fu_330_p1;
assign v88_ce0 = v88_ce0_local;
assign v88_d0 = v13696_1_q0;
assign v88_we0 = v88_we0_local;
assign zext_ln185_fu_303_p1 = select_ln184_reg_372_pp0_iter1_reg;
assign zext_ln188_2_fu_325_p1 = grp_fu_335_p4;
assign zext_ln190_1_fu_254_p1 = lshr_ln_fu_244_p4;
assign zext_ln190_2_fu_330_p1 = add_ln190_reg_377_pp0_iter3_reg;
assign zext_ln190_fu_234_p1 = v66_fu_210_p3;
endmodule 