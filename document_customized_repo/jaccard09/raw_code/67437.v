module stencil3d_stencil3d_Pipeline_loop_height_loop_col_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,C_load,C_load_1); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
output  [12:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [12:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [12:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [12:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [12:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
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
reg   [0:0] icmp_ln36_reg_742;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_275_p3;
reg   [31:0] reg_282;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln36_fu_317_p2;
reg   [0:0] icmp_ln36_reg_742_pp0_iter1_reg;
reg   [4:0] j_load_reg_746;
wire   [0:0] icmp_ln37_fu_338_p2;
reg   [0:0] icmp_ln37_reg_751;
wire   [4:0] select_ln11_fu_344_p3;
reg   [4:0] select_ln11_reg_756;
wire   [0:0] and_ln11_fu_364_p2;
reg   [0:0] and_ln11_reg_762;
wire   [4:0] select_ln36_fu_376_p3;
reg   [4:0] select_ln36_reg_768;
wire   [4:0] indvars_iv_next131_dup_fu_384_p2;
reg   [4:0] indvars_iv_next131_dup_reg_778;
wire   [3:0] k_mid2_fu_396_p3;
reg   [3:0] k_mid2_reg_783;
wire   [0:0] trunc_ln38_fu_404_p1;
reg   [0:0] trunc_ln38_reg_789;
reg   [0:0] trunc_ln38_reg_789_pp0_iter1_reg;
reg   [0:0] trunc_ln38_reg_789_pp0_iter2_reg;
reg   [2:0] lshr_ln_reg_797;
wire   [4:0] select_ln37_fu_452_p3;
reg   [4:0] select_ln37_reg_806;
wire    ap_block_pp0_stage2_11001;
wire   [9:0] empty_15_fu_486_p2;
reg   [9:0] empty_15_reg_811;
wire   [4:0] empty_16_fu_523_p3;
reg   [4:0] empty_16_reg_826;
wire   [31:0] grp_fu_268_p3;
reg   [31:0] select_ln40_reg_861;
wire   [31:0] select_ln44_fu_639_p3;
reg   [31:0] select_ln44_reg_886;
wire   [31:0] select_ln45_fu_646_p3;
reg   [31:0] select_ln45_reg_891;
wire   [63:0] zext_ln39_fu_660_p1;
reg   [63:0] zext_ln39_reg_896;
reg   [63:0] zext_ln39_reg_896_pp0_iter2_reg;
wire   [31:0] add_ln48_fu_666_p2;
reg   [31:0] add_ln48_reg_912;
wire   [31:0] add_ln48_3_fu_675_p2;
reg   [31:0] add_ln48_3_reg_917;
reg  signed [31:0] sum0_reg_922;
wire  signed [31:0] add_ln48_4_fu_686_p2;
reg  signed [31:0] add_ln48_4_reg_927;
wire   [31:0] grp_fu_264_p2;
reg   [31:0] mul_ln48_reg_932;
reg   [31:0] mul_ln48_1_reg_937;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln40_fu_505_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln43_fu_538_p1;
wire   [63:0] zext_ln44_fu_568_p1;
wire   [63:0] zext_ln45_fu_598_p1;
wire   [63:0] zext_ln41_fu_620_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln42_fu_633_p1;
wire    ap_block_pp0_stage1;
reg   [3:0] k_fu_76;
wire   [3:0] add_ln44_fu_544_p2;
wire    ap_loop_init;
reg   [4:0] j_fu_80;
reg   [8:0] indvar_flatten_fu_84;
wire   [8:0] select_ln37_1_fu_424_p3;
reg   [4:0] i_fu_88;
reg   [13:0] indvar_flatten14_fu_92;
wire   [13:0] add_ln36_fu_323_p2;
reg    orig_0_ce0_local;
reg   [12:0] orig_0_address0_local;
reg    orig_0_ce1_local;
reg   [12:0] orig_0_address1_local;
reg    orig_1_ce0_local;
reg   [12:0] orig_1_address0_local;
reg    orig_1_ce1_local;
reg   [12:0] orig_1_address1_local;
reg    sol_0_we0_local;
wire   [31:0] add_ln48_5_fu_691_p2;
reg    sol_0_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg  signed [31:0] grp_fu_264_p0;
reg  signed [31:0] grp_fu_264_p1;
reg   [0:0] grp_fu_268_p0;
wire   [0:0] icmp_ln38_fu_358_p2;
wire   [0:0] xor_ln11_fu_352_p2;
wire   [4:0] indvars_iv_next14517_fu_370_p2;
wire   [0:0] empty_fu_390_p2;
wire   [8:0] add_ln37_fu_418_p2;
wire  signed [5:0] tmp_cast_cast_fu_464_p3;
wire   [9:0] tmp_cast_cast_cast_fu_472_p1;
wire   [9:0] tmp_s_fu_457_p3;
wire  signed [9:0] tmp1_cast_fu_482_p1;
wire   [9:0] empty_14_fu_476_p2;
wire   [12:0] add_ln1_fu_498_p3;
wire   [4:0] indvars_iv_next13124_fu_511_p2;
wire   [4:0] indvars_iv_next131_mid1_fu_447_p2;
wire   [4:0] select_ln11_1_fu_516_p3;
wire   [4:0] tmp2_fu_492_p2;
wire   [12:0] add_ln4_fu_530_p4;
wire   [2:0] lshr_ln1_fu_549_p4;
wire   [12:0] add_ln44_1_fu_559_p4;
wire   [3:0] add_ln45_fu_574_p2;
wire   [2:0] lshr_ln2_fu_579_p4;
wire   [12:0] add_ln45_1_fu_589_p4;
wire   [12:0] add_ln2_fu_614_p3;
wire   [12:0] add_ln3_fu_626_p4;
wire   [12:0] add_ln_fu_653_p4;
wire   [31:0] add_ln48_2_fu_671_p2;
wire   [31:0] add_ln48_1_fu_681_p2;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_76 = 4'd0;
#0 j_fu_80 = 5'd0;
#0 indvar_flatten_fu_84 = 9'd0;
#0 i_fu_88 = 5'd0;
#0 indvar_flatten14_fu_92 = 14'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_264_p0),.din1(grp_fu_264_p1),.ce(1'b1),.dout(grp_fu_264_p2));
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
        i_fu_88 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln36_fu_317_p2 == 1'd0))) begin
        i_fu_88 <= select_ln36_fu_376_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten14_fu_92 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln36_fu_317_p2 == 1'd0))) begin
        indvar_flatten14_fu_92 <= add_ln36_fu_323_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_84 <= 9'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln36_fu_317_p2 == 1'd0))) begin
        indvar_flatten_fu_84 <= select_ln37_1_fu_424_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_80 <= 5'd1;
    end else if (((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_80 <= select_ln37_fu_452_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_76 <= 4'd1;
    end else if (((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_76 <= add_ln44_fu_544_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_3_reg_917 <= add_ln48_3_fu_675_p2;
        add_ln48_reg_912 <= add_ln48_fu_666_p2;
        and_ln11_reg_762 <= and_ln11_fu_364_p2;
        icmp_ln36_reg_742 <= icmp_ln36_fu_317_p2;
        icmp_ln36_reg_742_pp0_iter1_reg <= icmp_ln36_reg_742;
        icmp_ln37_reg_751 <= icmp_ln37_fu_338_p2;
        indvars_iv_next131_dup_reg_778 <= indvars_iv_next131_dup_fu_384_p2;
        j_load_reg_746 <= j_fu_80;
        k_mid2_reg_783 <= k_mid2_fu_396_p3;
        lshr_ln_reg_797 <= {{k_mid2_fu_396_p3[3:1]}};
        select_ln11_reg_756 <= select_ln11_fu_344_p3;
        select_ln36_reg_768 <= select_ln36_fu_376_p3;
        trunc_ln38_reg_789 <= trunc_ln38_fu_404_p1;
        trunc_ln38_reg_789_pp0_iter1_reg <= trunc_ln38_reg_789;
        trunc_ln38_reg_789_pp0_iter2_reg <= trunc_ln38_reg_789_pp0_iter1_reg;
        zext_ln39_reg_896[12 : 0] <= zext_ln39_fu_660_p1[12 : 0];
        zext_ln39_reg_896_pp0_iter2_reg[12 : 0] <= zext_ln39_reg_896[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_4_reg_927 <= add_ln48_4_fu_686_p2;
        empty_15_reg_811 <= empty_15_fu_486_p2;
        empty_16_reg_826 <= empty_16_fu_523_p3;
        select_ln37_reg_806 <= select_ln37_fu_452_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_1_reg_937 <= grp_fu_264_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_reg_932 <= grp_fu_264_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_282 <= grp_fu_275_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln40_reg_861 <= grp_fu_268_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        select_ln44_reg_886 <= select_ln44_fu_639_p3;
        select_ln45_reg_891 <= select_ln45_fu_646_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sum0_reg_922 <= grp_fu_268_p3;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_742 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln36_reg_742_pp0_iter1_reg == 1'd1))) begin
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
            grp_fu_264_p0 = C_load_1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_264_p0 = C_load;
        end else begin
            grp_fu_264_p0 = 'bx;
        end
    end else begin
        grp_fu_264_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_264_p1 = add_ln48_4_reg_927;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_264_p1 = sum0_reg_922;
        end else begin
            grp_fu_264_p1 = 'bx;
        end
    end else begin
        grp_fu_264_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_268_p0 = trunc_ln38_reg_789_pp0_iter1_reg;
    end else if ((((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_268_p0 = trunc_ln38_reg_789;
    end else begin
        grp_fu_268_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln39_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln42_fu_633_p1;
    end else if (((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd1))) begin
        orig_0_address0_local = zext_ln44_fu_568_p1;
    end else if (((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd0))) begin
        orig_0_address0_local = zext_ln40_fu_505_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address1_local = zext_ln41_fu_620_p1;
    end else if (((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd1))) begin
        orig_0_address1_local = zext_ln45_fu_598_p1;
    end else if (((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd0))) begin
        orig_0_address1_local = zext_ln43_fu_538_p1;
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd1)) | ((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd1)) | ((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd0)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln39_fu_660_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln42_fu_633_p1;
    end else if (((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd0))) begin
        orig_1_address0_local = zext_ln44_fu_568_p1;
    end else if (((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd1))) begin
        orig_1_address0_local = zext_ln40_fu_505_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address1_local = zext_ln41_fu_620_p1;
    end else if (((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd0))) begin
        orig_1_address1_local = zext_ln45_fu_598_p1;
    end else if (((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd1))) begin
        orig_1_address1_local = zext_ln43_fu_538_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd1)) | ((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd1)) | ((icmp_ln36_reg_742 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_789 == 1'd0)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_789_pp0_iter2_reg == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (trunc_ln38_reg_789_pp0_iter2_reg == 1'd1))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
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
assign add_ln1_fu_498_p3 = {{empty_14_fu_476_p2}, {lshr_ln_reg_797}};
assign add_ln2_fu_614_p3 = {{empty_15_reg_811}, {lshr_ln_reg_797}};
assign add_ln36_fu_323_p2 = (indvar_flatten14_fu_92 + 14'd1);
assign add_ln37_fu_418_p2 = (indvar_flatten_fu_84 + 9'd1);
assign add_ln3_fu_626_p4 = {{{select_ln36_reg_768}, {empty_16_reg_826}}, {lshr_ln_reg_797}};
assign add_ln44_1_fu_559_p4 = {{{select_ln36_reg_768}, {select_ln37_fu_452_p3}}, {lshr_ln1_fu_549_p4}};
assign add_ln44_fu_544_p2 = (k_mid2_reg_783 + 4'd1);
assign add_ln45_1_fu_589_p4 = {{{select_ln36_reg_768}, {select_ln37_fu_452_p3}}, {lshr_ln2_fu_579_p4}};
assign add_ln45_fu_574_p2 = ($signed(k_mid2_reg_783) + $signed(4'd15));
assign add_ln48_1_fu_681_p2 = (add_ln48_reg_912 + reg_282);
assign add_ln48_2_fu_671_p2 = (select_ln44_reg_886 + select_ln45_reg_891);
assign add_ln48_3_fu_675_p2 = (add_ln48_2_fu_671_p2 + reg_282);
assign add_ln48_4_fu_686_p2 = (add_ln48_3_reg_917 + add_ln48_1_fu_681_p2);
assign add_ln48_5_fu_691_p2 = (mul_ln48_1_reg_937 + mul_ln48_reg_932);
assign add_ln48_fu_666_p2 = (select_ln40_reg_861 + grp_fu_268_p3);
assign add_ln4_fu_530_p4 = {{{select_ln36_reg_768}, {tmp2_fu_492_p2}}, {lshr_ln_reg_797}};
assign add_ln_fu_653_p4 = {{{select_ln36_reg_768}, {select_ln37_reg_806}}, {lshr_ln_reg_797}};
assign and_ln11_fu_364_p2 = (xor_ln11_fu_352_p2 & icmp_ln38_fu_358_p2);
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
assign empty_14_fu_476_p2 = (tmp_cast_cast_cast_fu_472_p1 + tmp_s_fu_457_p3);
assign empty_15_fu_486_p2 = ($signed(tmp1_cast_fu_482_p1) + $signed(tmp_s_fu_457_p3));
assign empty_16_fu_523_p3 = ((and_ln11_reg_762[0:0] == 1'b1) ? indvars_iv_next131_mid1_fu_447_p2 : select_ln11_1_fu_516_p3);
assign empty_fu_390_p2 = (icmp_ln37_fu_338_p2 | and_ln11_fu_364_p2);
assign grp_fu_268_p3 = ((grp_fu_268_p0[0:0] == 1'b1) ? orig_1_q0 : orig_0_q0);
assign grp_fu_275_p3 = ((trunc_ln38_reg_789[0:0] == 1'b1) ? orig_1_q1 : orig_0_q1);
assign icmp_ln36_fu_317_p2 = ((indvar_flatten14_fu_92 == 14'd12600) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_338_p2 = ((indvar_flatten_fu_84 == 9'd420) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_358_p2 = ((k_fu_76 == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next13124_fu_511_p2 = (j_load_reg_746 + 5'd1);
assign indvars_iv_next131_dup_fu_384_p2 = (select_ln11_fu_344_p3 + 5'd1);
assign indvars_iv_next131_mid1_fu_447_p2 = (select_ln11_reg_756 + 5'd2);
assign indvars_iv_next14517_fu_370_p2 = (i_fu_88 + 5'd1);
assign k_mid2_fu_396_p3 = ((empty_fu_390_p2[0:0] == 1'b1) ? 4'd1 : k_fu_76);
assign lshr_ln1_fu_549_p4 = {{add_ln44_fu_544_p2[3:1]}};
assign lshr_ln2_fu_579_p4 = {{add_ln45_fu_574_p2[3:1]}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign select_ln11_1_fu_516_p3 = ((icmp_ln37_reg_751[0:0] == 1'b1) ? 5'd2 : indvars_iv_next13124_fu_511_p2);
assign select_ln11_fu_344_p3 = ((icmp_ln37_fu_338_p2[0:0] == 1'b1) ? 5'd1 : j_fu_80);
assign select_ln36_fu_376_p3 = ((icmp_ln37_fu_338_p2[0:0] == 1'b1) ? indvars_iv_next14517_fu_370_p2 : i_fu_88);
assign select_ln37_1_fu_424_p3 = ((icmp_ln37_fu_338_p2[0:0] == 1'b1) ? 9'd1 : add_ln37_fu_418_p2);
assign select_ln37_fu_452_p3 = ((and_ln11_reg_762[0:0] == 1'b1) ? indvars_iv_next131_dup_reg_778 : select_ln11_reg_756);
assign select_ln44_fu_639_p3 = ((trunc_ln38_reg_789[0:0] == 1'b1) ? orig_0_q0 : orig_1_q0);
assign select_ln45_fu_646_p3 = ((trunc_ln38_reg_789[0:0] == 1'b1) ? orig_0_q1 : orig_1_q1);
assign sol_0_address0 = zext_ln39_reg_896_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = add_ln48_5_fu_691_p2;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln39_reg_896_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = add_ln48_5_fu_691_p2;
assign sol_1_we0 = sol_1_we0_local;
assign tmp1_cast_fu_482_p1 = tmp_cast_cast_fu_464_p3;
assign tmp2_fu_492_p2 = ($signed(select_ln37_fu_452_p3) + $signed(5'd31));
assign tmp_cast_cast_cast_fu_472_p1 = $unsigned(tmp_cast_cast_fu_464_p3);
assign tmp_cast_cast_fu_464_p3 = {{1'd1}, {select_ln37_fu_452_p3}};
assign tmp_s_fu_457_p3 = {{select_ln36_reg_768}, {5'd0}};
assign trunc_ln38_fu_404_p1 = k_mid2_fu_396_p3[0:0];
assign xor_ln11_fu_352_p2 = (icmp_ln37_fu_338_p2 ^ 1'd1);
assign zext_ln39_fu_660_p1 = add_ln_fu_653_p4;
assign zext_ln40_fu_505_p1 = add_ln1_fu_498_p3;
assign zext_ln41_fu_620_p1 = add_ln2_fu_614_p3;
assign zext_ln42_fu_633_p1 = add_ln3_fu_626_p4;
assign zext_ln43_fu_538_p1 = add_ln4_fu_530_p4;
assign zext_ln44_fu_568_p1 = add_ln44_1_fu_559_p4;
assign zext_ln45_fu_598_p1 = add_ln45_1_fu_589_p4;
always @ (posedge ap_clk) begin
    zext_ln39_reg_896[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_896_pp0_iter2_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 