
module stencil3d_stencil3d_Pipeline_loop_height_loop_col_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_3_address0,sol_3_ce0,sol_3_we0,sol_3_d0,sol_2_address0,sol_2_ce0,sol_2_we0,sol_2_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,C_load,C_load_1);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
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
output  [11:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire   [0:0] icmp_ln36_fu_968_p2;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln3725_reg_452;
wire   [31:0] grp_fu_477_p11;
reg   [31:0] reg_500;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [4:0] select_ln11_fu_546_p3;
reg   [4:0] select_ln11_reg_1123;
wire   [0:0] and_ln11_fu_560_p2;
reg   [0:0] and_ln11_reg_1129;
wire   [4:0] indvars_iv_next314_dup_fu_566_p2;
reg   [4:0] indvars_iv_next314_dup_reg_1135;
wire   [3:0] k_mid2_fu_578_p3;
reg   [3:0] k_mid2_reg_1140;
wire   [1:0] trunc_ln38_fu_586_p1;
reg   [1:0] trunc_ln38_reg_1146;
reg   [1:0] trunc_ln38_reg_1146_pp0_iter1_reg;
reg   [1:0] trunc_ln38_reg_1146_pp0_iter2_reg;
reg   [1:0] lshr_ln_reg_1156;
wire   [4:0] i_fu_606_p3;
reg   [4:0] i_reg_1165;
wire   [4:0] j_fu_614_p3;
reg   [4:0] j_reg_1171;
wire   [9:0] empty_7_fu_649_p2;
reg   [9:0] empty_7_reg_1177;
wire   [0:0] icmp_ln38_fu_765_p2;
reg   [0:0] icmp_ln38_reg_1262;
wire   [31:0] tmp_fu_805_p11;
reg   [31:0] tmp_reg_1267;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] tmp_3_fu_873_p11;
reg   [31:0] tmp_3_reg_1312;
wire   [31:0] tmp_4_fu_896_p11;
reg   [31:0] tmp_4_reg_1317;
wire   [31:0] tmp_5_fu_919_p11;
reg   [31:0] tmp_5_reg_1322;
wire   [0:0] icmp_ln37_fu_962_p2;
reg   [0:0] icmp_ln37_reg_1327;
reg   [0:0] icmp_ln36_reg_1332;
wire   [63:0] zext_ln39_fu_991_p1;
reg   [63:0] zext_ln39_reg_1336;
reg   [63:0] zext_ln39_reg_1336_pp0_iter2_reg;
wire   [31:0] tmp_2_fu_999_p11;
reg   [31:0] tmp_2_reg_1364;
wire   [31:0] add_ln48_3_fu_1026_p2;
reg   [31:0] add_ln48_3_reg_1369;
wire  signed [31:0] add_ln48_4_fu_1041_p2;
reg  signed [31:0] add_ln48_4_reg_1374;
wire   [31:0] grp_fu_473_p2;
reg   [31:0] mul_ln48_reg_1379;
reg   [31:0] mul_ln48_1_reg_1384;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] ap_phi_mux_icmp_ln3725_phi_fu_455_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln3824_phi_fu_466_p4;
wire   [63:0] zext_ln40_fu_668_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln43_fu_685_p1;
wire   [63:0] zext_ln44_fu_718_p1;
wire   [63:0] zext_ln45_fu_751_p1;
wire   [63:0] zext_ln41_fu_834_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln42_fu_865_p1;
reg   [13:0] indvar_flatten1417_fu_100;
wire   [13:0] add_ln36_fu_942_p2;
reg   [4:0] i18_fu_104;
reg   [8:0] indvar_flatten19_fu_108;
wire   [8:0] select_ln37_1_fu_954_p3;
reg   [4:0] j20_fu_112;
reg   [4:0] ap_sig_allocacmp_j20_load;
reg   [3:0] k21_fu_116;
wire   [3:0] k_fu_693_p2;
reg   [3:0] ap_sig_allocacmp_k21_load;
reg   [4:0] indvars_iv_next32822_fu_120;
wire   [4:0] indvars_iv_next328_fu_759_p2;
reg   [4:0] indvars_iv_next31423_fu_124;
wire   [4:0] indvars_iv_next314_fu_1046_p2;
reg    orig_0_ce1_local;
reg   [11:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [11:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [11:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [11:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg   [11:0] orig_2_address1_local;
reg    orig_2_ce0_local;
reg   [11:0] orig_2_address0_local;
reg    orig_3_ce1_local;
reg   [11:0] orig_3_address1_local;
reg    orig_3_ce0_local;
reg   [11:0] orig_3_address0_local;
reg    sol_2_we0_local;
wire   [31:0] add_ln48_5_fu_1056_p2;
reg    sol_2_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_3_we0_local;
reg    sol_3_ce0_local;
reg  signed [31:0] grp_fu_473_p0;
reg  signed [31:0] grp_fu_473_p1;
wire   [31:0] grp_fu_477_p9;
reg   [1:0] grp_fu_477_p10;
wire   [0:0] xor_ln11_fu_554_p2;
wire   [0:0] empty_fu_572_p2;
wire  signed [5:0] tmp1_cast_cast_fu_627_p3;
wire   [9:0] tmp1_cast_cast_cast_fu_635_p1;
wire   [9:0] tmp_6_fu_619_p3;
wire  signed [9:0] tmp2_cast_fu_645_p1;
wire   [9:0] empty_6_fu_639_p2;
wire   [11:0] add_ln1_fu_661_p3;
wire   [4:0] tmp3_fu_655_p2;
wire   [11:0] add_ln4_fu_676_p4;
wire   [1:0] lshr_ln1_fu_698_p4;
wire   [11:0] add_ln44_1_fu_708_p4;
wire   [3:0] add_ln45_fu_726_p2;
wire   [1:0] lshr_ln2_fu_731_p4;
wire   [11:0] add_ln45_1_fu_741_p4;
wire   [31:0] tmp_fu_805_p9;
wire   [11:0] add_ln2_fu_828_p3;
wire   [4:0] indvars_iv_next314_mid1_fu_800_p2;
wire   [4:0] select_ln11_1_fu_842_p3;
wire   [4:0] empty_8_fu_850_p3;
wire   [11:0] add_ln3_fu_857_p4;
wire   [31:0] tmp_3_fu_873_p9;
wire   [31:0] tmp_4_fu_896_p9;
wire   [31:0] tmp_5_fu_919_p9;
wire   [8:0] add_ln37_fu_948_p2;
wire   [11:0] add_ln_fu_984_p4;
wire   [31:0] tmp_2_fu_999_p9;
wire   [31:0] add_ln48_2_fu_1022_p2;
wire   [31:0] add_ln48_fu_1031_p2;
wire   [31:0] add_ln48_1_fu_1035_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_777;
reg    ap_condition_783;
wire   [1:0] grp_fu_477_p1;
wire   [1:0] grp_fu_477_p3;
wire  signed [1:0] grp_fu_477_p5;
wire  signed [1:0] grp_fu_477_p7;
wire   [1:0] tmp_fu_805_p1;
wire   [1:0] tmp_fu_805_p3;
wire  signed [1:0] tmp_fu_805_p5;
wire  signed [1:0] tmp_fu_805_p7;
wire   [1:0] tmp_3_fu_873_p1;
wire   [1:0] tmp_3_fu_873_p3;
wire  signed [1:0] tmp_3_fu_873_p5;
wire  signed [1:0] tmp_3_fu_873_p7;
wire  signed [1:0] tmp_4_fu_896_p1;
wire   [1:0] tmp_4_fu_896_p3;
wire   [1:0] tmp_4_fu_896_p5;
wire  signed [1:0] tmp_4_fu_896_p7;
wire   [1:0] tmp_5_fu_919_p1;
wire  signed [1:0] tmp_5_fu_919_p3;
wire  signed [1:0] tmp_5_fu_919_p5;
wire   [1:0] tmp_5_fu_919_p7;
wire   [1:0] tmp_2_fu_999_p1;
wire   [1:0] tmp_2_fu_999_p3;
wire  signed [1:0] tmp_2_fu_999_p5;
wire  signed [1:0] tmp_2_fu_999_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten1417_fu_100 = 14'd0;
#0 i18_fu_104 = 5'd0;
#0 indvar_flatten19_fu_108 = 9'd0;
#0 j20_fu_112 = 5'd0;
#0 k21_fu_116 = 4'd0;
#0 indvars_iv_next32822_fu_120 = 5'd0;
#0 indvars_iv_next31423_fu_124 = 5'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_473_p0),.din1(grp_fu_473_p1),.ce(1'b1),.dout(grp_fu_473_p2));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U2(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(grp_fu_477_p9),.sel(grp_fu_477_p10),.dout(grp_fu_477_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U3(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_fu_805_p9),.sel(trunc_ln38_reg_1146),.dout(tmp_fu_805_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U4(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(tmp_3_fu_873_p9),.sel(trunc_ln38_reg_1146),.dout(tmp_3_fu_873_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U5(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(tmp_4_fu_896_p9),.sel(trunc_ln38_reg_1146),.dout(tmp_4_fu_896_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U6(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(tmp_5_fu_919_p9),.sel(trunc_ln38_reg_1146),.dout(tmp_5_fu_919_p11));
(* dissolve_hierarchy = "yes" *) stencil3d_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U7(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_2_fu_999_p9),.sel(trunc_ln38_reg_1146),.dout(tmp_2_fu_999_p11));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if ((1'b1 == ap_CS_fsm_pp0_stage2)) begin
        if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage2_subdone))) begin
            ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
        end else if ((1'b0 == ap_block_pp0_stage2_11001)) begin
            ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i18_fu_104 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i18_fu_104 <= i_fu_606_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_783)) begin
            icmp_ln3725_reg_452 <= icmp_ln37_reg_1327;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln3725_reg_452 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten1417_fu_100 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten1417_fu_100 <= add_ln36_fu_942_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten19_fu_108 <= 9'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten19_fu_108 <= select_ln37_1_fu_954_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next31423_fu_124 <= 5'd2;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvars_iv_next31423_fu_124 <= indvars_iv_next314_fu_1046_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next32822_fu_120 <= 5'd2;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvars_iv_next32822_fu_120 <= indvars_iv_next328_fu_759_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j20_fu_112 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j20_fu_112 <= j_fu_614_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k21_fu_116 <= 4'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k21_fu_116 <= k_fu_693_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_3_reg_1369 <= add_ln48_3_fu_1026_p2;
        and_ln11_reg_1129 <= and_ln11_fu_560_p2;
        indvars_iv_next314_dup_reg_1135 <= indvars_iv_next314_dup_fu_566_p2;
        k_mid2_reg_1140 <= k_mid2_fu_578_p3;
        lshr_ln_reg_1156 <= {{k_mid2_fu_578_p3[3:2]}};
        select_ln11_reg_1123 <= select_ln11_fu_546_p3;
        tmp_2_reg_1364 <= tmp_2_fu_999_p11;
        trunc_ln38_reg_1146 <= trunc_ln38_fu_586_p1;
        trunc_ln38_reg_1146_pp0_iter1_reg <= trunc_ln38_reg_1146;
        trunc_ln38_reg_1146_pp0_iter2_reg <= trunc_ln38_reg_1146_pp0_iter1_reg;
        zext_ln39_reg_1336[11 : 0] <= zext_ln39_fu_991_p1[11 : 0];
        zext_ln39_reg_1336_pp0_iter2_reg[11 : 0] <= zext_ln39_reg_1336[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_4_reg_1374 <= add_ln48_4_fu_1041_p2;
        empty_7_reg_1177 <= empty_7_fu_649_p2;
        i_reg_1165 <= i_fu_606_p3;
        j_reg_1171 <= j_fu_614_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln36_reg_1332 <= icmp_ln36_fu_968_p2;
        tmp_3_reg_1312 <= tmp_3_fu_873_p11;
        tmp_4_reg_1317 <= tmp_4_fu_896_p11;
        tmp_5_reg_1322 <= tmp_5_fu_919_p11;
        tmp_reg_1267 <= tmp_fu_805_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln37_reg_1327 <= icmp_ln37_fu_962_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln38_reg_1262 <= icmp_ln38_fu_765_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_1_reg_1384 <= grp_fu_473_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_reg_1379 <= grp_fu_473_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_500 <= grp_fu_477_p11;
    end
end
always @ (*) begin
    if (((icmp_ln36_fu_968_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to2 = 1'b1;
    end else begin
        ap_idle_pp0_1to2 = 1'b0;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_777)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_455_p4 = icmp_ln37_reg_1327;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_455_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3725_phi_fu_455_p4 = icmp_ln37_reg_1327;
        end
    end else begin
        ap_phi_mux_icmp_ln3725_phi_fu_455_p4 = icmp_ln37_reg_1327;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_777)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_466_p4 = icmp_ln38_reg_1262;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_466_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3824_phi_fu_466_p4 = icmp_ln38_reg_1262;
        end
    end else begin
        ap_phi_mux_icmp_ln3824_phi_fu_466_p4 = icmp_ln38_reg_1262;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j20_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j20_load = j20_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k21_load = 4'd1;
    end else begin
        ap_sig_allocacmp_k21_load = k21_fu_116;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_473_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_473_p0 = C_load;
    end else begin
        grp_fu_473_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_473_p1 = add_ln48_4_reg_1374;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_473_p1 = reg_500;
    end else begin
        grp_fu_473_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_477_p10 = trunc_ln38_reg_1146_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_477_p10 = trunc_ln38_reg_1146;
        end else begin
            grp_fu_477_p10 = 'bx;
        end
    end else begin
        grp_fu_477_p10 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln39_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln41_fu_834_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd1))) begin
        orig_0_address0_local = zext_ln45_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd3))) begin
        orig_0_address0_local = zext_ln44_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd0))) begin
        orig_0_address0_local = zext_ln43_fu_685_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln42_fu_865_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln40_fu_668_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln39_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln41_fu_834_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd2))) begin
        orig_1_address0_local = zext_ln45_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd0))) begin
        orig_1_address0_local = zext_ln44_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd1))) begin
        orig_1_address0_local = zext_ln43_fu_685_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln42_fu_865_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln40_fu_668_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln39_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_2_address0_local = zext_ln41_fu_834_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd3))) begin
        orig_2_address0_local = zext_ln45_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd1))) begin
        orig_2_address0_local = zext_ln44_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd2))) begin
        orig_2_address0_local = zext_ln43_fu_685_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_2_address1_local = zext_ln42_fu_865_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_2_address1_local = zext_ln40_fu_668_p1;
        end else begin
            orig_2_address1_local = 'bx;
        end
    end else begin
        orig_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln39_fu_991_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_3_address0_local = zext_ln41_fu_834_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd0))) begin
        orig_3_address0_local = zext_ln45_fu_751_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd2))) begin
        orig_3_address0_local = zext_ln44_fu_718_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd3))) begin
        orig_3_address0_local = zext_ln43_fu_685_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_3_address1_local = zext_ln42_fu_865_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_3_address1_local = zext_ln40_fu_668_p1;
        end else begin
            orig_3_address1_local = 'bx;
        end
    end else begin
        orig_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_1146 == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1146_pp0_iter2_reg == 2'd0))) begin
        sol_0_we0_local = 1'b1;
    end else begin
        sol_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_ce0_local = 1'b1;
    end else begin
        sol_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1146_pp0_iter2_reg == 2'd1))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_2_ce0_local = 1'b1;
    end else begin
        sol_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1146_pp0_iter2_reg == 2'd2))) begin
        sol_2_we0_local = 1'b1;
    end else begin
        sol_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_3_ce0_local = 1'b1;
    end else begin
        sol_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_1146_pp0_iter2_reg == 2'd3))) begin
        sol_3_we0_local = 1'b1;
    end else begin
        sol_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln1_fu_661_p3 = {{empty_6_fu_639_p2}, {lshr_ln_reg_1156}};
assign add_ln2_fu_828_p3 = {{empty_7_reg_1177}, {lshr_ln_reg_1156}};
assign add_ln36_fu_942_p2 = (indvar_flatten1417_fu_100 + 14'd1);
assign add_ln37_fu_948_p2 = (indvar_flatten19_fu_108 + 9'd1);
assign add_ln3_fu_857_p4 = {{{i_reg_1165}, {empty_8_fu_850_p3}}, {lshr_ln_reg_1156}};
assign add_ln44_1_fu_708_p4 = {{{i_fu_606_p3}, {j_fu_614_p3}}, {lshr_ln1_fu_698_p4}};
assign add_ln45_1_fu_741_p4 = {{{i_fu_606_p3}, {j_fu_614_p3}}, {lshr_ln2_fu_731_p4}};
assign add_ln45_fu_726_p2 = ($signed(k_mid2_reg_1140) + $signed(4'd15));
assign add_ln48_1_fu_1035_p2 = (add_ln48_fu_1031_p2 + reg_500);
assign add_ln48_2_fu_1022_p2 = (tmp_4_reg_1317 + tmp_5_reg_1322);
assign add_ln48_3_fu_1026_p2 = (add_ln48_2_fu_1022_p2 + tmp_3_reg_1312);
assign add_ln48_4_fu_1041_p2 = (add_ln48_3_reg_1369 + add_ln48_1_fu_1035_p2);
assign add_ln48_5_fu_1056_p2 = (mul_ln48_1_reg_1384 + mul_ln48_reg_1379);
assign add_ln48_fu_1031_p2 = (tmp_reg_1267 + tmp_2_reg_1364);
assign add_ln4_fu_676_p4 = {{{i_fu_606_p3}, {tmp3_fu_655_p2}}, {lshr_ln_reg_1156}};
assign add_ln_fu_984_p4 = {{{i_reg_1165}, {j_reg_1171}}, {lshr_ln_reg_1156}};
assign and_ln11_fu_560_p2 = (xor_ln11_fu_554_p2 & ap_phi_mux_icmp_ln3824_phi_fu_466_p4);
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
always @ (*) begin
    ap_condition_777 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln36_reg_1332 == 1'd0));
end
always @ (*) begin
    ap_condition_783 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln36_reg_1332 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_6_fu_639_p2 = (tmp1_cast_cast_cast_fu_635_p1 + tmp_6_fu_619_p3);
assign empty_7_fu_649_p2 = ($signed(tmp2_cast_fu_645_p1) + $signed(tmp_6_fu_619_p3));
assign empty_8_fu_850_p3 = ((and_ln11_reg_1129[0:0] == 1'b1) ? indvars_iv_next314_mid1_fu_800_p2 : select_ln11_1_fu_842_p3);
assign empty_fu_572_p2 = (ap_phi_mux_icmp_ln3725_phi_fu_455_p4 | and_ln11_fu_560_p2);
assign grp_fu_477_p9 = 'bx;
assign i_fu_606_p3 = ((icmp_ln3725_reg_452[0:0] == 1'b1) ? indvars_iv_next32822_fu_120 : i18_fu_104);
assign icmp_ln36_fu_968_p2 = ((indvar_flatten1417_fu_100 == 14'd12599) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_962_p2 = ((select_ln37_1_fu_954_p3 == 9'd420) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_765_p2 = ((k_fu_693_p2 == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next314_dup_fu_566_p2 = (select_ln11_fu_546_p3 + 5'd1);
assign indvars_iv_next314_fu_1046_p2 = (j_reg_1171 + 5'd1);
assign indvars_iv_next314_mid1_fu_800_p2 = (select_ln11_reg_1123 + 5'd2);
assign indvars_iv_next328_fu_759_p2 = (i_fu_606_p3 + 5'd1);
assign j_fu_614_p3 = ((and_ln11_reg_1129[0:0] == 1'b1) ? indvars_iv_next314_dup_reg_1135 : select_ln11_reg_1123);
assign k_fu_693_p2 = (k_mid2_reg_1140 + 4'd1);
assign k_mid2_fu_578_p3 = ((empty_fu_572_p2[0:0] == 1'b1) ? 4'd1 : ap_sig_allocacmp_k21_load);
assign lshr_ln1_fu_698_p4 = {{k_fu_693_p2[3:2]}};
assign lshr_ln2_fu_731_p4 = {{add_ln45_fu_726_p2[3:2]}};
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
assign select_ln11_1_fu_842_p3 = ((icmp_ln3725_reg_452[0:0] == 1'b1) ? 5'd2 : indvars_iv_next31423_fu_124);
assign select_ln11_fu_546_p3 = ((ap_phi_mux_icmp_ln3725_phi_fu_455_p4[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j20_load);
assign select_ln37_1_fu_954_p3 = ((icmp_ln3725_reg_452[0:0] == 1'b1) ? 9'd1 : add_ln37_fu_948_p2);
assign sol_0_address0 = zext_ln39_reg_1336_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = add_ln48_5_fu_1056_p2;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln39_reg_1336_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = add_ln48_5_fu_1056_p2;
assign sol_1_we0 = sol_1_we0_local;
assign sol_2_address0 = zext_ln39_reg_1336_pp0_iter2_reg;
assign sol_2_ce0 = sol_2_ce0_local;
assign sol_2_d0 = add_ln48_5_fu_1056_p2;
assign sol_2_we0 = sol_2_we0_local;
assign sol_3_address0 = zext_ln39_reg_1336_pp0_iter2_reg;
assign sol_3_ce0 = sol_3_ce0_local;
assign sol_3_d0 = add_ln48_5_fu_1056_p2;
assign sol_3_we0 = sol_3_we0_local;
assign tmp1_cast_cast_cast_fu_635_p1 = $unsigned(tmp1_cast_cast_fu_627_p3);
assign tmp1_cast_cast_fu_627_p3 = {{1'd1}, {j_fu_614_p3}};
assign tmp2_cast_fu_645_p1 = tmp1_cast_cast_fu_627_p3;
assign tmp3_fu_655_p2 = ($signed(j_fu_614_p3) + $signed(5'd31));
assign tmp_2_fu_999_p9 = 'bx;
assign tmp_3_fu_873_p9 = 'bx;
assign tmp_4_fu_896_p9 = 'bx;
assign tmp_5_fu_919_p9 = 'bx;
assign tmp_6_fu_619_p3 = {{i_fu_606_p3}, {5'd0}};
assign tmp_fu_805_p9 = 'bx;
assign trunc_ln38_fu_586_p1 = k_mid2_fu_578_p3[1:0];
assign xor_ln11_fu_554_p2 = (ap_phi_mux_icmp_ln3725_phi_fu_455_p4 ^ 1'd1);
assign zext_ln39_fu_991_p1 = add_ln_fu_984_p4;
assign zext_ln40_fu_668_p1 = add_ln1_fu_661_p3;
assign zext_ln41_fu_834_p1 = add_ln2_fu_828_p3;
assign zext_ln42_fu_865_p1 = add_ln3_fu_857_p4;
assign zext_ln43_fu_685_p1 = add_ln4_fu_676_p4;
assign zext_ln44_fu_718_p1 = add_ln44_1_fu_708_p4;
assign zext_ln45_fu_751_p1 = add_ln45_1_fu_741_p4;
always @ (posedge ap_clk) begin
    zext_ln39_reg_1336[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_1336_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 
