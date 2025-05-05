module backprop_backprop_Pipeline_label_21_label_22 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v20_address0,v20_ce0,v20_q0,v11_3_address0,v11_3_ce0,v11_3_we0,v11_3_d0,v11_3_address1,v11_3_ce1,v11_3_we1,v11_3_d1,v11_2_address0,v11_2_ce0,v11_2_we0,v11_2_d0,v11_2_address1,v11_2_ce1,v11_2_we1,v11_2_d1,v11_1_address0,v11_1_ce0,v11_1_we0,v11_1_d0,v11_1_address1,v11_1_ce1,v11_1_we1,v11_1_d1,v11_address0,v11_ce0,v11_we0,v11_d0,v11_address1,v11_ce1,v11_we1,v11_d1,v8_address0,v8_ce0,v8_q0,v8_address1,v8_ce1,v8_q1,v8_1_address0,v8_1_ce0,v8_1_q0,v8_1_address1,v8_1_ce1,v8_1_q1,v8_2_address0,v8_2_ce0,v8_2_q0,v8_2_address1,v8_2_ce1,v8_2_q1,v8_3_address0,v8_3_ce0,v8_3_q0,v8_3_address1,v8_3_ce1,v8_3_q1,grp_fu_3710_p_din0,grp_fu_3710_p_din1,grp_fu_3710_p_dout0,grp_fu_3710_p_ce,grp_fu_3714_p_din0,grp_fu_3714_p_din1,grp_fu_3714_p_dout0,grp_fu_3714_p_ce,grp_fu_3718_p_din0,grp_fu_3718_p_din1,grp_fu_3718_p_dout0,grp_fu_3718_p_ce,grp_fu_7851_p_din0,grp_fu_7851_p_din1,grp_fu_7851_p_dout0,grp_fu_7851_p_ce,grp_fu_7855_p_din0,grp_fu_7855_p_din1,grp_fu_7855_p_dout0,grp_fu_7855_p_ce,grp_fu_7859_p_din0,grp_fu_7859_p_din1,grp_fu_7859_p_dout0,grp_fu_7859_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v20_address0;
output   v20_ce0;
input  [63:0] v20_q0;
output  [9:0] v11_3_address0;
output   v11_3_ce0;
output   v11_3_we0;
output  [63:0] v11_3_d0;
output  [9:0] v11_3_address1;
output   v11_3_ce1;
output   v11_3_we1;
output  [63:0] v11_3_d1;
output  [9:0] v11_2_address0;
output   v11_2_ce0;
output   v11_2_we0;
output  [63:0] v11_2_d0;
output  [9:0] v11_2_address1;
output   v11_2_ce1;
output   v11_2_we1;
output  [63:0] v11_2_d1;
output  [9:0] v11_1_address0;
output   v11_1_ce0;
output   v11_1_we0;
output  [63:0] v11_1_d0;
output  [9:0] v11_1_address1;
output   v11_1_ce1;
output   v11_1_we1;
output  [63:0] v11_1_d1;
output  [9:0] v11_address0;
output   v11_ce0;
output   v11_we0;
output  [63:0] v11_d0;
output  [9:0] v11_address1;
output   v11_ce1;
output   v11_we1;
output  [63:0] v11_d1;
output  [3:0] v8_address0;
output   v8_ce0;
input  [63:0] v8_q0;
output  [3:0] v8_address1;
output   v8_ce1;
input  [63:0] v8_q1;
output  [3:0] v8_1_address0;
output   v8_1_ce0;
input  [63:0] v8_1_q0;
output  [3:0] v8_1_address1;
output   v8_1_ce1;
input  [63:0] v8_1_q1;
output  [3:0] v8_2_address0;
output   v8_2_ce0;
input  [63:0] v8_2_q0;
output  [3:0] v8_2_address1;
output   v8_2_ce1;
input  [63:0] v8_2_q1;
output  [3:0] v8_3_address0;
output   v8_3_ce0;
input  [63:0] v8_3_q0;
output  [3:0] v8_3_address1;
output   v8_3_ce1;
input  [63:0] v8_3_q1;
output  [63:0] grp_fu_3710_p_din0;
output  [63:0] grp_fu_3710_p_din1;
input  [63:0] grp_fu_3710_p_dout0;
output   grp_fu_3710_p_ce;
output  [63:0] grp_fu_3714_p_din0;
output  [63:0] grp_fu_3714_p_din1;
input  [63:0] grp_fu_3714_p_dout0;
output   grp_fu_3714_p_ce;
output  [63:0] grp_fu_3718_p_din0;
output  [63:0] grp_fu_3718_p_din1;
input  [63:0] grp_fu_3718_p_dout0;
output   grp_fu_3718_p_ce;
output  [63:0] grp_fu_7851_p_din0;
output  [63:0] grp_fu_7851_p_din1;
input  [63:0] grp_fu_7851_p_dout0;
output   grp_fu_7851_p_ce;
output  [63:0] grp_fu_7855_p_din0;
output  [63:0] grp_fu_7855_p_din1;
input  [63:0] grp_fu_7855_p_dout0;
output   grp_fu_7855_p_ce;
output  [63:0] grp_fu_7859_p_din0;
output  [63:0] grp_fu_7859_p_din1;
input  [63:0] grp_fu_7859_p_dout0;
output   grp_fu_7859_p_ce;
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
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln210_fu_347_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] lshr_ln1_fu_405_p4;
reg   [3:0] lshr_ln1_reg_528;
reg   [3:0] lshr_ln1_reg_528_pp0_iter2_reg;
reg   [3:0] lshr_ln1_reg_528_pp0_iter3_reg;
reg   [3:0] lshr_ln1_reg_528_pp0_iter4_reg;
reg   [3:0] lshr_ln1_reg_528_pp0_iter5_reg;
reg   [3:0] lshr_ln1_reg_528_pp0_iter6_reg;
reg   [3:0] lshr_ln1_reg_528_pp0_iter7_reg;
reg   [3:0] lshr_ln1_reg_528_pp0_iter8_reg;
reg   [3:0] lshr_ln1_reg_528_pp0_iter9_reg;
wire   [5:0] trunc_ln215_fu_423_p1;
reg   [5:0] trunc_ln215_reg_538;
reg   [5:0] trunc_ln215_reg_538_pp0_iter2_reg;
reg   [5:0] trunc_ln215_reg_538_pp0_iter3_reg;
reg   [5:0] trunc_ln215_reg_538_pp0_iter4_reg;
reg   [5:0] trunc_ln215_reg_538_pp0_iter5_reg;
reg   [5:0] trunc_ln215_reg_538_pp0_iter6_reg;
reg   [5:0] trunc_ln215_reg_538_pp0_iter7_reg;
reg   [5:0] trunc_ln215_reg_538_pp0_iter8_reg;
reg   [5:0] trunc_ln215_reg_538_pp0_iter9_reg;
reg   [5:0] trunc_ln215_reg_538_pp0_iter10_reg;
reg   [2:0] tmp_s_reg_559;
reg   [2:0] tmp_s_reg_559_pp0_iter2_reg;
reg   [2:0] tmp_s_reg_559_pp0_iter3_reg;
reg   [2:0] tmp_s_reg_559_pp0_iter4_reg;
reg   [2:0] tmp_s_reg_559_pp0_iter5_reg;
reg   [2:0] tmp_s_reg_559_pp0_iter6_reg;
reg   [2:0] tmp_s_reg_559_pp0_iter7_reg;
reg   [2:0] tmp_s_reg_559_pp0_iter8_reg;
reg   [2:0] tmp_s_reg_559_pp0_iter9_reg;
reg   [2:0] tmp_s_reg_559_pp0_iter10_reg;
reg   [63:0] v126_reg_565;
reg   [63:0] v126_reg_565_pp0_iter3_reg;
reg   [63:0] v128_reg_577;
reg   [63:0] v128_8_reg_602;
reg   [63:0] v128_9_reg_607;
reg   [63:0] v128_10_reg_612;
reg   [63:0] v128_11_reg_617;
reg   [63:0] v128_12_reg_622;
reg   [63:0] v128_13_reg_627;
reg   [63:0] v128_7_reg_632;
reg   [63:0] v129_reg_637;
reg   [63:0] v129_1_reg_642;
reg   [63:0] v129_2_reg_647;
reg   [63:0] v129_3_reg_652;
reg   [63:0] v129_4_reg_657;
reg   [63:0] v129_5_reg_662;
wire   [63:0] grp_fu_321_p2;
reg   [63:0] v129_6_reg_667;
wire   [63:0] grp_fu_325_p2;
reg   [63:0] v129_7_reg_672;
wire   [63:0] zext_ln210_fu_400_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln212_fu_415_p1;
wire   [63:0] zext_ln213_fu_460_p1;
wire   [63:0] zext_ln215_fu_474_p1;
wire   [63:0] zext_ln215_1_fu_490_p1;
reg   [6:0] v127_fu_72;
wire   [6:0] add_ln212_fu_437_p2;
wire    ap_loop_init;
reg   [6:0] v125_fu_76;
wire   [6:0] select_ln210_1_fu_392_p3;
reg   [9:0] indvar_flatten6_fu_80;
wire   [9:0] add_ln210_fu_353_p2;
reg   [9:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    v20_ce0_local;
reg    v8_ce1_local;
reg    v8_ce0_local;
reg    v8_1_ce1_local;
reg    v8_1_ce0_local;
reg    v8_2_ce1_local;
reg    v8_2_ce0_local;
reg    v8_3_ce1_local;
reg    v8_3_ce0_local;
reg    v11_we1_local;
reg    v11_ce1_local;
reg    v11_we0_local;
reg    v11_ce0_local;
reg    v11_1_we1_local;
reg    v11_1_ce1_local;
reg    v11_1_we0_local;
reg    v11_1_ce0_local;
reg    v11_2_we1_local;
reg    v11_2_ce1_local;
reg    v11_2_we0_local;
reg    v11_2_ce0_local;
reg    v11_3_we1_local;
reg    v11_3_ce1_local;
reg    v11_3_we0_local;
reg    v11_3_ce0_local;
wire   [0:0] tmp_fu_370_p3;
wire   [6:0] add_ln210_1_fu_386_p2;
wire   [6:0] select_ln210_fu_378_p3;
wire   [3:0] or_ln3_fu_453_p3;
wire   [9:0] add_ln_fu_468_p3;
wire   [9:0] add_ln215_1_fu_482_p4;
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
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
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
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 v127_fu_72 = 7'd0;
#0 v125_fu_76 = 7'd0;
#0 indvar_flatten6_fu_80 = 10'd0;
#0 ap_done_reg = 1'b0;
end
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U342(.clk(ap_clk),.reset(ap_rst),.din0(v126_reg_565_pp0_iter3_reg),.din1(v128_13_reg_627),.ce(1'b1),.dout(grp_fu_321_p2));
backprop_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U343(.clk(ap_clk),.reset(ap_rst),.din0(v126_reg_565_pp0_iter3_reg),.din1(v128_7_reg_632),.ce(1'b1),.dout(grp_fu_325_p2));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
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
        if (((icmp_ln210_fu_347_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten6_fu_80 <= add_ln210_fu_353_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_80 <= 10'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v125_fu_76 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v125_fu_76 <= select_ln210_1_fu_392_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            v127_fu_72 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            v127_fu_72 <= add_ln212_fu_437_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        lshr_ln1_reg_528_pp0_iter2_reg <= lshr_ln1_reg_528;
        lshr_ln1_reg_528_pp0_iter3_reg <= lshr_ln1_reg_528_pp0_iter2_reg;
        lshr_ln1_reg_528_pp0_iter4_reg <= lshr_ln1_reg_528_pp0_iter3_reg;
        lshr_ln1_reg_528_pp0_iter5_reg <= lshr_ln1_reg_528_pp0_iter4_reg;
        lshr_ln1_reg_528_pp0_iter6_reg <= lshr_ln1_reg_528_pp0_iter5_reg;
        lshr_ln1_reg_528_pp0_iter7_reg <= lshr_ln1_reg_528_pp0_iter6_reg;
        lshr_ln1_reg_528_pp0_iter8_reg <= lshr_ln1_reg_528_pp0_iter7_reg;
        lshr_ln1_reg_528_pp0_iter9_reg <= lshr_ln1_reg_528_pp0_iter8_reg;
        tmp_s_reg_559_pp0_iter10_reg <= tmp_s_reg_559_pp0_iter9_reg;
        tmp_s_reg_559_pp0_iter2_reg <= tmp_s_reg_559;
        tmp_s_reg_559_pp0_iter3_reg <= tmp_s_reg_559_pp0_iter2_reg;
        tmp_s_reg_559_pp0_iter4_reg <= tmp_s_reg_559_pp0_iter3_reg;
        tmp_s_reg_559_pp0_iter5_reg <= tmp_s_reg_559_pp0_iter4_reg;
        tmp_s_reg_559_pp0_iter6_reg <= tmp_s_reg_559_pp0_iter5_reg;
        tmp_s_reg_559_pp0_iter7_reg <= tmp_s_reg_559_pp0_iter6_reg;
        tmp_s_reg_559_pp0_iter8_reg <= tmp_s_reg_559_pp0_iter7_reg;
        tmp_s_reg_559_pp0_iter9_reg <= tmp_s_reg_559_pp0_iter8_reg;
        trunc_ln215_reg_538_pp0_iter10_reg <= trunc_ln215_reg_538_pp0_iter9_reg;
        trunc_ln215_reg_538_pp0_iter2_reg <= trunc_ln215_reg_538;
        trunc_ln215_reg_538_pp0_iter3_reg <= trunc_ln215_reg_538_pp0_iter2_reg;
        trunc_ln215_reg_538_pp0_iter4_reg <= trunc_ln215_reg_538_pp0_iter3_reg;
        trunc_ln215_reg_538_pp0_iter5_reg <= trunc_ln215_reg_538_pp0_iter4_reg;
        trunc_ln215_reg_538_pp0_iter6_reg <= trunc_ln215_reg_538_pp0_iter5_reg;
        trunc_ln215_reg_538_pp0_iter7_reg <= trunc_ln215_reg_538_pp0_iter6_reg;
        trunc_ln215_reg_538_pp0_iter8_reg <= trunc_ln215_reg_538_pp0_iter7_reg;
        trunc_ln215_reg_538_pp0_iter9_reg <= trunc_ln215_reg_538_pp0_iter8_reg;
        v126_reg_565 <= v20_q0;
        v126_reg_565_pp0_iter3_reg <= v126_reg_565;
        v129_1_reg_642 <= grp_fu_3714_p_dout0;
        v129_2_reg_647 <= grp_fu_3718_p_dout0;
        v129_3_reg_652 <= grp_fu_7851_p_dout0;
        v129_4_reg_657 <= grp_fu_7855_p_dout0;
        v129_5_reg_662 <= grp_fu_7859_p_dout0;
        v129_6_reg_667 <= grp_fu_321_p2;
        v129_7_reg_672 <= grp_fu_325_p2;
        v129_reg_637 <= grp_fu_3710_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln1_reg_528 <= {{select_ln210_fu_378_p3[5:2]}};
        tmp_s_reg_559 <= {{select_ln210_fu_378_p3[5:3]}};
        trunc_ln215_reg_538 <= trunc_ln215_fu_423_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v128_10_reg_612 <= v8_3_q1;
        v128_8_reg_602 <= v8_1_q1;
        v128_9_reg_607 <= v8_2_q1;
        v128_reg_577 <= v8_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        v128_11_reg_617 <= v8_q0;
        v128_12_reg_622 <= v8_1_q0;
        v128_13_reg_627 <= v8_2_q0;
        v128_7_reg_632 <= v8_3_q0;
    end
end
always @ (*) begin
    if (((icmp_ln210_fu_347_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter10_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten6_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_1_ce0_local = 1'b1;
    end else begin
        v11_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_1_ce1_local = 1'b1;
    end else begin
        v11_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_1_we0_local = 1'b1;
    end else begin
        v11_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_1_we1_local = 1'b1;
    end else begin
        v11_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_2_ce0_local = 1'b1;
    end else begin
        v11_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_2_ce1_local = 1'b1;
    end else begin
        v11_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_2_we0_local = 1'b1;
    end else begin
        v11_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_2_we1_local = 1'b1;
    end else begin
        v11_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_3_ce0_local = 1'b1;
    end else begin
        v11_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_3_ce1_local = 1'b1;
    end else begin
        v11_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_3_we0_local = 1'b1;
    end else begin
        v11_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_3_we1_local = 1'b1;
    end else begin
        v11_3_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_ce0_local = 1'b1;
    end else begin
        v11_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_ce1_local = 1'b1;
    end else begin
        v11_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter11 == 1'b1))) begin
        v11_we0_local = 1'b1;
    end else begin
        v11_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v11_we1_local = 1'b1;
    end else begin
        v11_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8_1_ce0_local = 1'b1;
    end else begin
        v8_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_1_ce1_local = 1'b1;
    end else begin
        v8_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8_2_ce0_local = 1'b1;
    end else begin
        v8_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_2_ce1_local = 1'b1;
    end else begin
        v8_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8_3_ce0_local = 1'b1;
    end else begin
        v8_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_3_ce1_local = 1'b1;
    end else begin
        v8_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v8_ce0_local = 1'b1;
    end else begin
        v8_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
assign add_ln210_1_fu_386_p2 = (v125_fu_76 + 7'd1);
assign add_ln210_fu_353_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 10'd1);
assign add_ln212_fu_437_p2 = (select_ln210_fu_378_p3 + 7'd8);
assign add_ln215_1_fu_482_p4 = {{{trunc_ln215_reg_538_pp0_iter10_reg}, {tmp_s_reg_559_pp0_iter10_reg}}, {1'd1}};
assign add_ln_fu_468_p3 = {{trunc_ln215_reg_538_pp0_iter9_reg}, {lshr_ln1_reg_528_pp0_iter9_reg}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_3710_p_ce = 1'b1;
assign grp_fu_3710_p_din0 = v126_reg_565;
assign grp_fu_3710_p_din1 = v128_reg_577;
assign grp_fu_3714_p_ce = 1'b1;
assign grp_fu_3714_p_din0 = v126_reg_565;
assign grp_fu_3714_p_din1 = v128_8_reg_602;
assign grp_fu_3718_p_ce = 1'b1;
assign grp_fu_3718_p_din0 = v126_reg_565;
assign grp_fu_3718_p_din1 = v128_9_reg_607;
assign grp_fu_7851_p_ce = 1'b1;
assign grp_fu_7851_p_din0 = v126_reg_565;
assign grp_fu_7851_p_din1 = v128_10_reg_612;
assign grp_fu_7855_p_ce = 1'b1;
assign grp_fu_7855_p_din0 = v126_reg_565_pp0_iter3_reg;
assign grp_fu_7855_p_din1 = v128_11_reg_617;
assign grp_fu_7859_p_ce = 1'b1;
assign grp_fu_7859_p_din0 = v126_reg_565_pp0_iter3_reg;
assign grp_fu_7859_p_din1 = v128_12_reg_622;
assign icmp_ln210_fu_347_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 10'd512) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_405_p4 = {{select_ln210_fu_378_p3[5:2]}};
assign or_ln3_fu_453_p3 = {{tmp_s_reg_559}, {1'd1}};
assign select_ln210_1_fu_392_p3 = ((tmp_fu_370_p3[0:0] == 1'b1) ? add_ln210_1_fu_386_p2 : v125_fu_76);
assign select_ln210_fu_378_p3 = ((tmp_fu_370_p3[0:0] == 1'b1) ? 7'd0 : v127_fu_72);
assign tmp_fu_370_p3 = v127_fu_72[32'd6];
assign trunc_ln215_fu_423_p1 = select_ln210_1_fu_392_p3[5:0];
assign v11_1_address0 = zext_ln215_1_fu_490_p1;
assign v11_1_address1 = zext_ln215_fu_474_p1;
assign v11_1_ce0 = v11_1_ce0_local;
assign v11_1_ce1 = v11_1_ce1_local;
assign v11_1_d0 = v129_5_reg_662;
assign v11_1_d1 = v129_1_reg_642;
assign v11_1_we0 = v11_1_we0_local;
assign v11_1_we1 = v11_1_we1_local;
assign v11_2_address0 = zext_ln215_1_fu_490_p1;
assign v11_2_address1 = zext_ln215_fu_474_p1;
assign v11_2_ce0 = v11_2_ce0_local;
assign v11_2_ce1 = v11_2_ce1_local;
assign v11_2_d0 = v129_6_reg_667;
assign v11_2_d1 = v129_2_reg_647;
assign v11_2_we0 = v11_2_we0_local;
assign v11_2_we1 = v11_2_we1_local;
assign v11_3_address0 = zext_ln215_1_fu_490_p1;
assign v11_3_address1 = zext_ln215_fu_474_p1;
assign v11_3_ce0 = v11_3_ce0_local;
assign v11_3_ce1 = v11_3_ce1_local;
assign v11_3_d0 = v129_7_reg_672;
assign v11_3_d1 = v129_3_reg_652;
assign v11_3_we0 = v11_3_we0_local;
assign v11_3_we1 = v11_3_we1_local;
assign v11_address0 = zext_ln215_1_fu_490_p1;
assign v11_address1 = zext_ln215_fu_474_p1;
assign v11_ce0 = v11_ce0_local;
assign v11_ce1 = v11_ce1_local;
assign v11_d0 = v129_4_reg_657;
assign v11_d1 = v129_reg_637;
assign v11_we0 = v11_we0_local;
assign v11_we1 = v11_we1_local;
assign v20_address0 = zext_ln210_fu_400_p1;
assign v20_ce0 = v20_ce0_local;
assign v8_1_address0 = zext_ln213_fu_460_p1;
assign v8_1_address1 = zext_ln212_fu_415_p1;
assign v8_1_ce0 = v8_1_ce0_local;
assign v8_1_ce1 = v8_1_ce1_local;
assign v8_2_address0 = zext_ln213_fu_460_p1;
assign v8_2_address1 = zext_ln212_fu_415_p1;
assign v8_2_ce0 = v8_2_ce0_local;
assign v8_2_ce1 = v8_2_ce1_local;
assign v8_3_address0 = zext_ln213_fu_460_p1;
assign v8_3_address1 = zext_ln212_fu_415_p1;
assign v8_3_ce0 = v8_3_ce0_local;
assign v8_3_ce1 = v8_3_ce1_local;
assign v8_address0 = zext_ln213_fu_460_p1;
assign v8_address1 = zext_ln212_fu_415_p1;
assign v8_ce0 = v8_ce0_local;
assign v8_ce1 = v8_ce1_local;
assign zext_ln210_fu_400_p1 = select_ln210_1_fu_392_p3;
assign zext_ln212_fu_415_p1 = lshr_ln1_fu_405_p4;
assign zext_ln213_fu_460_p1 = or_ln3_fu_453_p3;
assign zext_ln215_1_fu_490_p1 = add_ln215_1_fu_482_p4;
assign zext_ln215_fu_474_p1 = add_ln_fu_468_p3;
endmodule 