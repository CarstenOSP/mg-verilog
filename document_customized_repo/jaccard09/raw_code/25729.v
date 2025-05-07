module stencil3d_stencil3d_Pipeline_loop_height_loop_col_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,C_load,C_load_1); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
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
output  [11:0] sol_3_address0;
output   sol_3_ce0;
output   sol_3_we0;
output  [31:0] sol_3_d0;
output  [11:0] sol_2_address0;
output   sol_2_ce0;
output   sol_2_we0;
output  [31:0] sol_2_d0;
output  [11:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
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
input  [31:0] C_load;
input  [31:0] C_load_1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln36_reg_1006;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_469_p11;
reg   [31:0] reg_492;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_446_p11;
reg   [31:0] reg_496;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln36_fu_532_p2;
reg   [0:0] icmp_ln36_reg_1006_pp0_iter1_reg;
reg   [4:0] j_load_reg_1010;
wire   [0:0] icmp_ln37_fu_553_p2;
reg   [0:0] icmp_ln37_reg_1015;
wire   [4:0] select_ln11_fu_559_p3;
reg   [4:0] select_ln11_reg_1020;
wire   [0:0] and_ln11_fu_579_p2;
reg   [0:0] and_ln11_reg_1026;
wire   [4:0] select_ln36_fu_591_p3;
reg   [4:0] select_ln36_reg_1032;
wire   [4:0] indvars_iv_next67_dup_fu_599_p2;
reg   [4:0] indvars_iv_next67_dup_reg_1042;
wire   [3:0] k_mid2_fu_611_p3;
reg   [3:0] k_mid2_reg_1047;
wire   [1:0] trunc_ln38_fu_619_p1;
reg   [1:0] trunc_ln38_reg_1053;
reg   [1:0] trunc_ln38_reg_1053_pp0_iter1_reg;
reg   [1:0] trunc_ln38_reg_1053_pp0_iter2_reg;
reg   [1:0] lshr_ln_reg_1061;
wire   [4:0] select_ln37_fu_667_p3;
reg   [4:0] select_ln37_reg_1070;
wire   [9:0] empty_15_fu_701_p2;
reg   [9:0] empty_15_reg_1075;
wire   [4:0] empty_16_fu_740_p3;
reg   [4:0] empty_16_reg_1100;
reg   [31:0] tmp_reg_1165;
wire   [31:0] tmp_4_fu_866_p11;
reg   [31:0] tmp_4_reg_1210;
wire   [31:0] tmp_5_fu_889_p11;
reg   [31:0] tmp_5_reg_1215;
wire   [63:0] zext_ln39_fu_919_p1;
reg   [63:0] zext_ln39_reg_1220;
reg   [63:0] zext_ln39_reg_1220_pp0_iter2_reg;
wire   [31:0] add_ln48_3_fu_931_p2;
reg   [31:0] add_ln48_3_reg_1248;
wire  signed [31:0] add_ln48_4_fu_948_p2;
reg  signed [31:0] add_ln48_4_reg_1253;
wire   [31:0] grp_fu_442_p2;
reg   [31:0] mul_ln48_reg_1258;
reg   [31:0] mul_ln48_1_reg_1263;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln40_fu_720_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln43_fu_755_p1;
wire   [63:0] zext_ln44_fu_787_p1;
wire   [63:0] zext_ln45_fu_819_p1;
wire   [63:0] zext_ln41_fu_843_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln42_fu_858_p1;
wire    ap_block_pp0_stage1;
reg   [3:0] k_fu_98;
wire   [3:0] add_ln44_fu_763_p2;
wire    ap_loop_init;
reg   [4:0] j_fu_102;
reg   [8:0] indvar_flatten_fu_106;
wire   [8:0] select_ln37_1_fu_639_p3;
reg   [4:0] i_fu_110;
reg   [13:0] indvar_flatten14_fu_114;
wire   [13:0] add_ln36_fu_538_p2;
reg    orig_0_ce0_local;
reg   [11:0] orig_0_address0_local;
reg    orig_0_ce1_local;
reg   [11:0] orig_0_address1_local;
reg    orig_1_ce0_local;
reg   [11:0] orig_1_address0_local;
reg    orig_1_ce1_local;
reg   [11:0] orig_1_address1_local;
reg    orig_2_ce0_local;
reg   [11:0] orig_2_address0_local;
reg    orig_2_ce1_local;
reg   [11:0] orig_2_address1_local;
reg    orig_3_ce0_local;
reg   [11:0] orig_3_address0_local;
reg    orig_3_ce1_local;
reg   [11:0] orig_3_address1_local;
reg    sol_2_we0_local;
wire   [31:0] add_ln48_5_fu_953_p2;
reg    sol_2_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg  signed [31:0] grp_fu_442_p0;
reg  signed [31:0] grp_fu_442_p1;
wire   [31:0] grp_fu_446_p9;
reg   [1:0] grp_fu_446_p10;
wire   [31:0] grp_fu_469_p9;
wire   [0:0] icmp_ln38_fu_573_p2;
wire   [0:0] xor_ln11_fu_567_p2;
wire   [4:0] indvars_iv_next8117_fu_585_p2;
wire   [0:0] empty_fu_605_p2;
wire   [8:0] add_ln37_fu_633_p2;
wire  signed [5:0] tmp1_cast_cast_fu_679_p3;
wire   [9:0] tmp1_cast_cast_cast_fu_687_p1;
wire   [9:0] tmp_s_fu_672_p3;
wire  signed [9:0] tmp2_cast_fu_697_p1;
wire   [9:0] empty_14_fu_691_p2;
wire   [11:0] add_ln1_fu_713_p3;
wire   [4:0] indvars_iv_next6724_fu_728_p2;
wire   [4:0] indvars_iv_next67_mid1_fu_662_p2;
wire   [4:0] select_ln11_1_fu_733_p3;
wire   [4:0] tmp3_fu_707_p2;
wire   [11:0] add_ln4_fu_747_p4;
wire   [1:0] lshr_ln1_fu_768_p4;
wire   [11:0] add_ln44_1_fu_778_p4;
wire   [3:0] add_ln45_fu_795_p2;
wire   [1:0] lshr_ln2_fu_800_p4;
wire   [11:0] add_ln45_1_fu_810_p4;
wire   [11:0] add_ln2_fu_837_p3;
wire   [11:0] add_ln3_fu_851_p4;
wire   [31:0] tmp_4_fu_866_p9;
wire   [31:0] tmp_5_fu_889_p9;
wire   [11:0] add_ln_fu_912_p4;
wire   [31:0] add_ln48_2_fu_927_p2;
wire   [31:0] add_ln48_fu_937_p2;
wire   [31:0] add_ln48_1_fu_942_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] grp_fu_446_p1;
wire   [1:0] grp_fu_446_p3;
wire  signed [1:0] grp_fu_446_p5;
wire  signed [1:0] grp_fu_446_p7;
wire   [1:0] grp_fu_469_p1;
wire   [1:0] grp_fu_469_p3;
wire  signed [1:0] grp_fu_469_p5;
wire  signed [1:0] grp_fu_469_p7;
wire  signed [1:0] tmp_4_fu_866_p1;
wire   [1:0] tmp_4_fu_866_p3;
wire   [1:0] tmp_4_fu_866_p5;
wire  signed [1:0] tmp_4_fu_866_p7;
wire   [1:0] tmp_5_fu_889_p1;
wire  signed [1:0] tmp_5_fu_889_p3;
wire  signed [1:0] tmp_5_fu_889_p5;
wire   [1:0] tmp_5_fu_889_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_98 = 4'd0;
#0 j_fu_102 = 5'd0;
#0 indvar_flatten_fu_106 = 9'd0;
#0 i_fu_110 = 5'd0;
#0 indvar_flatten14_fu_114 = 14'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U21(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_442_p0),.din1(grp_fu_442_p1),.ce(1'b1),.dout(grp_fu_442_p2));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U22(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(grp_fu_446_p9),.sel(grp_fu_446_p10),.dout(grp_fu_446_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U23(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(grp_fu_469_p9),.sel(trunc_ln38_reg_1053),.dout(grp_fu_469_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U24(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_4_fu_866_p9),.sel(trunc_ln38_reg_1053),.dout(tmp_4_fu_866_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U25(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_5_fu_889_p9),.sel(trunc_ln38_reg_1053),.dout(tmp_5_fu_889_p11));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage2)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_110 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln36_fu_532_p2 == 1'd0))) begin
        i_fu_110 <= select_ln36_fu_591_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten14_fu_114 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln36_fu_532_p2 == 1'd0))) begin
        indvar_flatten14_fu_114 <= add_ln36_fu_538_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_106 <= 9'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln36_fu_532_p2 == 1'd0))) begin
        indvar_flatten_fu_106 <= select_ln37_1_fu_639_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_102 <= 5'd1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_102 <= select_ln37_fu_667_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_98 <= 4'd1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_98 <= add_ln44_fu_763_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_3_reg_1248 <= add_ln48_3_fu_931_p2;
        and_ln11_reg_1026 <= and_ln11_fu_579_p2;
        icmp_ln36_reg_1006 <= icmp_ln36_fu_532_p2;
        icmp_ln36_reg_1006_pp0_iter1_reg <= icmp_ln36_reg_1006;
        icmp_ln37_reg_1015 <= icmp_ln37_fu_553_p2;
        indvars_iv_next67_dup_reg_1042 <= indvars_iv_next67_dup_fu_599_p2;
        j_load_reg_1010 <= j_fu_102;
        k_mid2_reg_1047 <= k_mid2_fu_611_p3;
        lshr_ln_reg_1061 <= {{k_mid2_fu_611_p3[3:2]}};
        select_ln11_reg_1020 <= select_ln11_fu_559_p3;
        select_ln36_reg_1032 <= select_ln36_fu_591_p3;
        trunc_ln38_reg_1053 <= trunc_ln38_fu_619_p1;
        trunc_ln38_reg_1053_pp0_iter1_reg <= trunc_ln38_reg_1053;
        trunc_ln38_reg_1053_pp0_iter2_reg <= trunc_ln38_reg_1053_pp0_iter1_reg;
        zext_ln39_reg_1220[11 : 0] <= zext_ln39_fu_919_p1[11 : 0];
        zext_ln39_reg_1220_pp0_iter2_reg[11 : 0] <= zext_ln39_reg_1220[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_4_reg_1253 <= add_ln48_4_fu_948_p2;
        empty_15_reg_1075 <= empty_15_fu_701_p2;
        empty_16_reg_1100 <= empty_16_fu_740_p3;
        select_ln37_reg_1070 <= select_ln37_fu_667_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_1_reg_1263 <= grp_fu_442_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_reg_1258 <= grp_fu_442_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_492 <= grp_fu_469_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_496 <= grp_fu_446_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_4_reg_1210 <= tmp_4_fu_866_p11;
        tmp_5_reg_1215 <= tmp_5_fu_889_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_1165 <= grp_fu_446_p11;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_1006 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln36_reg_1006_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        ap_enable_reg_pp0_iter0 = ap_start_int;
    end else begin
        ap_enable_reg_pp0_iter0 = ap_enable_reg_pp0_iter0_reg;
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_442_p0 = C_load_1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_442_p0 = C_load;
        end else begin
            grp_fu_442_p0 = 'bx;
        end
    end else begin
        grp_fu_442_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_442_p1 = add_ln48_4_reg_1253;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_442_p1 = reg_496;
        end else begin
            grp_fu_442_p1 = 'bx;
        end
    end else begin
        grp_fu_442_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_446_p10 = trunc_ln38_reg_1053_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_446_p10 = trunc_ln38_reg_1053;
    end else begin
        grp_fu_446_p10 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln39_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln42_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln40_fu_720_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address1_local = zext_ln41_fu_843_p1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd1))) begin
        orig_0_address1_local = zext_ln45_fu_819_p1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd3))) begin
        orig_0_address1_local = zext_ln44_fu_787_p1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd0))) begin
        orig_0_address1_local = zext_ln43_fu_755_p1;
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd3)) | ((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd1)) | ((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln39_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln42_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln40_fu_720_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address1_local = zext_ln41_fu_843_p1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd2))) begin
        orig_1_address1_local = zext_ln45_fu_819_p1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd0))) begin
        orig_1_address1_local = zext_ln44_fu_787_p1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd1))) begin
        orig_1_address1_local = zext_ln43_fu_755_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd2)) | ((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd1)) | ((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln39_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln42_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address0_local = zext_ln40_fu_720_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address1_local = zext_ln41_fu_843_p1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd3))) begin
        orig_2_address1_local = zext_ln45_fu_819_p1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd1))) begin
        orig_2_address1_local = zext_ln44_fu_787_p1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd2))) begin
        orig_2_address1_local = zext_ln43_fu_755_p1;
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd3)) | ((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd2)) | ((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln39_fu_919_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln42_fu_858_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = zext_ln40_fu_720_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address1_local = zext_ln41_fu_843_p1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd0))) begin
        orig_3_address1_local = zext_ln45_fu_819_p1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd2))) begin
        orig_3_address1_local = zext_ln44_fu_787_p1;
    end else if (((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd3))) begin
        orig_3_address1_local = zext_ln43_fu_755_p1;
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd3)) | ((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd2)) | ((icmp_ln36_reg_1006 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1053 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1053_pp0_iter2_reg == 2'd0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1053_pp0_iter2_reg == 2'd1))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1053_pp0_iter2_reg == 2'd2))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_1053_pp0_iter2_reg == 2'd3))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1_fu_713_p3 = {{empty_14_fu_691_p2}, {lshr_ln_reg_1061}};
assign add_ln2_fu_837_p3 = {{empty_15_reg_1075}, {lshr_ln_reg_1061}};
assign add_ln36_fu_538_p2 = (indvar_flatten14_fu_114 + 14'd1);
assign add_ln37_fu_633_p2 = (indvar_flatten_fu_106 + 9'd1);
assign add_ln3_fu_851_p4 = {{{select_ln36_reg_1032}, {empty_16_reg_1100}}, {lshr_ln_reg_1061}};
assign add_ln44_1_fu_778_p4 = {{{select_ln36_reg_1032}, {select_ln37_fu_667_p3}}, {lshr_ln1_fu_768_p4}};
assign add_ln44_fu_763_p2 = (k_mid2_reg_1047 + 4'd1);
assign add_ln45_1_fu_810_p4 = {{{select_ln36_reg_1032}, {select_ln37_fu_667_p3}}, {lshr_ln2_fu_800_p4}};
assign add_ln45_fu_795_p2 = ($signed(k_mid2_reg_1047) + $signed(4'd15));
assign add_ln48_1_fu_942_p2 = (add_ln48_fu_937_p2 + reg_492);
assign add_ln48_2_fu_927_p2 = (tmp_4_reg_1210 + tmp_5_reg_1215);
assign add_ln48_3_fu_931_p2 = (add_ln48_2_fu_927_p2 + reg_492);
assign add_ln48_4_fu_948_p2 = (add_ln48_3_reg_1248 + add_ln48_1_fu_942_p2);
assign add_ln48_5_fu_953_p2 = (mul_ln48_1_reg_1263 + mul_ln48_reg_1258);
assign add_ln48_fu_937_p2 = (tmp_reg_1165 + reg_496);
assign add_ln4_fu_747_p4 = {{{select_ln36_reg_1032}, {tmp3_fu_707_p2}}, {lshr_ln_reg_1061}};
assign add_ln_fu_912_p4 = {{{select_ln36_reg_1032}, {select_ln37_reg_1070}}, {lshr_ln_reg_1061}};
assign and_ln11_fu_579_p2 = (xor_ln11_fu_567_p2 & icmp_ln38_fu_573_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_14_fu_691_p2 = (tmp1_cast_cast_cast_fu_687_p1 + tmp_s_fu_672_p3);
assign empty_15_fu_701_p2 = ($signed(tmp2_cast_fu_697_p1) + $signed(tmp_s_fu_672_p3));
assign empty_16_fu_740_p3 = ((and_ln11_reg_1026[0:0] == 1'b1) ? indvars_iv_next67_mid1_fu_662_p2 : select_ln11_1_fu_733_p3);
assign empty_fu_605_p2 = (icmp_ln37_fu_553_p2 | and_ln11_fu_579_p2);
assign grp_fu_446_p9 = 'bx;
assign grp_fu_469_p9 = 'bx;
assign icmp_ln36_fu_532_p2 = ((indvar_flatten14_fu_114 == 14'd12600) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_553_p2 = ((indvar_flatten_fu_106 == 9'd420) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_573_p2 = ((k_fu_98 == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next6724_fu_728_p2 = (j_load_reg_1010 + 5'd1);
assign indvars_iv_next67_dup_fu_599_p2 = (select_ln11_fu_559_p3 + 5'd1);
assign indvars_iv_next67_mid1_fu_662_p2 = (select_ln11_reg_1020 + 5'd2);
assign indvars_iv_next8117_fu_585_p2 = (i_fu_110 + 5'd1);
assign k_mid2_fu_611_p3 = ((empty_fu_605_p2[0:0] == 1'b1) ? 4'd1 : k_fu_98);
assign lshr_ln1_fu_768_p4 = {{add_ln44_fu_763_p2[3:2]}};
assign lshr_ln2_fu_800_p4 = {{add_ln45_fu_795_p2[3:2]}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = orig_2_address1_local;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = orig_3_address1_local;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign select_ln11_1_fu_733_p3 = ((icmp_ln37_reg_1015[0:0] == 1'b1) ? 5'd2 : indvars_iv_next6724_fu_728_p2);
assign select_ln11_fu_559_p3 = ((icmp_ln37_fu_553_p2[0:0] == 1'b1) ? 5'd1 : j_fu_102);
assign select_ln36_fu_591_p3 = ((icmp_ln37_fu_553_p2[0:0] == 1'b1) ? indvars_iv_next8117_fu_585_p2 : i_fu_110);
assign select_ln37_1_fu_639_p3 = ((icmp_ln37_fu_553_p2[0:0] == 1'b1) ? 9'd1 : add_ln37_fu_633_p2);
assign select_ln37_fu_667_p3 = ((and_ln11_reg_1026[0:0] == 1'b1) ? indvars_iv_next67_dup_reg_1042 : select_ln11_reg_1020);
assign sol_0_address0 = zext_ln39_reg_1220_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = add_ln48_5_fu_953_p2;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln39_reg_1220_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = add_ln48_5_fu_953_p2;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln39_reg_1220_pp0_iter2_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = add_ln48_5_fu_953_p2;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln39_reg_1220_pp0_iter2_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = add_ln48_5_fu_953_p2;
assign sol_3_we0 = sol_3_we0_local;
assign tmp1_cast_cast_cast_fu_687_p1 = $unsigned(tmp1_cast_cast_fu_679_p3);
assign tmp1_cast_cast_fu_679_p3 = {{1'd1}, {select_ln37_fu_667_p3}};
assign tmp2_cast_fu_697_p1 = tmp1_cast_cast_fu_679_p3;
assign tmp3_fu_707_p2 = ($signed(select_ln37_fu_667_p3) + $signed(5'd31));
assign tmp_4_fu_866_p9 = 'bx;
assign tmp_5_fu_889_p9 = 'bx;
assign tmp_s_fu_672_p3 = {{select_ln36_reg_1032}, {5'd0}};
assign trunc_ln38_fu_619_p1 = k_mid2_fu_611_p3[1:0];
assign xor_ln11_fu_567_p2 = (icmp_ln37_fu_553_p2 ^ 1'd1);
assign zext_ln39_fu_919_p1 = add_ln_fu_912_p4;
assign zext_ln40_fu_720_p1 = add_ln1_fu_713_p3;
assign zext_ln41_fu_843_p1 = add_ln2_fu_837_p3;
assign zext_ln42_fu_858_p1 = add_ln3_fu_851_p4;
assign zext_ln43_fu_755_p1 = add_ln4_fu_747_p4;
assign zext_ln44_fu_787_p1 = add_ln44_1_fu_778_p4;
assign zext_ln45_fu_819_p1 = add_ln45_1_fu_810_p4;
always @ (posedge ap_clk) begin
    zext_ln39_reg_1220[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_1220_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 