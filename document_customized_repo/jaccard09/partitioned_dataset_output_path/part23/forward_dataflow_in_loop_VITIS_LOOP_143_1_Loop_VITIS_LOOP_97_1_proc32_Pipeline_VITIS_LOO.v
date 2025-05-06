
module forward_dataflow_in_loop_VITIS_LOOP_143_1_Loop_VITIS_LOOP_97_1_proc32_Pipeline_VITIS_LOO (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,mul_i,shl_ln,v56_address0,v56_ce0,v56_we0,v56_d0,v56_1_address0,v56_1_ce0,v56_1_we0,v56_1_d0,mul_ln97,v15427_0_address0,v15427_0_ce0,v15427_0_q0,v15427_1_address0,v15427_1_ce0,v15427_1_q0);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [9:0] mul_i;
input  [8:0] shl_ln;
output  [8:0] v56_address0;
output   v56_ce0;
output   v56_we0;
output  [7:0] v56_d0;
output  [8:0] v56_1_address0;
output   v56_1_ce0;
output   v56_1_we0;
output  [7:0] v56_1_d0;
input  [9:0] mul_ln97;
output  [18:0] v15427_0_address0;
output   v15427_0_ce0;
input  [7:0] v15427_0_q0;
output  [18:0] v15427_1_address0;
output   v15427_1_ce0;
input  [7:0] v15427_1_q0;
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
wire   [0:0] icmp_ln97_fu_284_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [4:0] select_ln97_fu_208_p3;
reg   [4:0] select_ln97_reg_387;
reg   [4:0] select_ln97_reg_387_pp0_iter1_reg;
wire   [0:0] icmp_ln98_fu_278_p2;
reg   [0:0] icmp_ln98_reg_403;
reg   [0:0] icmp_ln97_reg_408;
wire   [18:0] zext_ln101_1_fu_316_p1;
wire   [8:0] grp_fu_333_p3;
reg   [8:0] add_ln103_reg_423;
reg   [0:0] ap_phi_mux_icmp_ln9824_phi_fu_171_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln101_2_fu_320_p1;
wire   [63:0] zext_ln103_3_fu_324_p1;
wire   [63:0] zext_ln103_2_fu_328_p1;
reg   [8:0] indvar_flatten21_fu_84;
wire   [8:0] add_ln97_1_fu_272_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten21_load;
reg   [5:0] v3622_fu_88;
wire   [5:0] v36_fu_216_p3;
reg   [5:0] ap_sig_allocacmp_v3622_load;
reg   [4:0] v3723_fu_92;
wire   [4:0] v37_fu_266_p2;
reg   [4:0] ap_sig_allocacmp_v3723_load;
reg    v15427_0_ce0_local;
reg    v15427_1_ce0_local;
reg    v56_1_we0_local;
reg    v56_1_ce0_local;
reg    v56_we0_local;
reg    v56_ce0_local;
wire   [5:0] add_ln97_fu_202_p2;
wire   [4:0] lshr_ln_fu_228_p4;
wire   [9:0] zext_ln97_fu_224_p1;
wire   [9:0] empty_fu_246_p2;
wire   [8:0] tmp_s_fu_252_p4;
wire   [9:0] zext_ln98_fu_308_p1;
wire   [9:0] add_ln100_fu_311_p2;
wire   [18:0] grp_fu_341_p4;
wire   [18:0] grp_fu_352_p3;
wire   [4:0] grp_fu_333_p0;
wire   [4:0] grp_fu_333_p1;
wire   [4:0] grp_fu_333_p2;
wire   [4:0] grp_fu_341_p1;
wire   [9:0] grp_fu_341_p2;
wire   [9:0] grp_fu_341_p3;
wire   [9:0] grp_fu_352_p0;
wire   [8:0] grp_fu_352_p1;
wire   [9:0] grp_fu_352_p2;
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
wire   [8:0] grp_fu_333_p00;
wire   [8:0] grp_fu_333_p20;
wire   [8:0] grp_fu_341_p10;
wire   [18:0] grp_fu_352_p10;
reg    ap_condition_330;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 indvar_flatten21_fu_84 = 9'd0;
#0 v3622_fu_88 = 6'd0;
#0 v3723_fu_92 = 5'd0;
#0 ap_done_reg = 1'b0;
end
forward_mac_muladd_5ns_5ns_5ns_9_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 5 ),.din1_WIDTH( 5 ),.din2_WIDTH( 5 ),.dout_WIDTH( 9 ))
mac_muladd_5ns_5ns_5ns_9_4_1_U15002(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_333_p0),.din1(grp_fu_333_p1),.din2(grp_fu_333_p2),.ce(1'b1),.dout(grp_fu_333_p3));
forward_ama_addmuladd_9ns_5ns_10ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 9 ),.din1_WIDTH( 5 ),.din2_WIDTH( 10 ),.din3_WIDTH( 10 ),.dout_WIDTH( 19 ))
ama_addmuladd_9ns_5ns_10ns_10ns_19_4_1_U15003(.clk(ap_clk),.reset(ap_rst),.din0(shl_ln),.din1(grp_fu_341_p1),.din2(grp_fu_341_p2),.din3(grp_fu_341_p3),.ce(1'b1),.dout(grp_fu_341_p4));
forward_mac_muladd_10ns_9ns_10ns_19_4_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 10 ),.din1_WIDTH( 9 ),.din2_WIDTH( 10 ),.dout_WIDTH( 19 ))
mac_muladd_10ns_9ns_10ns_19_4_1_U15004(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_352_p0),.din1(grp_fu_352_p1),.din2(grp_fu_352_p2),.ce(1'b1),.dout(grp_fu_352_p3));
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
            indvar_flatten21_fu_84 <= add_ln97_1_fu_272_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten21_fu_84 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v3622_fu_88 <= v36_fu_216_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v3622_fu_88 <= 6'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            v3723_fu_92 <= v37_fu_266_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v3723_fu_92 <= 5'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        add_ln103_reg_423 <= grp_fu_333_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln97_reg_408 <= icmp_ln97_fu_284_p2;
        select_ln97_reg_387 <= select_ln97_fu_208_p3;
        select_ln97_reg_387_pp0_iter1_reg <= select_ln97_reg_387;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln98_reg_403 <= icmp_ln98_fu_278_p2;
    end
end
always @ (*) begin
    if (((icmp_ln97_fu_284_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_330)) begin
            ap_phi_mux_icmp_ln9824_phi_fu_171_p4 = icmp_ln98_reg_403;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln9824_phi_fu_171_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln9824_phi_fu_171_p4 = icmp_ln98_reg_403;
        end
    end else begin
        ap_phi_mux_icmp_ln9824_phi_fu_171_p4 = icmp_ln98_reg_403;
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
        ap_sig_allocacmp_v3622_load = 6'd0;
    end else begin
        ap_sig_allocacmp_v3622_load = v3622_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_v3723_load = 5'd0;
    end else begin
        ap_sig_allocacmp_v3723_load = v3723_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15427_0_ce0_local = 1'b1;
    end else begin
        v15427_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v15427_1_ce0_local = 1'b1;
    end else begin
        v15427_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v56_1_ce0_local = 1'b1;
    end else begin
        v56_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v56_1_we0_local = 1'b1;
    end else begin
        v56_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v56_ce0_local = 1'b1;
    end else begin
        v56_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v56_we0_local = 1'b1;
    end else begin
        v56_we0_local = 1'b0;
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
assign add_ln100_fu_311_p2 = (mul_ln97 + zext_ln98_fu_308_p1);
assign add_ln97_1_fu_272_p2 = (ap_sig_allocacmp_indvar_flatten21_load + 9'd1);
assign add_ln97_fu_202_p2 = (ap_sig_allocacmp_v3622_load + 6'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_330 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln97_reg_408 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign empty_fu_246_p2 = (mul_i + zext_ln97_fu_224_p1);
assign grp_fu_333_p0 = grp_fu_333_p00;
assign grp_fu_333_p00 = lshr_ln_fu_228_p4;
assign grp_fu_333_p1 = 9'd25;
assign grp_fu_333_p2 = grp_fu_333_p20;
assign grp_fu_333_p20 = select_ln97_reg_387_pp0_iter1_reg;
assign grp_fu_341_p1 = grp_fu_341_p10;
assign grp_fu_341_p10 = lshr_ln_fu_228_p4;
assign grp_fu_341_p2 = 19'd1000;
assign grp_fu_341_p3 = zext_ln101_1_fu_316_p1;
assign grp_fu_352_p0 = 19'd1000;
assign grp_fu_352_p1 = grp_fu_352_p10;
assign grp_fu_352_p10 = tmp_s_fu_252_p4;
assign grp_fu_352_p2 = zext_ln101_1_fu_316_p1;
assign icmp_ln97_fu_284_p2 = ((ap_sig_allocacmp_indvar_flatten21_load == 9'd399) ? 1'b1 : 1'b0);
assign icmp_ln98_fu_278_p2 = ((v37_fu_266_p2 == 5'd25) ? 1'b1 : 1'b0);
assign lshr_ln_fu_228_p4 = {{v36_fu_216_p3[5:1]}};
assign select_ln97_fu_208_p3 = ((ap_phi_mux_icmp_ln9824_phi_fu_171_p4[0:0] == 1'b1) ? 5'd0 : ap_sig_allocacmp_v3723_load);
assign tmp_s_fu_252_p4 = {{empty_fu_246_p2[9:1]}};
assign v15427_0_address0 = zext_ln101_2_fu_320_p1;
assign v15427_0_ce0 = v15427_0_ce0_local;
assign v15427_1_address0 = zext_ln103_3_fu_324_p1;
assign v15427_1_ce0 = v15427_1_ce0_local;
assign v36_fu_216_p3 = ((ap_phi_mux_icmp_ln9824_phi_fu_171_p4[0:0] == 1'b1) ? add_ln97_fu_202_p2 : ap_sig_allocacmp_v3622_load);
assign v37_fu_266_p2 = (select_ln97_fu_208_p3 + 5'd1);
assign v56_1_address0 = zext_ln103_2_fu_328_p1;
assign v56_1_ce0 = v56_1_ce0_local;
assign v56_1_d0 = v15427_0_q0;
assign v56_1_we0 = v56_1_we0_local;
assign v56_address0 = zext_ln103_2_fu_328_p1;
assign v56_ce0 = v56_ce0_local;
assign v56_d0 = v15427_1_q0;
assign v56_we0 = v56_we0_local;
assign zext_ln101_1_fu_316_p1 = add_ln100_fu_311_p2;
assign zext_ln101_2_fu_320_p1 = grp_fu_341_p4;
assign zext_ln103_2_fu_328_p1 = add_ln103_reg_423;
assign zext_ln103_3_fu_324_p1 = grp_fu_352_p3;
assign zext_ln97_fu_224_p1 = v36_fu_216_p3;
assign zext_ln98_fu_308_p1 = select_ln97_reg_387_pp0_iter1_reg;
endmodule 
