module bicg_bicg_Pipeline_lp1_lp2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_r_address0,buff_r_ce0,buff_r_q0,buff_r_1_address0,buff_r_1_ce0,buff_r_1_q0,buff_A_address0,buff_A_ce0,buff_A_q0,buff_A_1_address0,buff_A_1_ce0,buff_A_1_q0,buff_s_out_address0,buff_s_out_ce0,buff_s_out_we0,buff_s_out_d0,buff_s_out_address1,buff_s_out_ce1,buff_s_out_q1,buff_s_out_1_address0,buff_s_out_1_ce0,buff_s_out_1_we0,buff_s_out_1_d0,buff_s_out_1_address1,buff_s_out_1_ce1,buff_s_out_1_q1,grp_fu_385_p_din0,grp_fu_385_p_din1,grp_fu_385_p_opcode,grp_fu_385_p_dout0,grp_fu_385_p_ce,grp_fu_389_p_din0,grp_fu_389_p_din1,grp_fu_389_p_dout0,grp_fu_389_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] buff_r_address0;
output   buff_r_ce0;
input  [31:0] buff_r_q0;
output  [4:0] buff_r_1_address0;
output   buff_r_1_ce0;
input  [31:0] buff_r_1_q0;
output  [10:0] buff_A_address0;
output   buff_A_ce0;
input  [31:0] buff_A_q0;
output  [10:0] buff_A_1_address0;
output   buff_A_1_ce0;
input  [31:0] buff_A_1_q0;
output  [4:0] buff_s_out_address0;
output   buff_s_out_ce0;
output   buff_s_out_we0;
output  [31:0] buff_s_out_d0;
output  [4:0] buff_s_out_address1;
output   buff_s_out_ce1;
input  [31:0] buff_s_out_q1;
output  [4:0] buff_s_out_1_address0;
output   buff_s_out_1_ce0;
output   buff_s_out_1_we0;
output  [31:0] buff_s_out_1_d0;
output  [4:0] buff_s_out_1_address1;
output   buff_s_out_1_ce1;
input  [31:0] buff_s_out_1_q1;
output  [31:0] grp_fu_385_p_din0;
output  [31:0] grp_fu_385_p_din1;
output  [1:0] grp_fu_385_p_opcode;
input  [31:0] grp_fu_385_p_dout0;
output   grp_fu_385_p_ce;
output  [31:0] grp_fu_389_p_din0;
output  [31:0] grp_fu_389_p_din1;
input  [31:0] grp_fu_389_p_dout0;
output   grp_fu_389_p_ce;
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
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_enable_reg_pp0_iter14;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln23_fu_186_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln23_1_fu_243_p1;
reg   [0:0] trunc_ln23_1_reg_340;
wire   [4:0] lshr_ln5_3_fu_263_p4;
reg   [4:0] lshr_ln5_3_reg_355;
reg   [4:0] lshr_ln5_3_reg_355_pp0_iter2_reg;
reg   [4:0] lshr_ln5_3_reg_355_pp0_iter3_reg;
reg   [4:0] lshr_ln5_3_reg_355_pp0_iter4_reg;
wire   [31:0] tmp_fu_303_p3;
reg   [31:0] tmp_reg_370;
reg   [31:0] buff_A_load_reg_376;
reg   [31:0] buff_A_1_load_reg_381;
reg   [4:0] buff_s_out_addr_reg_386;
reg   [4:0] buff_s_out_addr_reg_386_pp0_iter6_reg;
reg   [4:0] buff_s_out_addr_reg_386_pp0_iter7_reg;
reg   [4:0] buff_s_out_addr_reg_386_pp0_iter8_reg;
reg   [4:0] buff_s_out_addr_reg_386_pp0_iter9_reg;
reg   [4:0] buff_s_out_addr_reg_386_pp0_iter10_reg;
reg   [4:0] buff_s_out_addr_reg_386_pp0_iter11_reg;
reg   [4:0] buff_s_out_addr_reg_386_pp0_iter12_reg;
reg   [4:0] buff_s_out_addr_reg_386_pp0_iter13_reg;
reg   [4:0] buff_s_out_1_addr_reg_392;
reg   [4:0] buff_s_out_1_addr_reg_392_pp0_iter6_reg;
reg   [4:0] buff_s_out_1_addr_reg_392_pp0_iter7_reg;
reg   [4:0] buff_s_out_1_addr_reg_392_pp0_iter8_reg;
reg   [4:0] buff_s_out_1_addr_reg_392_pp0_iter9_reg;
reg   [4:0] buff_s_out_1_addr_reg_392_pp0_iter10_reg;
reg   [4:0] buff_s_out_1_addr_reg_392_pp0_iter11_reg;
reg   [4:0] buff_s_out_1_addr_reg_392_pp0_iter12_reg;
reg   [4:0] buff_s_out_1_addr_reg_392_pp0_iter13_reg;
reg   [31:0] buff_s_out_load_reg_398;
reg   [31:0] mul_reg_403;
wire   [31:0] grp_fu_164_p2;
reg   [31:0] mul_1_reg_408;
reg   [31:0] buff_s_out_1_load_reg_413;
reg   [31:0] add_reg_418;
wire   [31:0] grp_fu_156_p2;
reg   [31:0] add_1_reg_423;
wire   [63:0] zext_ln5_1_fu_257_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln25_fu_281_p1;
wire   [63:0] zext_ln5_fu_310_p1;
reg   [6:0] j_fu_54;
wire   [6:0] add_ln24_fu_287_p2;
wire    ap_loop_init;
reg   [6:0] i_1_fu_58;
wire   [6:0] select_ln23_fu_231_p3;
reg   [11:0] indvar_flatten_fu_62;
wire   [11:0] add_ln23_1_fu_192_p2;
reg   [11:0] ap_sig_allocacmp_indvar_flatten_load;
reg    buff_r_ce0_local;
reg    buff_r_1_ce0_local;
reg    buff_A_ce0_local;
reg    buff_A_1_ce0_local;
reg    buff_s_out_ce1_local;
reg    buff_s_out_we0_local;
reg    buff_s_out_ce0_local;
reg    buff_s_out_1_ce1_local;
reg    buff_s_out_1_we0_local;
reg    buff_s_out_1_ce0_local;
wire   [0:0] tmp_2_fu_215_p3;
wire   [6:0] add_ln23_fu_209_p2;
wire   [4:0] lshr_ln5_1_fu_247_p4;
wire   [6:0] select_ln5_fu_223_p3;
wire   [5:0] trunc_ln23_fu_239_p1;
wire   [10:0] tmp_1_fu_273_p3;
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
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg    ap_loop_exit_ready_pp0_iter13_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
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
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 ap_enable_reg_pp0_iter14 = 1'b0;
#0 j_fu_54 = 7'd0;
#0 i_1_fu_58 = 7'd0;
#0 indvar_flatten_fu_62 = 12'd0;
#0 ap_done_reg = 1'b0;
end
bicg_fadd_32ns_32ns_32_7_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_7_full_dsp_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(buff_s_out_1_load_reg_413),.din1(mul_1_reg_408),.ce(1'b1),.dout(grp_fu_156_p2));
bicg_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U9(.clk(ap_clk),.reset(ap_rst),.din0(buff_A_1_load_reg_381),.din1(tmp_reg_370),.ce(1'b1),.dout(grp_fu_164_p2));
bicg_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter14 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter14 <= ap_enable_reg_pp0_iter13;
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
        if ((ap_loop_init == 1'b1)) begin
            i_1_fu_58 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_1_fu_58 <= select_ln23_fu_231_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln23_fu_186_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_62 <= add_ln23_1_fu_192_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_62 <= 12'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_54 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_54 <= add_ln24_fu_287_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add_1_reg_423 <= grp_fu_156_p2;
        add_reg_418 <= grp_fu_385_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        buff_A_1_load_reg_381 <= buff_A_1_q0;
        buff_A_load_reg_376 <= buff_A_q0;
        buff_s_out_1_addr_reg_392 <= zext_ln5_fu_310_p1;
        buff_s_out_1_addr_reg_392_pp0_iter10_reg <= buff_s_out_1_addr_reg_392_pp0_iter9_reg;
        buff_s_out_1_addr_reg_392_pp0_iter11_reg <= buff_s_out_1_addr_reg_392_pp0_iter10_reg;
        buff_s_out_1_addr_reg_392_pp0_iter12_reg <= buff_s_out_1_addr_reg_392_pp0_iter11_reg;
        buff_s_out_1_addr_reg_392_pp0_iter13_reg <= buff_s_out_1_addr_reg_392_pp0_iter12_reg;
        buff_s_out_1_addr_reg_392_pp0_iter6_reg <= buff_s_out_1_addr_reg_392;
        buff_s_out_1_addr_reg_392_pp0_iter7_reg <= buff_s_out_1_addr_reg_392_pp0_iter6_reg;
        buff_s_out_1_addr_reg_392_pp0_iter8_reg <= buff_s_out_1_addr_reg_392_pp0_iter7_reg;
        buff_s_out_1_addr_reg_392_pp0_iter9_reg <= buff_s_out_1_addr_reg_392_pp0_iter8_reg;
        buff_s_out_addr_reg_386 <= zext_ln5_fu_310_p1;
        buff_s_out_addr_reg_386_pp0_iter10_reg <= buff_s_out_addr_reg_386_pp0_iter9_reg;
        buff_s_out_addr_reg_386_pp0_iter11_reg <= buff_s_out_addr_reg_386_pp0_iter10_reg;
        buff_s_out_addr_reg_386_pp0_iter12_reg <= buff_s_out_addr_reg_386_pp0_iter11_reg;
        buff_s_out_addr_reg_386_pp0_iter13_reg <= buff_s_out_addr_reg_386_pp0_iter12_reg;
        buff_s_out_addr_reg_386_pp0_iter6_reg <= buff_s_out_addr_reg_386;
        buff_s_out_addr_reg_386_pp0_iter7_reg <= buff_s_out_addr_reg_386_pp0_iter6_reg;
        buff_s_out_addr_reg_386_pp0_iter8_reg <= buff_s_out_addr_reg_386_pp0_iter7_reg;
        buff_s_out_addr_reg_386_pp0_iter9_reg <= buff_s_out_addr_reg_386_pp0_iter8_reg;
        lshr_ln5_3_reg_355_pp0_iter2_reg <= lshr_ln5_3_reg_355;
        lshr_ln5_3_reg_355_pp0_iter3_reg <= lshr_ln5_3_reg_355_pp0_iter2_reg;
        lshr_ln5_3_reg_355_pp0_iter4_reg <= lshr_ln5_3_reg_355_pp0_iter3_reg;
        mul_1_reg_408 <= grp_fu_164_p2;
        mul_reg_403 <= grp_fu_389_p_dout0;
        tmp_reg_370 <= tmp_fu_303_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln5_3_reg_355 <= {{select_ln5_fu_223_p3[5:1]}};
        trunc_ln23_1_reg_340 <= trunc_ln23_1_fu_243_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        buff_s_out_1_load_reg_413 <= buff_s_out_1_q1;
        buff_s_out_load_reg_398 <= buff_s_out_q1;
    end
end
always @ (*) begin
    if (((icmp_ln23_fu_186_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter13_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = 12'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_1_ce0_local = 1'b1;
    end else begin
        buff_A_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_A_ce0_local = 1'b1;
    end else begin
        buff_A_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_1_ce0_local = 1'b1;
    end else begin
        buff_r_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        buff_r_ce0_local = 1'b1;
    end else begin
        buff_r_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_1_ce0_local = 1'b1;
    end else begin
        buff_s_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_s_out_1_ce1_local = 1'b1;
    end else begin
        buff_s_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_1_we0_local = 1'b1;
    end else begin
        buff_s_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_ce0_local = 1'b1;
    end else begin
        buff_s_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        buff_s_out_ce1_local = 1'b1;
    end else begin
        buff_s_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter14 == 1'b1))) begin
        buff_s_out_we0_local = 1'b1;
    end else begin
        buff_s_out_we0_local = 1'b0;
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
assign add_ln23_1_fu_192_p2 = (ap_sig_allocacmp_indvar_flatten_load + 12'd1);
assign add_ln23_fu_209_p2 = (i_1_fu_58 + 7'd1);
assign add_ln24_fu_287_p2 = (select_ln5_fu_223_p3 + 7'd2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign buff_A_1_address0 = zext_ln25_fu_281_p1;
assign buff_A_1_ce0 = buff_A_1_ce0_local;
assign buff_A_address0 = zext_ln25_fu_281_p1;
assign buff_A_ce0 = buff_A_ce0_local;
assign buff_r_1_address0 = zext_ln5_1_fu_257_p1;
assign buff_r_1_ce0 = buff_r_1_ce0_local;
assign buff_r_address0 = zext_ln5_1_fu_257_p1;
assign buff_r_ce0 = buff_r_ce0_local;
assign buff_s_out_1_address0 = buff_s_out_1_addr_reg_392_pp0_iter13_reg;
assign buff_s_out_1_address1 = zext_ln5_fu_310_p1;
assign buff_s_out_1_ce0 = buff_s_out_1_ce0_local;
assign buff_s_out_1_ce1 = buff_s_out_1_ce1_local;
assign buff_s_out_1_d0 = add_1_reg_423;
assign buff_s_out_1_we0 = buff_s_out_1_we0_local;
assign buff_s_out_address0 = buff_s_out_addr_reg_386_pp0_iter13_reg;
assign buff_s_out_address1 = zext_ln5_fu_310_p1;
assign buff_s_out_ce0 = buff_s_out_ce0_local;
assign buff_s_out_ce1 = buff_s_out_ce1_local;
assign buff_s_out_d0 = add_reg_418;
assign buff_s_out_we0 = buff_s_out_we0_local;
assign grp_fu_385_p_ce = 1'b1;
assign grp_fu_385_p_din0 = buff_s_out_load_reg_398;
assign grp_fu_385_p_din1 = mul_reg_403;
assign grp_fu_385_p_opcode = 2'd0;
assign grp_fu_389_p_ce = 1'b1;
assign grp_fu_389_p_din0 = buff_A_load_reg_376;
assign grp_fu_389_p_din1 = tmp_reg_370;
assign icmp_ln23_fu_186_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 12'd2048) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_247_p4 = {{select_ln23_fu_231_p3[5:1]}};
assign lshr_ln5_3_fu_263_p4 = {{select_ln5_fu_223_p3[5:1]}};
assign select_ln23_fu_231_p3 = ((tmp_2_fu_215_p3[0:0] == 1'b1) ? add_ln23_fu_209_p2 : i_1_fu_58);
assign select_ln5_fu_223_p3 = ((tmp_2_fu_215_p3[0:0] == 1'b1) ? 7'd0 : j_fu_54);
assign tmp_1_fu_273_p3 = {{trunc_ln23_fu_239_p1}, {lshr_ln5_3_fu_263_p4}};
assign tmp_2_fu_215_p3 = j_fu_54[32'd6];
assign tmp_fu_303_p3 = ((trunc_ln23_1_reg_340[0:0] == 1'b1) ? buff_r_1_q0 : buff_r_q0);
assign trunc_ln23_1_fu_243_p1 = select_ln23_fu_231_p3[0:0];
assign trunc_ln23_fu_239_p1 = select_ln23_fu_231_p3[5:0];
assign zext_ln25_fu_281_p1 = tmp_1_fu_273_p3;
assign zext_ln5_1_fu_257_p1 = lshr_ln5_1_fu_247_p4;
assign zext_ln5_fu_310_p1 = lshr_ln5_3_reg_355_pp0_iter4_reg;
endmodule 