module backprop_backprop_Pipeline_label_221 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v11_1_address0,v11_1_ce0,v11_1_we0,v11_1_d0,v11_1_address1,v11_1_ce1,v11_1_we1,v11_1_d1,v11_address0,v11_ce0,v11_we0,v11_d0,v11_address1,v11_ce1,v11_we1,v11_d1,v8_address0,v8_ce0,v8_q0,v8_address1,v8_ce1,v8_q1,v126_1,tmp_72,v8_1_address0,v8_1_ce0,v8_1_q0,v8_1_address1,v8_1_ce1,v8_1_q1,grp_fu_29930_p_din0,grp_fu_29930_p_din1,grp_fu_29930_p_dout0,grp_fu_29930_p_ce,grp_fu_29934_p_din0,grp_fu_29934_p_din1,grp_fu_29934_p_dout0,grp_fu_29934_p_ce,grp_fu_29938_p_din0,grp_fu_29938_p_din1,grp_fu_29938_p_dout0,grp_fu_29938_p_ce,grp_fu_73625_p_din0,grp_fu_73625_p_din1,grp_fu_73625_p_dout0,grp_fu_73625_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [10:0] v11_1_address0;
output   v11_1_ce0;
output   v11_1_we0;
output  [63:0] v11_1_d0;
output  [10:0] v11_1_address1;
output   v11_1_ce1;
output   v11_1_we1;
output  [63:0] v11_1_d1;
output  [10:0] v11_address0;
output   v11_ce0;
output   v11_we0;
output  [63:0] v11_d0;
output  [10:0] v11_address1;
output   v11_ce1;
output   v11_we1;
output  [63:0] v11_d1;
output  [4:0] v8_address0;
output   v8_ce0;
input  [63:0] v8_q0;
output  [4:0] v8_address1;
output   v8_ce1;
input  [63:0] v8_q1;
input  [63:0] v126_1;
input  [4:0] tmp_72;
output  [4:0] v8_1_address0;
output   v8_1_ce0;
input  [63:0] v8_1_q0;
output  [4:0] v8_1_address1;
output   v8_1_ce1;
input  [63:0] v8_1_q1;
output  [63:0] grp_fu_29930_p_din0;
output  [63:0] grp_fu_29930_p_din1;
input  [63:0] grp_fu_29930_p_dout0;
output   grp_fu_29930_p_ce;
output  [63:0] grp_fu_29934_p_din0;
output  [63:0] grp_fu_29934_p_din1;
input  [63:0] grp_fu_29934_p_dout0;
output   grp_fu_29934_p_ce;
output  [63:0] grp_fu_29938_p_din0;
output  [63:0] grp_fu_29938_p_din1;
input  [63:0] grp_fu_29938_p_dout0;
output   grp_fu_29938_p_ce;
output  [63:0] grp_fu_73625_p_din0;
output  [63:0] grp_fu_73625_p_din1;
input  [63:0] grp_fu_73625_p_dout0;
output   grp_fu_73625_p_ce;
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
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] tmp_fu_200_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] lshr_ln212_1_fu_208_p4;
reg   [4:0] lshr_ln212_1_reg_314;
reg   [4:0] lshr_ln212_1_reg_314_pp0_iter1_reg;
reg   [4:0] lshr_ln212_1_reg_314_pp0_iter2_reg;
reg   [4:0] lshr_ln212_1_reg_314_pp0_iter3_reg;
reg   [4:0] lshr_ln212_1_reg_314_pp0_iter4_reg;
reg   [4:0] lshr_ln212_1_reg_314_pp0_iter5_reg;
reg   [4:0] lshr_ln212_1_reg_314_pp0_iter6_reg;
reg   [4:0] lshr_ln212_1_reg_314_pp0_iter7_reg;
reg   [4:0] lshr_ln212_1_reg_314_pp0_iter8_reg;
wire   [3:0] tmp_s_fu_224_p4;
reg   [3:0] tmp_s_reg_329;
reg   [3:0] tmp_s_reg_329_pp0_iter1_reg;
reg   [3:0] tmp_s_reg_329_pp0_iter2_reg;
reg   [3:0] tmp_s_reg_329_pp0_iter3_reg;
reg   [3:0] tmp_s_reg_329_pp0_iter4_reg;
reg   [3:0] tmp_s_reg_329_pp0_iter5_reg;
reg   [3:0] tmp_s_reg_329_pp0_iter6_reg;
reg   [3:0] tmp_s_reg_329_pp0_iter7_reg;
reg   [3:0] tmp_s_reg_329_pp0_iter8_reg;
reg   [63:0] v128_reg_344;
reg   [63:0] v128_4_reg_349;
reg   [63:0] v128_5_reg_354;
reg   [63:0] v128_3_reg_359;
reg   [63:0] v129_reg_364;
reg   [63:0] v129_1_reg_369;
reg   [63:0] v129_2_reg_374;
reg   [63:0] v129_3_reg_379;
wire   [63:0] zext_ln212_fu_218_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln213_fu_242_p1;
wire   [63:0] zext_ln215_fu_267_p1;
wire   [63:0] zext_ln215_1_fu_283_p1;
reg   [6:0] v127_fu_60;
wire   [6:0] add_ln212_fu_248_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v127_1;
reg    v8_ce1_local;
reg    v8_ce0_local;
reg    v8_1_ce1_local;
reg    v8_1_ce0_local;
reg    v11_we1_local;
reg    v11_ce1_local;
reg    v11_we0_local;
reg    v11_ce0_local;
reg    v11_1_we1_local;
reg    v11_1_ce1_local;
reg    v11_1_we0_local;
reg    v11_1_ce0_local;
wire   [4:0] or_ln213_1_fu_234_p3;
wire   [10:0] add_ln215_2_fu_259_p4;
wire   [10:0] add_ln215_3_fu_273_p5;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
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
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 v127_fu_60 = 7'd0;
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((tmp_fu_200_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v127_fu_60 <= add_ln212_fu_248_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v127_fu_60 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln212_1_reg_314 <= {{ap_sig_allocacmp_v127_1[5:1]}};
        lshr_ln212_1_reg_314_pp0_iter1_reg <= lshr_ln212_1_reg_314;
        tmp_s_reg_329 <= {{ap_sig_allocacmp_v127_1[5:2]}};
        tmp_s_reg_329_pp0_iter1_reg <= tmp_s_reg_329;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        lshr_ln212_1_reg_314_pp0_iter2_reg <= lshr_ln212_1_reg_314_pp0_iter1_reg;
        lshr_ln212_1_reg_314_pp0_iter3_reg <= lshr_ln212_1_reg_314_pp0_iter2_reg;
        lshr_ln212_1_reg_314_pp0_iter4_reg <= lshr_ln212_1_reg_314_pp0_iter3_reg;
        lshr_ln212_1_reg_314_pp0_iter5_reg <= lshr_ln212_1_reg_314_pp0_iter4_reg;
        lshr_ln212_1_reg_314_pp0_iter6_reg <= lshr_ln212_1_reg_314_pp0_iter5_reg;
        lshr_ln212_1_reg_314_pp0_iter7_reg <= lshr_ln212_1_reg_314_pp0_iter6_reg;
        lshr_ln212_1_reg_314_pp0_iter8_reg <= lshr_ln212_1_reg_314_pp0_iter7_reg;
        tmp_s_reg_329_pp0_iter2_reg <= tmp_s_reg_329_pp0_iter1_reg;
        tmp_s_reg_329_pp0_iter3_reg <= tmp_s_reg_329_pp0_iter2_reg;
        tmp_s_reg_329_pp0_iter4_reg <= tmp_s_reg_329_pp0_iter3_reg;
        tmp_s_reg_329_pp0_iter5_reg <= tmp_s_reg_329_pp0_iter4_reg;
        tmp_s_reg_329_pp0_iter6_reg <= tmp_s_reg_329_pp0_iter5_reg;
        tmp_s_reg_329_pp0_iter7_reg <= tmp_s_reg_329_pp0_iter6_reg;
        tmp_s_reg_329_pp0_iter8_reg <= tmp_s_reg_329_pp0_iter7_reg;
        v129_1_reg_369 <= grp_fu_29934_p_dout0;
        v129_2_reg_374 <= grp_fu_29938_p_dout0;
        v129_3_reg_379 <= grp_fu_73625_p_dout0;
        v129_reg_364 <= grp_fu_29930_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v128_3_reg_359 <= v8_1_q0;
        v128_4_reg_349 <= v8_1_q1;
        v128_5_reg_354 <= v8_q0;
        v128_reg_344 <= v8_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_200_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v127_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v127_1 = v127_fu_60;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_ce0_local = 1'b1;
    end else begin
        v11_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_ce1_local = 1'b1;
    end else begin
        v11_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_we0_local = 1'b1;
    end else begin
        v11_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_1_we1_local = 1'b1;
    end else begin
        v11_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_ce0_local = 1'b1;
    end else begin
        v11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_ce1_local = 1'b1;
    end else begin
        v11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_we0_local = 1'b1;
    end else begin
        v11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v11_we1_local = 1'b1;
    end else begin
        v11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_1_ce0_local = 1'b1;
    end else begin
        v8_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_1_ce1_local = 1'b1;
    end else begin
        v8_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_ce0_local = 1'b1;
    end else begin
        v8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_ce1_local = 1'b1;
    end else begin
        v8_ce1_local = 1'b0;
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
assign add_ln212_fu_248_p2 = (ap_sig_allocacmp_v127_1 + 7'd4);
assign add_ln215_2_fu_259_p4 = {{{tmp_72}, {1'd1}}, {lshr_ln212_1_reg_314_pp0_iter8_reg}};
assign add_ln215_3_fu_273_p5 = {{{{tmp_72}, {1'd1}}, {tmp_s_reg_329_pp0_iter8_reg}}, {1'd1}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_29930_p_ce = 1'b1;
assign grp_fu_29930_p_din0 = v126_1;
assign grp_fu_29930_p_din1 = v128_reg_344;
assign grp_fu_29934_p_ce = 1'b1;
assign grp_fu_29934_p_din0 = v126_1;
assign grp_fu_29934_p_din1 = v128_4_reg_349;
assign grp_fu_29938_p_ce = 1'b1;
assign grp_fu_29938_p_din0 = v126_1;
assign grp_fu_29938_p_din1 = v128_5_reg_354;
assign grp_fu_73625_p_ce = 1'b1;
assign grp_fu_73625_p_din0 = v126_1;
assign grp_fu_73625_p_din1 = v128_3_reg_359;
assign lshr_ln212_1_fu_208_p4 = {{ap_sig_allocacmp_v127_1[5:1]}};
assign or_ln213_1_fu_234_p3 = {{tmp_s_fu_224_p4}, {1'd1}};
assign tmp_fu_200_p3 = ap_sig_allocacmp_v127_1[32'd6];
assign tmp_s_fu_224_p4 = {{ap_sig_allocacmp_v127_1[5:2]}};
assign v11_1_address0 = zext_ln215_1_fu_283_p1;
assign v11_1_address1 = zext_ln215_fu_267_p1;
assign v11_1_ce0 = v11_1_ce0_local;
assign v11_1_ce1 = v11_1_ce1_local;
assign v11_1_d0 = v129_3_reg_379;
assign v11_1_d1 = v129_1_reg_369;
assign v11_1_we0 = v11_1_we0_local;
assign v11_1_we1 = v11_1_we1_local;
assign v11_address0 = zext_ln215_1_fu_283_p1;
assign v11_address1 = zext_ln215_fu_267_p1;
assign v11_ce0 = v11_ce0_local;
assign v11_ce1 = v11_ce1_local;
assign v11_d0 = v129_2_reg_374;
assign v11_d1 = v129_reg_364;
assign v11_we0 = v11_we0_local;
assign v11_we1 = v11_we1_local;
assign v8_1_address0 = zext_ln213_fu_242_p1;
assign v8_1_address1 = zext_ln212_fu_218_p1;
assign v8_1_ce0 = v8_1_ce0_local;
assign v8_1_ce1 = v8_1_ce1_local;
assign v8_address0 = zext_ln213_fu_242_p1;
assign v8_address1 = zext_ln212_fu_218_p1;
assign v8_ce0 = v8_ce0_local;
assign v8_ce1 = v8_ce1_local;
assign zext_ln212_fu_218_p1 = lshr_ln212_1_fu_208_p4;
assign zext_ln213_fu_242_p1 = or_ln213_1_fu_234_p3;
assign zext_ln215_1_fu_283_p1 = add_ln215_3_fu_273_p5;
assign zext_ln215_fu_267_p1 = add_ln215_2_fu_259_p4;
endmodule 