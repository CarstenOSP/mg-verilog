module forward_dataflow_in_loop_VITIS_LOOP_12491_1_Loop_VITIS_LOOP_12247_1_proc15743_Pipeline_V (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_ln12251,v7952_i_address0,v7952_i_ce0,v7952_i_q0,v9204_address0,v9204_ce0,v9204_we0,v9204_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [12:0] mul_ln12251;
output  [13:0] v7952_i_address0;
output   v7952_i_ce0;
input  [7:0] v7952_i_q0;
output  [19:0] v9204_address0;
output   v9204_ce0;
output   v9204_we0;
output  [7:0] v9204_d0;
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
wire   [0:0] icmp_ln12247_fu_218_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln1224813_reg_117;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln12247_fu_160_p3;
reg   [6:0] select_ln12247_reg_332;
reg   [6:0] select_ln12247_reg_332_pp0_iter2_reg;
wire   [6:0] v7863_fu_182_p3;
reg   [6:0] v7863_reg_337;
reg   [6:0] v7863_reg_337_pp0_iter2_reg;
wire   [6:0] v7864_fu_194_p2;
reg   [6:0] v7864_reg_343;
reg   [6:0] v7864_reg_343_pp0_iter2_reg;
wire   [0:0] icmp_ln12248_fu_212_p2;
reg   [0:0] icmp_ln12248_reg_348;
reg   [0:0] icmp_ln12247_reg_353;
reg   [0:0] ap_phi_mux_icmp_ln1224813_phi_fu_121_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12250_2_fu_277_p1;
wire   [63:0] zext_ln12251_3_fu_285_p1;
reg   [13:0] indvar_flatten9_fu_68;
wire   [13:0] add_ln12247_fu_200_p2;
reg   [6:0] v786310_fu_72;
reg   [6:0] v786411_fu_76;
reg   [6:0] indvars_iv_next31_i12_fu_80;
wire   [6:0] indvars_iv_next31_i_fu_206_p2;
reg    v7952_i_ce0_local;
reg    v9204_we0_local;
reg    v9204_ce0_local;
wire   [6:0] indvars_iv_next31_i_mid1_fu_168_p2;
wire   [6:0] select_ln12247_1_fu_174_p3;
wire   [10:0] tmp_fu_251_p3;
wire   [13:0] p_shl_fu_244_p3;
wire   [13:0] zext_ln12250_fu_258_p1;
wire   [13:0] sub_ln12250_fu_262_p2;
wire   [13:0] zext_ln12250_1_fu_268_p1;
wire   [13:0] add_ln12250_fu_271_p2;
wire   [19:0] grp_fu_289_p4;
wire   [6:0] grp_fu_289_p1;
wire   [6:0] grp_fu_289_p2;
wire   [6:0] grp_fu_289_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [12:0] grp_fu_289_p10;
wire   [19:0] grp_fu_289_p30;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 indvar_flatten9_fu_68 = 14'd0;
#0 v786310_fu_72 = 7'd0;
#0 v786411_fu_76 = 7'd0;
#0 indvars_iv_next31_i12_fu_80 = 7'd0;
#0 ap_done_reg = 1'b0;
end
forward_ama_addmuladd_13ns_7ns_7ns_7ns_20_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 13 ),.din1_WIDTH( 7 ),.din2_WIDTH( 7 ),.din3_WIDTH( 7 ),.dout_WIDTH( 20 ))
ama_addmuladd_13ns_7ns_7ns_7ns_20_4_1_U2867(.clk(ap_clk),.reset(ap_rst),.din0(mul_ln12251),.din1(grp_fu_289_p1),.din2(grp_fu_289_p2),.din3(grp_fu_289_p3),.ce(1'b1),.dout(grp_fu_289_p4));
forward_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
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
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter3_reg == 1'b0))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((icmp_ln12247_reg_353 == 1'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        icmp_ln1224813_reg_117 <= icmp_ln12248_reg_348;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        icmp_ln1224813_reg_117 <= 1'd0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvar_flatten9_fu_68 <= 14'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvar_flatten9_fu_68 <= add_ln12247_fu_200_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            indvars_iv_next31_i12_fu_80 <= 7'd1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            indvars_iv_next31_i12_fu_80 <= indvars_iv_next31_i_fu_206_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v786310_fu_72 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v786310_fu_72 <= v7863_fu_182_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v786411_fu_76 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v786411_fu_76 <= v7864_fu_194_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        icmp_ln12247_reg_353 <= icmp_ln12247_fu_218_p2;
        select_ln12247_reg_332 <= select_ln12247_fu_160_p3;
        v7863_reg_337 <= v7863_fu_182_p3;
        v7864_reg_343 <= v7864_fu_194_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        select_ln12247_reg_332_pp0_iter2_reg <= select_ln12247_reg_332;
        v7863_reg_337_pp0_iter2_reg <= v7863_reg_337;
        v7864_reg_343_pp0_iter2_reg <= v7864_reg_343;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln12248_reg_348 <= icmp_ln12248_fu_212_p2;
    end
end
always @ (*) begin
    if (((icmp_ln12247_fu_218_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
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
    if (((icmp_ln12247_reg_353 == 1'd0) & (1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        ap_phi_mux_icmp_ln1224813_phi_fu_121_p4 = icmp_ln12248_reg_348;
    end else begin
        ap_phi_mux_icmp_ln1224813_phi_fu_121_p4 = icmp_ln1224813_reg_117;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v7952_i_ce0_local = 1'b1;
    end else begin
        v7952_i_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9204_ce0_local = 1'b1;
    end else begin
        v9204_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v9204_we0_local = 1'b1;
    end else begin
        v9204_we0_local = 1'b0;
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
assign add_ln12247_fu_200_p2 = (indvar_flatten9_fu_68 + 14'd1);
assign add_ln12250_fu_271_p2 = (sub_ln12250_fu_262_p2 + zext_ln12250_1_fu_268_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_289_p1 = grp_fu_289_p10;
assign grp_fu_289_p10 = select_ln12247_1_fu_174_p3;
assign grp_fu_289_p2 = 20'd114;
assign grp_fu_289_p3 = grp_fu_289_p30;
assign grp_fu_289_p30 = v7864_reg_343_pp0_iter2_reg;
assign icmp_ln12247_fu_218_p2 = ((indvar_flatten9_fu_68 == 14'd12543) ? 1'b1 : 1'b0);
assign icmp_ln12248_fu_212_p2 = ((v7864_fu_194_p2 == 7'd112) ? 1'b1 : 1'b0);
assign indvars_iv_next31_i_fu_206_p2 = (v7863_fu_182_p3 + 7'd1);
assign indvars_iv_next31_i_mid1_fu_168_p2 = (v786310_fu_72 + 7'd2);
assign p_shl_fu_244_p3 = {{v7863_reg_337_pp0_iter2_reg}, {7'd0}};
assign select_ln12247_1_fu_174_p3 = ((ap_phi_mux_icmp_ln1224813_phi_fu_121_p4[0:0] == 1'b1) ? indvars_iv_next31_i_mid1_fu_168_p2 : indvars_iv_next31_i12_fu_80);
assign select_ln12247_fu_160_p3 = ((ap_phi_mux_icmp_ln1224813_phi_fu_121_p4[0:0] == 1'b1) ? 7'd0 : v786411_fu_76);
assign sub_ln12250_fu_262_p2 = (p_shl_fu_244_p3 - zext_ln12250_fu_258_p1);
assign tmp_fu_251_p3 = {{v7863_reg_337_pp0_iter2_reg}, {4'd0}};
assign v7863_fu_182_p3 = ((ap_phi_mux_icmp_ln1224813_phi_fu_121_p4[0:0] == 1'b1) ? indvars_iv_next31_i12_fu_80 : v786310_fu_72);
assign v7864_fu_194_p2 = (select_ln12247_fu_160_p3 + 7'd1);
assign v7952_i_address0 = zext_ln12250_2_fu_277_p1;
assign v7952_i_ce0 = v7952_i_ce0_local;
assign v9204_address0 = zext_ln12251_3_fu_285_p1;
assign v9204_ce0 = v9204_ce0_local;
assign v9204_d0 = v7952_i_q0;
assign v9204_we0 = v9204_we0_local;
assign zext_ln12250_1_fu_268_p1 = select_ln12247_reg_332_pp0_iter2_reg;
assign zext_ln12250_2_fu_277_p1 = add_ln12250_fu_271_p2;
assign zext_ln12250_fu_258_p1 = tmp_fu_251_p3;
assign zext_ln12251_3_fu_285_p1 = grp_fu_289_p4;
endmodule 