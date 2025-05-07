module syrk_syrk_Pipeline_lp4_lp5 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,buff_B_address0,buff_B_ce0,buff_B_q0,buff_C_out_address0,buff_C_out_ce0,buff_C_out_we0,buff_C_out_d0,buff_C_out_address1,buff_C_out_ce1,buff_C_out_q1,buff_C_out_1_address0,buff_C_out_1_ce0,buff_C_out_1_we0,buff_C_out_1_d0,buff_C_out_1_address1,buff_C_out_1_ce1,buff_C_out_1_q1,buff_C_out_2_address0,buff_C_out_2_ce0,buff_C_out_2_we0,buff_C_out_2_d0,buff_C_out_2_address1,buff_C_out_2_ce1,buff_C_out_2_q1,buff_C_out_3_address0,buff_C_out_3_ce0,buff_C_out_3_we0,buff_C_out_3_d0,buff_C_out_3_address1,buff_C_out_3_ce1,buff_C_out_3_q1,beta,grp_fu_1479_p_din0,grp_fu_1479_p_din1,grp_fu_1479_p_opcode,grp_fu_1479_p_dout0,grp_fu_1479_p_ce,grp_fu_1483_p_din0,grp_fu_1483_p_din1,grp_fu_1483_p_dout0,grp_fu_1483_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] buff_B_address0;
output   buff_B_ce0;
input  [31:0] buff_B_q0;
output  [9:0] buff_C_out_address0;
output   buff_C_out_ce0;
output   buff_C_out_we0;
output  [31:0] buff_C_out_d0;
output  [9:0] buff_C_out_address1;
output   buff_C_out_ce1;
input  [31:0] buff_C_out_q1;
output  [9:0] buff_C_out_1_address0;
output   buff_C_out_1_ce0;
output   buff_C_out_1_we0;
output  [31:0] buff_C_out_1_d0;
output  [9:0] buff_C_out_1_address1;
output   buff_C_out_1_ce1;
input  [31:0] buff_C_out_1_q1;
output  [9:0] buff_C_out_2_address0;
output   buff_C_out_2_ce0;
output   buff_C_out_2_we0;
output  [31:0] buff_C_out_2_d0;
output  [9:0] buff_C_out_2_address1;
output   buff_C_out_2_ce1;
input  [31:0] buff_C_out_2_q1;
output  [9:0] buff_C_out_3_address0;
output   buff_C_out_3_ce0;
output   buff_C_out_3_we0;
output  [31:0] buff_C_out_3_d0;
output  [9:0] buff_C_out_3_address1;
output   buff_C_out_3_ce1;
input  [31:0] buff_C_out_3_q1;
input  [31:0] beta;
output  [31:0] grp_fu_1479_p_din0;
output  [31:0] grp_fu_1479_p_din1;
output  [1:0] grp_fu_1479_p_opcode;
input  [31:0] grp_fu_1479_p_dout0;
output   grp_fu_1479_p_ce;
output  [31:0] grp_fu_1483_p_din0;
output  [31:0] grp_fu_1483_p_din1;
input  [31:0] grp_fu_1483_p_dout0;
output   grp_fu_1483_p_ce;
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
reg    ap_enable_reg_pp0_iter15;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln29_fu_195_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln5_fu_230_p3;
reg   [6:0] select_ln5_reg_368;
wire   [5:0] trunc_ln32_fu_246_p1;
reg   [5:0] trunc_ln32_reg_373;
reg   [5:0] trunc_ln32_reg_373_pp0_iter2_reg;
reg   [5:0] trunc_ln32_reg_373_pp0_iter3_reg;
reg   [5:0] trunc_ln32_reg_373_pp0_iter4_reg;
reg   [5:0] trunc_ln32_reg_373_pp0_iter5_reg;
wire   [1:0] trunc_ln30_fu_250_p1;
reg   [1:0] trunc_ln30_reg_379;
reg   [1:0] trunc_ln30_reg_379_pp0_iter2_reg;
reg   [1:0] trunc_ln30_reg_379_pp0_iter3_reg;
reg   [1:0] trunc_ln30_reg_379_pp0_iter4_reg;
reg   [1:0] trunc_ln30_reg_379_pp0_iter5_reg;
reg   [1:0] trunc_ln30_reg_379_pp0_iter6_reg;
reg   [1:0] trunc_ln30_reg_379_pp0_iter7_reg;
reg   [1:0] trunc_ln30_reg_379_pp0_iter8_reg;
reg   [1:0] trunc_ln30_reg_379_pp0_iter9_reg;
reg   [1:0] trunc_ln30_reg_379_pp0_iter10_reg;
reg   [1:0] trunc_ln30_reg_379_pp0_iter11_reg;
reg   [1:0] trunc_ln30_reg_379_pp0_iter12_reg;
reg   [1:0] trunc_ln30_reg_379_pp0_iter13_reg;
reg   [1:0] trunc_ln30_reg_379_pp0_iter14_reg;
reg   [3:0] lshr_ln5_4_reg_384;
reg   [3:0] lshr_ln5_4_reg_384_pp0_iter2_reg;
reg   [3:0] lshr_ln5_4_reg_384_pp0_iter3_reg;
reg   [3:0] lshr_ln5_4_reg_384_pp0_iter4_reg;
reg   [3:0] lshr_ln5_4_reg_384_pp0_iter5_reg;
reg   [31:0] buff_B_load_reg_394;
reg   [9:0] buff_C_out_addr_reg_399;
reg   [9:0] buff_C_out_addr_reg_399_pp0_iter7_reg;
reg   [9:0] buff_C_out_addr_reg_399_pp0_iter8_reg;
reg   [9:0] buff_C_out_addr_reg_399_pp0_iter9_reg;
reg   [9:0] buff_C_out_addr_reg_399_pp0_iter10_reg;
reg   [9:0] buff_C_out_addr_reg_399_pp0_iter11_reg;
reg   [9:0] buff_C_out_addr_reg_399_pp0_iter12_reg;
reg   [9:0] buff_C_out_addr_reg_399_pp0_iter13_reg;
reg   [9:0] buff_C_out_addr_reg_399_pp0_iter14_reg;
reg   [9:0] buff_C_out_1_addr_reg_405;
reg   [9:0] buff_C_out_1_addr_reg_405_pp0_iter7_reg;
reg   [9:0] buff_C_out_1_addr_reg_405_pp0_iter8_reg;
reg   [9:0] buff_C_out_1_addr_reg_405_pp0_iter9_reg;
reg   [9:0] buff_C_out_1_addr_reg_405_pp0_iter10_reg;
reg   [9:0] buff_C_out_1_addr_reg_405_pp0_iter11_reg;
reg   [9:0] buff_C_out_1_addr_reg_405_pp0_iter12_reg;
reg   [9:0] buff_C_out_1_addr_reg_405_pp0_iter13_reg;
reg   [9:0] buff_C_out_1_addr_reg_405_pp0_iter14_reg;
reg   [9:0] buff_C_out_2_addr_reg_411;
reg   [9:0] buff_C_out_2_addr_reg_411_pp0_iter7_reg;
reg   [9:0] buff_C_out_2_addr_reg_411_pp0_iter8_reg;
reg   [9:0] buff_C_out_2_addr_reg_411_pp0_iter9_reg;
reg   [9:0] buff_C_out_2_addr_reg_411_pp0_iter10_reg;
reg   [9:0] buff_C_out_2_addr_reg_411_pp0_iter11_reg;
reg   [9:0] buff_C_out_2_addr_reg_411_pp0_iter12_reg;
reg   [9:0] buff_C_out_2_addr_reg_411_pp0_iter13_reg;
reg   [9:0] buff_C_out_2_addr_reg_411_pp0_iter14_reg;
reg   [9:0] buff_C_out_3_addr_reg_417;
reg   [9:0] buff_C_out_3_addr_reg_417_pp0_iter7_reg;
reg   [9:0] buff_C_out_3_addr_reg_417_pp0_iter8_reg;
reg   [9:0] buff_C_out_3_addr_reg_417_pp0_iter9_reg;
reg   [9:0] buff_C_out_3_addr_reg_417_pp0_iter10_reg;
reg   [9:0] buff_C_out_3_addr_reg_417_pp0_iter11_reg;
reg   [9:0] buff_C_out_3_addr_reg_417_pp0_iter12_reg;
reg   [9:0] buff_C_out_3_addr_reg_417_pp0_iter13_reg;
reg   [9:0] buff_C_out_3_addr_reg_417_pp0_iter14_reg;
reg   [31:0] mul2_reg_423;
wire   [31:0] tmp_fu_315_p11;
reg   [31:0] tmp_reg_428;
reg   [31:0] add1_reg_433;
wire   [63:0] zext_ln32_2_fu_296_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln32_1_fu_307_p1;
reg   [6:0] j_fu_70;
wire   [6:0] add_ln30_fu_264_p2;
wire    ap_loop_init;
reg   [6:0] i_fu_74;
wire   [6:0] select_ln29_fu_238_p3;
reg   [12:0] indvar_flatten13_fu_78;
wire   [12:0] add_ln29_1_fu_201_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten13_load;
reg    buff_B_ce0_local;
reg    buff_C_out_ce1_local;
reg    buff_C_out_we0_local;
reg    buff_C_out_ce0_local;
reg    buff_C_out_1_ce1_local;
reg    buff_C_out_1_we0_local;
reg    buff_C_out_1_ce0_local;
reg    buff_C_out_2_ce1_local;
reg    buff_C_out_2_we0_local;
reg    buff_C_out_2_ce0_local;
reg    buff_C_out_3_ce1_local;
reg    buff_C_out_3_we0_local;
reg    buff_C_out_3_ce0_local;
wire   [0:0] icmp_ln30_fu_224_p2;
wire   [6:0] add_ln29_fu_218_p2;
wire   [11:0] tmp_7_fu_280_p3;
wire   [11:0] zext_ln32_fu_287_p1;
wire   [11:0] add_ln32_fu_290_p2;
wire   [9:0] tmp_8_fu_301_p3;
wire   [31:0] tmp_fu_315_p9;
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
reg    ap_loop_exit_ready_pp0_iter14_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_block_pp0_stage0_00001;
wire   [1:0] tmp_fu_315_p1;
wire   [1:0] tmp_fu_315_p3;
wire  signed [1:0] tmp_fu_315_p5;
wire  signed [1:0] tmp_fu_315_p7;
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
#0 ap_enable_reg_pp0_iter15 = 1'b0;
#0 j_fu_70 = 7'd0;
#0 i_fu_74 = 7'd0;
#0 indvar_flatten13_fu_78 = 13'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) syrk_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U977(.din0(buff_C_out_q1),.din1(buff_C_out_1_q1),.din2(buff_C_out_2_q1),.din3(buff_C_out_3_q1),.def(tmp_fu_315_p9),.sel(trunc_ln30_reg_379_pp0_iter6_reg),.dout(tmp_fu_315_p11));
syrk_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
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
        ap_enable_reg_pp0_iter15 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter15 <= ap_enable_reg_pp0_iter14;
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
            i_fu_74 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_74 <= select_ln29_fu_238_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln29_fu_195_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten13_fu_78 <= add_ln29_1_fu_201_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten13_fu_78 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            j_fu_70 <= 7'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            j_fu_70 <= add_ln30_fu_264_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        add1_reg_433 <= grp_fu_1479_p_dout0;
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter13_reg <= ap_loop_exit_ready_pp0_iter12_reg;
        ap_loop_exit_ready_pp0_iter14_reg <= ap_loop_exit_ready_pp0_iter13_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        buff_B_load_reg_394 <= buff_B_q0;
        buff_C_out_1_addr_reg_405 <= zext_ln32_1_fu_307_p1;
        buff_C_out_1_addr_reg_405_pp0_iter10_reg <= buff_C_out_1_addr_reg_405_pp0_iter9_reg;
        buff_C_out_1_addr_reg_405_pp0_iter11_reg <= buff_C_out_1_addr_reg_405_pp0_iter10_reg;
        buff_C_out_1_addr_reg_405_pp0_iter12_reg <= buff_C_out_1_addr_reg_405_pp0_iter11_reg;
        buff_C_out_1_addr_reg_405_pp0_iter13_reg <= buff_C_out_1_addr_reg_405_pp0_iter12_reg;
        buff_C_out_1_addr_reg_405_pp0_iter14_reg <= buff_C_out_1_addr_reg_405_pp0_iter13_reg;
        buff_C_out_1_addr_reg_405_pp0_iter7_reg <= buff_C_out_1_addr_reg_405;
        buff_C_out_1_addr_reg_405_pp0_iter8_reg <= buff_C_out_1_addr_reg_405_pp0_iter7_reg;
        buff_C_out_1_addr_reg_405_pp0_iter9_reg <= buff_C_out_1_addr_reg_405_pp0_iter8_reg;
        buff_C_out_2_addr_reg_411 <= zext_ln32_1_fu_307_p1;
        buff_C_out_2_addr_reg_411_pp0_iter10_reg <= buff_C_out_2_addr_reg_411_pp0_iter9_reg;
        buff_C_out_2_addr_reg_411_pp0_iter11_reg <= buff_C_out_2_addr_reg_411_pp0_iter10_reg;
        buff_C_out_2_addr_reg_411_pp0_iter12_reg <= buff_C_out_2_addr_reg_411_pp0_iter11_reg;
        buff_C_out_2_addr_reg_411_pp0_iter13_reg <= buff_C_out_2_addr_reg_411_pp0_iter12_reg;
        buff_C_out_2_addr_reg_411_pp0_iter14_reg <= buff_C_out_2_addr_reg_411_pp0_iter13_reg;
        buff_C_out_2_addr_reg_411_pp0_iter7_reg <= buff_C_out_2_addr_reg_411;
        buff_C_out_2_addr_reg_411_pp0_iter8_reg <= buff_C_out_2_addr_reg_411_pp0_iter7_reg;
        buff_C_out_2_addr_reg_411_pp0_iter9_reg <= buff_C_out_2_addr_reg_411_pp0_iter8_reg;
        buff_C_out_3_addr_reg_417 <= zext_ln32_1_fu_307_p1;
        buff_C_out_3_addr_reg_417_pp0_iter10_reg <= buff_C_out_3_addr_reg_417_pp0_iter9_reg;
        buff_C_out_3_addr_reg_417_pp0_iter11_reg <= buff_C_out_3_addr_reg_417_pp0_iter10_reg;
        buff_C_out_3_addr_reg_417_pp0_iter12_reg <= buff_C_out_3_addr_reg_417_pp0_iter11_reg;
        buff_C_out_3_addr_reg_417_pp0_iter13_reg <= buff_C_out_3_addr_reg_417_pp0_iter12_reg;
        buff_C_out_3_addr_reg_417_pp0_iter14_reg <= buff_C_out_3_addr_reg_417_pp0_iter13_reg;
        buff_C_out_3_addr_reg_417_pp0_iter7_reg <= buff_C_out_3_addr_reg_417;
        buff_C_out_3_addr_reg_417_pp0_iter8_reg <= buff_C_out_3_addr_reg_417_pp0_iter7_reg;
        buff_C_out_3_addr_reg_417_pp0_iter9_reg <= buff_C_out_3_addr_reg_417_pp0_iter8_reg;
        buff_C_out_addr_reg_399 <= zext_ln32_1_fu_307_p1;
        buff_C_out_addr_reg_399_pp0_iter10_reg <= buff_C_out_addr_reg_399_pp0_iter9_reg;
        buff_C_out_addr_reg_399_pp0_iter11_reg <= buff_C_out_addr_reg_399_pp0_iter10_reg;
        buff_C_out_addr_reg_399_pp0_iter12_reg <= buff_C_out_addr_reg_399_pp0_iter11_reg;
        buff_C_out_addr_reg_399_pp0_iter13_reg <= buff_C_out_addr_reg_399_pp0_iter12_reg;
        buff_C_out_addr_reg_399_pp0_iter14_reg <= buff_C_out_addr_reg_399_pp0_iter13_reg;
        buff_C_out_addr_reg_399_pp0_iter7_reg <= buff_C_out_addr_reg_399;
        buff_C_out_addr_reg_399_pp0_iter8_reg <= buff_C_out_addr_reg_399_pp0_iter7_reg;
        buff_C_out_addr_reg_399_pp0_iter9_reg <= buff_C_out_addr_reg_399_pp0_iter8_reg;
        lshr_ln5_4_reg_384_pp0_iter2_reg <= lshr_ln5_4_reg_384;
        lshr_ln5_4_reg_384_pp0_iter3_reg <= lshr_ln5_4_reg_384_pp0_iter2_reg;
        lshr_ln5_4_reg_384_pp0_iter4_reg <= lshr_ln5_4_reg_384_pp0_iter3_reg;
        lshr_ln5_4_reg_384_pp0_iter5_reg <= lshr_ln5_4_reg_384_pp0_iter4_reg;
        mul2_reg_423 <= grp_fu_1483_p_dout0;
        tmp_reg_428 <= tmp_fu_315_p11;
        trunc_ln30_reg_379_pp0_iter10_reg <= trunc_ln30_reg_379_pp0_iter9_reg;
        trunc_ln30_reg_379_pp0_iter11_reg <= trunc_ln30_reg_379_pp0_iter10_reg;
        trunc_ln30_reg_379_pp0_iter12_reg <= trunc_ln30_reg_379_pp0_iter11_reg;
        trunc_ln30_reg_379_pp0_iter13_reg <= trunc_ln30_reg_379_pp0_iter12_reg;
        trunc_ln30_reg_379_pp0_iter14_reg <= trunc_ln30_reg_379_pp0_iter13_reg;
        trunc_ln30_reg_379_pp0_iter2_reg <= trunc_ln30_reg_379;
        trunc_ln30_reg_379_pp0_iter3_reg <= trunc_ln30_reg_379_pp0_iter2_reg;
        trunc_ln30_reg_379_pp0_iter4_reg <= trunc_ln30_reg_379_pp0_iter3_reg;
        trunc_ln30_reg_379_pp0_iter5_reg <= trunc_ln30_reg_379_pp0_iter4_reg;
        trunc_ln30_reg_379_pp0_iter6_reg <= trunc_ln30_reg_379_pp0_iter5_reg;
        trunc_ln30_reg_379_pp0_iter7_reg <= trunc_ln30_reg_379_pp0_iter6_reg;
        trunc_ln30_reg_379_pp0_iter8_reg <= trunc_ln30_reg_379_pp0_iter7_reg;
        trunc_ln30_reg_379_pp0_iter9_reg <= trunc_ln30_reg_379_pp0_iter8_reg;
        trunc_ln32_reg_373_pp0_iter2_reg <= trunc_ln32_reg_373;
        trunc_ln32_reg_373_pp0_iter3_reg <= trunc_ln32_reg_373_pp0_iter2_reg;
        trunc_ln32_reg_373_pp0_iter4_reg <= trunc_ln32_reg_373_pp0_iter3_reg;
        trunc_ln32_reg_373_pp0_iter5_reg <= trunc_ln32_reg_373_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln5_4_reg_384 <= {{select_ln5_fu_230_p3[5:2]}};
        select_ln5_reg_368 <= select_ln5_fu_230_p3;
        trunc_ln30_reg_379 <= trunc_ln30_fu_250_p1;
        trunc_ln32_reg_373 <= trunc_ln32_fu_246_p1;
    end
end
always @ (*) begin
    if (((icmp_ln29_fu_195_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter14_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter15 == 1'b0) & (ap_enable_reg_pp0_iter14 == 1'b0) & (ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten13_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten13_load = indvar_flatten13_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        buff_B_ce0_local = 1'b1;
    end else begin
        buff_B_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        buff_C_out_1_ce0_local = 1'b1;
    end else begin
        buff_C_out_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        buff_C_out_1_ce1_local = 1'b1;
    end else begin
        buff_C_out_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln30_reg_379_pp0_iter14_reg == 2'd1))) begin
        buff_C_out_1_we0_local = 1'b1;
    end else begin
        buff_C_out_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        buff_C_out_2_ce0_local = 1'b1;
    end else begin
        buff_C_out_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        buff_C_out_2_ce1_local = 1'b1;
    end else begin
        buff_C_out_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln30_reg_379_pp0_iter14_reg == 2'd2))) begin
        buff_C_out_2_we0_local = 1'b1;
    end else begin
        buff_C_out_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        buff_C_out_3_ce0_local = 1'b1;
    end else begin
        buff_C_out_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        buff_C_out_3_ce1_local = 1'b1;
    end else begin
        buff_C_out_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln30_reg_379_pp0_iter14_reg == 2'd3))) begin
        buff_C_out_3_we0_local = 1'b1;
    end else begin
        buff_C_out_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1))) begin
        buff_C_out_ce0_local = 1'b1;
    end else begin
        buff_C_out_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1))) begin
        buff_C_out_ce1_local = 1'b1;
    end else begin
        buff_C_out_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter15 == 1'b1) & (trunc_ln30_reg_379_pp0_iter14_reg == 2'd0))) begin
        buff_C_out_we0_local = 1'b1;
    end else begin
        buff_C_out_we0_local = 1'b0;
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
assign add_ln29_1_fu_201_p2 = (ap_sig_allocacmp_indvar_flatten13_load + 13'd1);
assign add_ln29_fu_218_p2 = (i_fu_74 + 7'd1);
assign add_ln30_fu_264_p2 = (select_ln5_fu_230_p3 + 7'd1);
assign add_ln32_fu_290_p2 = (tmp_7_fu_280_p3 + zext_ln32_fu_287_p1);
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
assign buff_B_address0 = zext_ln32_2_fu_296_p1;
assign buff_B_ce0 = buff_B_ce0_local;
assign buff_C_out_1_address0 = buff_C_out_1_addr_reg_405_pp0_iter14_reg;
assign buff_C_out_1_address1 = zext_ln32_1_fu_307_p1;
assign buff_C_out_1_ce0 = buff_C_out_1_ce0_local;
assign buff_C_out_1_ce1 = buff_C_out_1_ce1_local;
assign buff_C_out_1_d0 = add1_reg_433;
assign buff_C_out_1_we0 = buff_C_out_1_we0_local;
assign buff_C_out_2_address0 = buff_C_out_2_addr_reg_411_pp0_iter14_reg;
assign buff_C_out_2_address1 = zext_ln32_1_fu_307_p1;
assign buff_C_out_2_ce0 = buff_C_out_2_ce0_local;
assign buff_C_out_2_ce1 = buff_C_out_2_ce1_local;
assign buff_C_out_2_d0 = add1_reg_433;
assign buff_C_out_2_we0 = buff_C_out_2_we0_local;
assign buff_C_out_3_address0 = buff_C_out_3_addr_reg_417_pp0_iter14_reg;
assign buff_C_out_3_address1 = zext_ln32_1_fu_307_p1;
assign buff_C_out_3_ce0 = buff_C_out_3_ce0_local;
assign buff_C_out_3_ce1 = buff_C_out_3_ce1_local;
assign buff_C_out_3_d0 = add1_reg_433;
assign buff_C_out_3_we0 = buff_C_out_3_we0_local;
assign buff_C_out_address0 = buff_C_out_addr_reg_399_pp0_iter14_reg;
assign buff_C_out_address1 = zext_ln32_1_fu_307_p1;
assign buff_C_out_ce0 = buff_C_out_ce0_local;
assign buff_C_out_ce1 = buff_C_out_ce1_local;
assign buff_C_out_d0 = add1_reg_433;
assign buff_C_out_we0 = buff_C_out_we0_local;
assign grp_fu_1479_p_ce = 1'b1;
assign grp_fu_1479_p_din0 = tmp_reg_428;
assign grp_fu_1479_p_din1 = mul2_reg_423;
assign grp_fu_1479_p_opcode = 2'd0;
assign grp_fu_1483_p_ce = 1'b1;
assign grp_fu_1483_p_din0 = buff_B_load_reg_394;
assign grp_fu_1483_p_din1 = beta;
assign icmp_ln29_fu_195_p2 = ((ap_sig_allocacmp_indvar_flatten13_load == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln30_fu_224_p2 = ((j_fu_70 == 7'd64) ? 1'b1 : 1'b0);
assign select_ln29_fu_238_p3 = ((icmp_ln30_fu_224_p2[0:0] == 1'b1) ? add_ln29_fu_218_p2 : i_fu_74);
assign select_ln5_fu_230_p3 = ((icmp_ln30_fu_224_p2[0:0] == 1'b1) ? 7'd0 : j_fu_70);
assign tmp_7_fu_280_p3 = {{trunc_ln32_reg_373}, {6'd0}};
assign tmp_8_fu_301_p3 = {{trunc_ln32_reg_373_pp0_iter5_reg}, {lshr_ln5_4_reg_384_pp0_iter5_reg}};
assign tmp_fu_315_p9 = 'bx;
assign trunc_ln30_fu_250_p1 = select_ln5_fu_230_p3[1:0];
assign trunc_ln32_fu_246_p1 = select_ln29_fu_238_p3[5:0];
assign zext_ln32_1_fu_307_p1 = tmp_8_fu_301_p3;
assign zext_ln32_2_fu_296_p1 = add_ln32_fu_290_p2;
assign zext_ln32_fu_287_p1 = select_ln5_reg_368;
endmodule 