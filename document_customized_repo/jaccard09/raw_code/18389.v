module stencil3d_stencil3d_Pipeline_col_bound_height_col_bound_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_0_address1,sol_0_ce1,sol_0_we1,sol_0_d1,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_3_address1,sol_3_ce1,sol_3_we1,sol_3_d1,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_2_address1,sol_2_ce1,sol_2_we1,sol_2_d1,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_1_address1,sol_1_ce1,sol_1_we1,sol_1_d1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [11:0] sol_0_address1;
output   sol_0_ce1;
output   sol_0_we1;
output  [31:0] sol_0_d1;
output  [11:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [11:0] sol_3_address1;
output   sol_3_ce1;
output   sol_3_we1;
output  [31:0] sol_3_d1;
output  [11:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [11:0] sol_2_address1;
output   sol_2_ce1;
output   sol_2_we1;
output  [31:0] sol_2_d1;
output  [11:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [11:0] sol_1_address1;
output   sol_1_ce1;
output   sol_1_we1;
output  [31:0] sol_1_d1;
output  [11:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [11:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [11:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [11:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [11:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [11:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [11:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [11:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln21_fu_308_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln22_fu_359_p1;
reg   [1:0] trunc_ln22_reg_500;
reg   [1:0] trunc_ln22_reg_500_pp0_iter2_reg;
wire   [63:0] zext_ln23_fu_387_p1;
reg   [63:0] zext_ln23_reg_506;
reg   [63:0] zext_ln23_reg_506_pp0_iter2_reg;
wire   [63:0] zext_ln24_fu_405_p1;
reg   [63:0] zext_ln24_reg_534;
reg   [63:0] zext_ln24_reg_534_pp0_iter2_reg;
wire   [31:0] tmp_2_fu_429_p11;
reg   [31:0] tmp_2_reg_562;
wire   [31:0] tmp_3_fu_452_p11;
reg   [31:0] tmp_3_reg_570;
wire    ap_block_pp0_stage0;
reg   [4:0] k_fu_78;
wire   [4:0] add_ln22_fu_413_p2;
wire    ap_loop_init;
reg   [4:0] i_fu_82;
wire   [4:0] select_ln21_fu_351_p3;
reg   [8:0] indvar_flatten6_fu_86;
wire   [8:0] add_ln21_fu_314_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten6_load;
reg    orig_0_ce1_local;
reg    orig_0_ce0_local;
reg    orig_1_ce1_local;
reg    orig_1_ce0_local;
reg    orig_2_ce1_local;
reg    orig_2_ce0_local;
reg    orig_3_ce1_local;
reg    orig_3_ce0_local;
reg    sol_2_we1_local;
reg    sol_2_ce1_local;
reg    sol_2_we0_local;
reg    sol_2_ce0_local;
reg    sol_1_we1_local;
reg    sol_1_ce1_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_0_we1_local;
reg    sol_0_ce1_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_3_we1_local;
reg    sol_3_ce1_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
wire   [0:0] icmp_ln22_fu_331_p2;
wire   [4:0] add_ln21_1_fu_345_p2;
wire   [4:0] select_ln11_fu_337_p3;
wire   [1:0] lshr_ln1_fu_363_p4;
wire   [3:0] zext_ln23_1_fu_373_p1;
wire   [11:0] add_ln1_fu_377_p4;
wire   [11:0] add_ln2_fu_395_p4;
wire   [31:0] tmp_2_fu_429_p9;
wire   [31:0] tmp_3_fu_452_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_2_fu_429_p1;
wire   [1:0] tmp_2_fu_429_p3;
wire  signed [1:0] tmp_2_fu_429_p5;
wire  signed [1:0] tmp_2_fu_429_p7;
wire   [1:0] tmp_3_fu_452_p1;
wire   [1:0] tmp_3_fu_452_p3;
wire  signed [1:0] tmp_3_fu_452_p5;
wire  signed [1:0] tmp_3_fu_452_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 k_fu_78 = 5'd0;
#0 i_fu_82 = 5'd0;
#0 indvar_flatten6_fu_86 = 9'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U12(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_2_fu_429_p9),.sel(trunc_ln22_reg_500),.dout(tmp_2_fu_429_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U13(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(tmp_3_fu_452_p9),.sel(trunc_ln22_reg_500),.dout(tmp_3_fu_452_p11));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            i_fu_82 <= 5'd1;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            i_fu_82 <= select_ln21_fu_351_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln21_fu_308_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten6_fu_86 <= add_ln21_fu_314_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten6_fu_86 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k_fu_78 <= 5'd0;
        end else if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
            k_fu_78 <= add_ln22_fu_413_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        trunc_ln22_reg_500 <= trunc_ln22_fu_359_p1;
        zext_ln23_reg_506[1 : 0] <= zext_ln23_fu_387_p1[1 : 0];
zext_ln23_reg_506[11 : 7] <= zext_ln23_fu_387_p1[11 : 7];
        zext_ln24_reg_534[1 : 0] <= zext_ln24_fu_405_p1[1 : 0];
zext_ln24_reg_534[11 : 7] <= zext_ln24_fu_405_p1[11 : 7];
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        tmp_2_reg_562 <= tmp_2_fu_429_p11;
        tmp_3_reg_570 <= tmp_3_fu_452_p11;
        trunc_ln22_reg_500_pp0_iter2_reg <= trunc_ln22_reg_500;
        zext_ln23_reg_506_pp0_iter2_reg[1 : 0] <= zext_ln23_reg_506[1 : 0];
zext_ln23_reg_506_pp0_iter2_reg[11 : 7] <= zext_ln23_reg_506[11 : 7];
        zext_ln24_reg_534_pp0_iter2_reg[1 : 0] <= zext_ln24_reg_534[1 : 0];
zext_ln24_reg_534_pp0_iter2_reg[11 : 7] <= zext_ln24_reg_534[11 : 7];
    end
end
always @ (*) begin
    if (((icmp_ln21_fu_308_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten6_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten6_load = indvar_flatten6_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_0_ce1_local = 1'b1;
    end else begin
        sol_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln22_reg_500_pp0_iter2_reg == 2'd0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln22_reg_500_pp0_iter2_reg == 2'd0))) begin
        sol_0_we1_local = 1'b1;
    end else begin
        sol_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_1_ce1_local = 1'b1;
    end else begin
        sol_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln22_reg_500_pp0_iter2_reg == 2'd1))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln22_reg_500_pp0_iter2_reg == 2'd1))) begin
        sol_1_we1_local = 1'b1;
    end else begin
        sol_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_2_ce1_local = 1'b1;
    end else begin
        sol_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln22_reg_500_pp0_iter2_reg == 2'd2))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln22_reg_500_pp0_iter2_reg == 2'd2))) begin
        sol_2_we1_local = 1'b1;
    end else begin
        sol_2_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        sol_3_ce1_local = 1'b1;
    end else begin
        sol_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln22_reg_500_pp0_iter2_reg == 2'd3))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln22_reg_500_pp0_iter2_reg == 2'd3))) begin
        sol_3_we1_local = 1'b1;
    end else begin
        sol_3_we1_local = 1'b0;
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
assign add_ln1_fu_377_p4 = {{{select_ln21_fu_351_p3}, {3'd0}}, {zext_ln23_1_fu_373_p1}};
assign add_ln21_1_fu_345_p2 = (i_fu_82 + 5'd1);
assign add_ln21_fu_314_p2 = (ap_sig_allocacmp_indvar_flatten6_load + 9'd1);
assign add_ln22_fu_413_p2 = (select_ln11_fu_337_p3 + 5'd1);
assign add_ln2_fu_395_p4 = {{{select_ln21_fu_351_p3}, {5'd31}}, {lshr_ln1_fu_363_p4}};
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln21_fu_308_p2 = ((ap_sig_allocacmp_indvar_flatten6_load == 9'd480) ? 1'b1 : 1'b0);
assign icmp_ln22_fu_331_p2 = ((k_fu_78 == 5'd16) ? 1'b1 : 1'b0);
assign lshr_ln1_fu_363_p4 = {{select_ln11_fu_337_p3[3:2]}};
assign orig_0_address0 = zext_ln24_fu_405_p1;
assign orig_0_address1 = zext_ln23_fu_387_p1;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = zext_ln24_fu_405_p1;
assign orig_1_address1 = zext_ln23_fu_387_p1;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = zext_ln24_fu_405_p1;
assign orig_2_address1 = zext_ln23_fu_387_p1;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = zext_ln24_fu_405_p1;
assign orig_3_address1 = zext_ln23_fu_387_p1;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign select_ln11_fu_337_p3 = ((icmp_ln22_fu_331_p2[0:0] == 1'b1) ? 5'd0 : k_fu_78);
assign select_ln21_fu_351_p3 = ((icmp_ln22_fu_331_p2[0:0] == 1'b1) ? add_ln21_1_fu_345_p2 : i_fu_82);
assign sol_0_address0 = zext_ln24_reg_534_pp0_iter2_reg;
assign sol_0_address1 = zext_ln23_reg_506_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_ce1 = sol_0_ce1_local;
assign sol_0_d0 = tmp_3_reg_570;
assign sol_0_d1 = tmp_2_reg_562;
assign sol_0_we0 = sol_0_we0_local;
assign sol_0_we1 = sol_0_we1_local;
assign sol_1_address0 = zext_ln24_reg_534_pp0_iter2_reg;
assign sol_1_address1 = zext_ln23_reg_506_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_ce1 = sol_1_ce1_local;
assign sol_1_d0 = tmp_3_reg_570;
assign sol_1_d1 = tmp_2_reg_562;
assign sol_1_we0 = sol_1_we0_local;
assign sol_1_we1 = sol_1_we1_local;
assign sol_2_address0 = zext_ln24_reg_534_pp0_iter2_reg;
assign sol_2_address1 = zext_ln23_reg_506_pp0_iter2_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_ce1 = sol_2_ce1_local;
assign sol_2_d0 = tmp_3_reg_570;
assign sol_2_d1 = tmp_2_reg_562;
assign sol_2_we0 = sol_2_we0_local;
assign sol_2_we1 = sol_2_we1_local;
assign sol_3_address0 = zext_ln24_reg_534_pp0_iter2_reg;
assign sol_3_address1 = zext_ln23_reg_506_pp0_iter2_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_ce1 = sol_3_ce1_local;
assign sol_3_d0 = tmp_3_reg_570;
assign sol_3_d1 = tmp_2_reg_562;
assign sol_3_we0 = sol_3_we0_local;
assign sol_3_we1 = sol_3_we1_local;
assign tmp_2_fu_429_p9 = 'bx;
assign tmp_3_fu_452_p9 = 'bx;
assign trunc_ln22_fu_359_p1 = select_ln11_fu_337_p3[1:0];
assign zext_ln23_1_fu_373_p1 = lshr_ln1_fu_363_p4;
assign zext_ln23_fu_387_p1 = add_ln1_fu_377_p4;
assign zext_ln24_fu_405_p1 = add_ln2_fu_395_p4;
always @ (posedge ap_clk) begin
    zext_ln23_reg_506[6:2] <= 5'b00000;
    zext_ln23_reg_506[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln23_reg_506_pp0_iter2_reg[6:2] <= 5'b00000;
    zext_ln23_reg_506_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln24_reg_534[6:2] <= 5'b11111;
    zext_ln24_reg_534[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln24_reg_534_pp0_iter2_reg[6:2] <= 5'b11111;
    zext_ln24_reg_534_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 