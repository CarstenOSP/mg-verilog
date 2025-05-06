
module stencil3d_stencil3d_Pipeline_loop_height_loop_col_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,C_load,C_load_1);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [12:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [12:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
wire   [0:0] icmp_ln36_fu_698_p2;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln3725_reg_274;
wire   [31:0] grp_fu_299_p3;
reg   [31:0] reg_306;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [4:0] select_ln11_fu_352_p3;
reg   [4:0] select_ln11_reg_833;
wire   [0:0] and_ln11_fu_366_p2;
reg   [0:0] and_ln11_reg_839;
wire   [4:0] indvars_iv_next314_dup_fu_372_p2;
reg   [4:0] indvars_iv_next314_dup_reg_845;
wire   [3:0] k_mid2_fu_384_p3;
reg   [3:0] k_mid2_reg_850;
wire   [0:0] trunc_ln38_fu_392_p1;
reg   [0:0] trunc_ln38_reg_856;
reg   [0:0] trunc_ln38_reg_856_pp0_iter1_reg;
reg   [0:0] trunc_ln38_reg_856_pp0_iter2_reg;
reg   [2:0] lshr_ln_reg_866;
wire   [4:0] i_fu_412_p3;
reg   [4:0] i_reg_875;
wire   [4:0] j_fu_420_p3;
reg   [4:0] j_reg_881;
wire   [9:0] empty_7_fu_455_p2;
reg   [9:0] empty_7_reg_887;
wire   [0:0] icmp_ln38_fu_563_p2;
reg   [0:0] icmp_ln38_reg_932;
wire   [31:0] select_ln40_fu_603_p3;
reg   [31:0] select_ln40_reg_937;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] select_ln43_fu_651_p3;
reg   [31:0] select_ln43_reg_962;
wire   [31:0] select_ln44_fu_658_p3;
reg   [31:0] select_ln44_reg_967;
wire   [31:0] select_ln45_fu_665_p3;
reg   [31:0] select_ln45_reg_972;
wire   [0:0] icmp_ln37_fu_692_p2;
reg   [0:0] icmp_ln37_reg_977;
reg   [0:0] icmp_ln36_reg_982;
wire   [63:0] zext_ln39_fu_721_p1;
reg   [63:0] zext_ln39_reg_986;
reg   [63:0] zext_ln39_reg_986_pp0_iter2_reg;
wire   [31:0] add_ln48_fu_734_p2;
reg   [31:0] add_ln48_reg_1002;
wire   [31:0] add_ln48_3_fu_743_p2;
reg   [31:0] add_ln48_3_reg_1007;
wire  signed [31:0] add_ln48_4_fu_753_p2;
reg  signed [31:0] add_ln48_4_reg_1012;
wire   [31:0] grp_fu_295_p2;
reg   [31:0] mul_ln48_reg_1017;
reg   [31:0] mul_ln48_1_reg_1022;
reg    ap_enable_reg_pp0_iter0_reg;
reg   [0:0] ap_phi_mux_icmp_ln3725_phi_fu_277_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln3824_phi_fu_288_p4;
wire   [63:0] zext_ln40_fu_474_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln43_fu_489_p1;
wire   [63:0] zext_ln44_fu_520_p1;
wire   [63:0] zext_ln45_fu_551_p1;
wire   [63:0] zext_ln41_fu_616_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln42_fu_645_p1;
reg   [13:0] indvar_flatten1417_fu_78;
wire   [13:0] add_ln36_fu_672_p2;
reg   [4:0] i18_fu_82;
reg   [8:0] indvar_flatten19_fu_86;
wire   [8:0] select_ln37_1_fu_684_p3;
reg   [4:0] j20_fu_90;
reg   [4:0] ap_sig_allocacmp_j20_load;
reg   [3:0] k21_fu_94;
wire   [3:0] k_fu_495_p2;
reg   [3:0] ap_sig_allocacmp_k21_load;
reg   [4:0] indvars_iv_next32822_fu_98;
wire   [4:0] indvars_iv_next328_fu_557_p2;
reg   [4:0] indvars_iv_next31423_fu_102;
wire   [4:0] indvars_iv_next314_fu_758_p2;
reg    orig_0_ce1_local;
reg   [12:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [12:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [12:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [12:0] orig_1_address0_local;
reg    sol_0_we0_local;
wire   [31:0] add_ln48_5_fu_768_p2;
reg    sol_0_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg  signed [31:0] grp_fu_295_p0;
reg  signed [31:0] grp_fu_295_p1;
reg   [0:0] grp_fu_299_p0;
wire   [0:0] xor_ln11_fu_360_p2;
wire   [0:0] empty_fu_378_p2;
wire  signed [5:0] tmp_cast_cast_fu_433_p3;
wire   [9:0] tmp_cast_cast_cast_fu_441_p1;
wire   [9:0] tmp_fu_425_p3;
wire  signed [9:0] tmp1_cast_fu_451_p1;
wire   [9:0] empty_6_fu_445_p2;
wire   [12:0] add_ln1_fu_467_p3;
wire   [4:0] tmp2_fu_461_p2;
wire   [12:0] add_ln4_fu_480_p4;
wire   [2:0] lshr_ln1_fu_500_p4;
wire   [12:0] add_ln44_1_fu_510_p4;
wire   [3:0] add_ln45_fu_526_p2;
wire   [2:0] lshr_ln2_fu_531_p4;
wire   [12:0] add_ln45_1_fu_541_p4;
wire   [12:0] add_ln2_fu_610_p3;
wire   [4:0] indvars_iv_next314_mid1_fu_598_p2;
wire   [4:0] select_ln11_1_fu_622_p3;
wire   [4:0] empty_8_fu_630_p3;
wire   [12:0] add_ln3_fu_637_p4;
wire   [8:0] add_ln37_fu_678_p2;
wire   [12:0] add_ln_fu_714_p4;
wire   [31:0] select_ln42_fu_727_p3;
wire   [31:0] add_ln48_2_fu_739_p2;
wire   [31:0] add_ln48_1_fu_748_p2;
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
reg    ap_condition_618;
reg    ap_condition_624;
reg    ap_condition_627;
reg    ap_condition_630;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten1417_fu_78 = 14'd0;
#0 i18_fu_82 = 5'd0;
#0 indvar_flatten19_fu_86 = 9'd0;
#0 j20_fu_90 = 5'd0;
#0 k21_fu_94 = 4'd0;
#0 indvars_iv_next32822_fu_98 = 5'd0;
#0 indvars_iv_next31423_fu_102 = 5'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_295_p0),.din1(grp_fu_295_p1),.ce(1'b1),.dout(grp_fu_295_p2));
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
        i18_fu_82 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i18_fu_82 <= i_fu_412_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_624)) begin
            icmp_ln3725_reg_274 <= icmp_ln37_reg_977;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln3725_reg_274 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten1417_fu_78 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten1417_fu_78 <= add_ln36_fu_672_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten19_fu_86 <= 9'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten19_fu_86 <= select_ln37_1_fu_684_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next31423_fu_102 <= 5'd2;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvars_iv_next31423_fu_102 <= indvars_iv_next314_fu_758_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next32822_fu_98 <= 5'd2;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvars_iv_next32822_fu_98 <= indvars_iv_next328_fu_557_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j20_fu_90 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j20_fu_90 <= j_fu_420_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k21_fu_94 <= 4'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k21_fu_94 <= k_fu_495_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_3_reg_1007 <= add_ln48_3_fu_743_p2;
        add_ln48_reg_1002 <= add_ln48_fu_734_p2;
        and_ln11_reg_839 <= and_ln11_fu_366_p2;
        indvars_iv_next314_dup_reg_845 <= indvars_iv_next314_dup_fu_372_p2;
        k_mid2_reg_850 <= k_mid2_fu_384_p3;
        lshr_ln_reg_866 <= {{k_mid2_fu_384_p3[3:1]}};
        select_ln11_reg_833 <= select_ln11_fu_352_p3;
        trunc_ln38_reg_856 <= trunc_ln38_fu_392_p1;
        trunc_ln38_reg_856_pp0_iter1_reg <= trunc_ln38_reg_856;
        trunc_ln38_reg_856_pp0_iter2_reg <= trunc_ln38_reg_856_pp0_iter1_reg;
        zext_ln39_reg_986[12 : 0] <= zext_ln39_fu_721_p1[12 : 0];
        zext_ln39_reg_986_pp0_iter2_reg[12 : 0] <= zext_ln39_reg_986[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_4_reg_1012 <= add_ln48_4_fu_753_p2;
        empty_7_reg_887 <= empty_7_fu_455_p2;
        i_reg_875 <= i_fu_412_p3;
        j_reg_881 <= j_fu_420_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        icmp_ln36_reg_982 <= icmp_ln36_fu_698_p2;
        select_ln40_reg_937 <= select_ln40_fu_603_p3;
        select_ln43_reg_962 <= select_ln43_fu_651_p3;
        select_ln44_reg_967 <= select_ln44_fu_658_p3;
        select_ln45_reg_972 <= select_ln45_fu_665_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln37_reg_977 <= icmp_ln37_fu_692_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln38_reg_932 <= icmp_ln38_fu_563_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_1_reg_1022 <= grp_fu_295_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_reg_1017 <= grp_fu_295_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_306 <= grp_fu_299_p3;
    end
end
always @ (*) begin
    if (((icmp_ln36_fu_698_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if ((1'b1 == ap_condition_618)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_277_p4 = icmp_ln37_reg_977;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_277_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3725_phi_fu_277_p4 = icmp_ln37_reg_977;
        end
    end else begin
        ap_phi_mux_icmp_ln3725_phi_fu_277_p4 = icmp_ln37_reg_977;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_618)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_288_p4 = icmp_ln38_reg_932;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_288_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3824_phi_fu_288_p4 = icmp_ln38_reg_932;
        end
    end else begin
        ap_phi_mux_icmp_ln3824_phi_fu_288_p4 = icmp_ln38_reg_932;
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
        ap_sig_allocacmp_j20_load = j20_fu_90;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k21_load = 4'd1;
    end else begin
        ap_sig_allocacmp_k21_load = k21_fu_94;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_295_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_295_p0 = C_load;
    end else begin
        grp_fu_295_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_295_p1 = add_ln48_4_reg_1012;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_295_p1 = reg_306;
    end else begin
        grp_fu_295_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_299_p0 = trunc_ln38_reg_856_pp0_iter1_reg;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_299_p0 = trunc_ln38_reg_856;
        end else begin
            grp_fu_299_p0 = 'bx;
        end
    end else begin
        grp_fu_299_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln39_fu_721_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln41_fu_616_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd1))) begin
        orig_0_address0_local = zext_ln45_fu_551_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd0))) begin
        orig_0_address0_local = zext_ln43_fu_489_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln42_fu_645_p1;
        end else if ((1'b1 == ap_condition_630)) begin
            orig_0_address1_local = zext_ln44_fu_520_p1;
        end else if ((1'b1 == ap_condition_627)) begin
            orig_0_address1_local = zext_ln40_fu_474_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd0)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln39_fu_721_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln41_fu_616_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd0))) begin
        orig_1_address0_local = zext_ln45_fu_551_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd1))) begin
        orig_1_address0_local = zext_ln43_fu_489_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln42_fu_645_p1;
        end else if ((1'b1 == ap_condition_627)) begin
            orig_1_address1_local = zext_ln44_fu_520_p1;
        end else if ((1'b1 == ap_condition_630)) begin
            orig_1_address1_local = zext_ln40_fu_474_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd0)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_856_pp0_iter2_reg == 1'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln38_reg_856_pp0_iter2_reg == 1'd1))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
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
assign add_ln1_fu_467_p3 = {{empty_6_fu_445_p2}, {lshr_ln_reg_866}};
assign add_ln2_fu_610_p3 = {{empty_7_reg_887}, {lshr_ln_reg_866}};
assign add_ln36_fu_672_p2 = (indvar_flatten1417_fu_78 + 14'd1);
assign add_ln37_fu_678_p2 = (indvar_flatten19_fu_86 + 9'd1);
assign add_ln3_fu_637_p4 = {{{i_reg_875}, {empty_8_fu_630_p3}}, {lshr_ln_reg_866}};
assign add_ln44_1_fu_510_p4 = {{{i_fu_412_p3}, {j_fu_420_p3}}, {lshr_ln1_fu_500_p4}};
assign add_ln45_1_fu_541_p4 = {{{i_fu_412_p3}, {j_fu_420_p3}}, {lshr_ln2_fu_531_p4}};
assign add_ln45_fu_526_p2 = ($signed(k_mid2_reg_850) + $signed(4'd15));
assign add_ln48_1_fu_748_p2 = (add_ln48_reg_1002 + reg_306);
assign add_ln48_2_fu_739_p2 = (select_ln44_reg_967 + select_ln45_reg_972);
assign add_ln48_3_fu_743_p2 = (add_ln48_2_fu_739_p2 + select_ln43_reg_962);
assign add_ln48_4_fu_753_p2 = (add_ln48_3_reg_1007 + add_ln48_1_fu_748_p2);
assign add_ln48_5_fu_768_p2 = (mul_ln48_1_reg_1022 + mul_ln48_reg_1017);
assign add_ln48_fu_734_p2 = (select_ln40_reg_937 + select_ln42_fu_727_p3);
assign add_ln4_fu_480_p4 = {{{i_fu_412_p3}, {tmp2_fu_461_p2}}, {lshr_ln_reg_866}};
assign add_ln_fu_714_p4 = {{{i_reg_875}, {j_reg_881}}, {lshr_ln_reg_866}};
assign and_ln11_fu_366_p2 = (xor_ln11_fu_360_p2 & ap_phi_mux_icmp_ln3824_phi_fu_288_p4);
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
    ap_condition_618 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln36_reg_982 == 1'd0));
end
always @ (*) begin
    ap_condition_624 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln36_reg_982 == 1'd0));
end
always @ (*) begin
    ap_condition_627 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd0));
end
always @ (*) begin
    ap_condition_630 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (trunc_ln38_reg_856 == 1'd1));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_6_fu_445_p2 = (tmp_cast_cast_cast_fu_441_p1 + tmp_fu_425_p3);
assign empty_7_fu_455_p2 = ($signed(tmp1_cast_fu_451_p1) + $signed(tmp_fu_425_p3));
assign empty_8_fu_630_p3 = ((and_ln11_reg_839[0:0] == 1'b1) ? indvars_iv_next314_mid1_fu_598_p2 : select_ln11_1_fu_622_p3);
assign empty_fu_378_p2 = (ap_phi_mux_icmp_ln3725_phi_fu_277_p4 | and_ln11_fu_366_p2);
assign grp_fu_299_p3 = ((grp_fu_299_p0[0:0] == 1'b1) ? orig_1_q0 : orig_0_q0);
assign i_fu_412_p3 = ((icmp_ln3725_reg_274[0:0] == 1'b1) ? indvars_iv_next32822_fu_98 : i18_fu_82);
assign icmp_ln36_fu_698_p2 = ((indvar_flatten1417_fu_78 == 14'd12599) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_692_p2 = ((select_ln37_1_fu_684_p3 == 9'd420) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_563_p2 = ((k_fu_495_p2 == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next314_dup_fu_372_p2 = (select_ln11_fu_352_p3 + 5'd1);
assign indvars_iv_next314_fu_758_p2 = (j_reg_881 + 5'd1);
assign indvars_iv_next314_mid1_fu_598_p2 = (select_ln11_reg_833 + 5'd2);
assign indvars_iv_next328_fu_557_p2 = (i_fu_412_p3 + 5'd1);
assign j_fu_420_p3 = ((and_ln11_reg_839[0:0] == 1'b1) ? indvars_iv_next314_dup_reg_845 : select_ln11_reg_833);
assign k_fu_495_p2 = (k_mid2_reg_850 + 4'd1);
assign k_mid2_fu_384_p3 = ((empty_fu_378_p2[0:0] == 1'b1) ? 4'd1 : ap_sig_allocacmp_k21_load);
assign lshr_ln1_fu_500_p4 = {{k_fu_495_p2[3:1]}};
assign lshr_ln2_fu_531_p4 = {{add_ln45_fu_526_p2[3:1]}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign select_ln11_1_fu_622_p3 = ((icmp_ln3725_reg_274[0:0] == 1'b1) ? 5'd2 : indvars_iv_next31423_fu_102);
assign select_ln11_fu_352_p3 = ((ap_phi_mux_icmp_ln3725_phi_fu_277_p4[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j20_load);
assign select_ln37_1_fu_684_p3 = ((icmp_ln3725_reg_274[0:0] == 1'b1) ? 9'd1 : add_ln37_fu_678_p2);
assign select_ln40_fu_603_p3 = ((trunc_ln38_reg_856[0:0] == 1'b1) ? orig_1_q1 : orig_0_q1);
assign select_ln42_fu_727_p3 = ((trunc_ln38_reg_856[0:0] == 1'b1) ? orig_1_q1 : orig_0_q1);
assign select_ln43_fu_651_p3 = ((trunc_ln38_reg_856[0:0] == 1'b1) ? orig_1_q0 : orig_0_q0);
assign select_ln44_fu_658_p3 = ((trunc_ln38_reg_856[0:0] == 1'b1) ? orig_0_q1 : orig_1_q1);
assign select_ln45_fu_665_p3 = ((trunc_ln38_reg_856[0:0] == 1'b1) ? orig_0_q0 : orig_1_q0);
assign sol_0_address0 = zext_ln39_reg_986_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = add_ln48_5_fu_768_p2;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln39_reg_986_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = add_ln48_5_fu_768_p2;
assign sol_1_we0 = sol_1_we0_local;
assign tmp1_cast_fu_451_p1 = tmp_cast_cast_fu_433_p3;
assign tmp2_fu_461_p2 = ($signed(j_fu_420_p3) + $signed(5'd31));
assign tmp_cast_cast_cast_fu_441_p1 = $unsigned(tmp_cast_cast_fu_433_p3);
assign tmp_cast_cast_fu_433_p3 = {{1'd1}, {j_fu_420_p3}};
assign tmp_fu_425_p3 = {{i_fu_412_p3}, {5'd0}};
assign trunc_ln38_fu_392_p1 = k_mid2_fu_384_p3[0:0];
assign xor_ln11_fu_360_p2 = (ap_phi_mux_icmp_ln3725_phi_fu_277_p4 ^ 1'd1);
assign zext_ln39_fu_721_p1 = add_ln_fu_714_p4;
assign zext_ln40_fu_474_p1 = add_ln1_fu_467_p3;
assign zext_ln41_fu_616_p1 = add_ln2_fu_610_p3;
assign zext_ln42_fu_645_p1 = add_ln3_fu_637_p4;
assign zext_ln43_fu_489_p1 = add_ln4_fu_480_p4;
assign zext_ln44_fu_520_p1 = add_ln44_1_fu_510_p4;
assign zext_ln45_fu_551_p1 = add_ln45_1_fu_541_p4;
always @ (posedge ap_clk) begin
    zext_ln39_reg_986[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln39_reg_986_pp0_iter2_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 
