module stencil3d_stencil3d_Pipeline_loop_height_loop_col_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,orig_address0,orig_ce0,orig_q0,orig_address1,orig_ce1,orig_q1,C_load,C_load_1,sol_address0,sol_ce0,sol_we0,sol_d0); 
parameter    ap_ST_fsm_pp0_stage0 = 4'd1;
parameter    ap_ST_fsm_pp0_stage1 = 4'd2;
parameter    ap_ST_fsm_pp0_stage2 = 4'd4;
parameter    ap_ST_fsm_pp0_stage3 = 4'd8;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [13:0] orig_address0;
output   orig_ce0;
input  [31:0] orig_q0;
output  [13:0] orig_address1;
output   orig_ce1;
input  [31:0] orig_q1;
input  [31:0] C_load;
input  [31:0] C_load_1;
output  [13:0] sol_address0;
output   sol_ce0;
output   sol_we0;
output  [31:0] sol_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
wire   [0:0] icmp_ln36_fu_543_p2;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln3725_reg_188;
reg   [31:0] reg_213;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_218;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [4:0] select_ln11_fu_261_p3;
reg   [4:0] select_ln11_reg_665;
wire   [0:0] and_ln11_fu_275_p2;
reg   [0:0] and_ln11_reg_671;
wire   [4:0] indvars_iv_next314_dup_fu_281_p2;
reg   [4:0] indvars_iv_next314_dup_reg_678;
wire   [4:0] i_fu_296_p3;
reg   [4:0] i_reg_683;
wire   [3:0] k_mid2_fu_309_p3;
reg   [3:0] k_mid2_reg_691;
wire   [4:0] j_fu_317_p3;
reg   [4:0] j_reg_700;
wire   [0:0] icmp_ln38_fu_370_p2;
reg   [0:0] icmp_ln38_reg_718;
wire   [4:0] indvars_iv_next314_mid1_fu_396_p2;
reg   [4:0] indvars_iv_next314_mid1_reg_723;
wire   [9:0] empty_5_fu_429_p2;
reg   [9:0] empty_5_reg_728;
reg   [31:0] orig_load_4_reg_738;
wire   [4:0] indvars_iv_next314_fu_465_p2;
reg   [4:0] indvars_iv_next314_reg_748;
reg   [31:0] orig_load_5_reg_763;
wire   [0:0] icmp_ln37_fu_537_p2;
reg   [0:0] icmp_ln37_reg_768;
reg   [0:0] icmp_ln36_reg_773;
reg   [0:0] icmp_ln36_reg_773_pp0_iter1_reg;
wire   [63:0] zext_ln39_fu_570_p1;
reg   [63:0] zext_ln39_reg_777;
reg   [63:0] zext_ln39_reg_777_pp0_iter2_reg;
wire   [31:0] add_ln48_fu_575_p2;
reg   [31:0] add_ln48_reg_787;
wire   [31:0] add_ln48_3_fu_585_p2;
reg   [31:0] add_ln48_3_reg_792;
wire  signed [31:0] add_ln48_4_fu_596_p2;
reg  signed [31:0] add_ln48_4_reg_797;
wire   [31:0] grp_fu_209_p2;
reg   [31:0] mul_ln48_reg_802;
reg   [31:0] mul_ln48_1_reg_807;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] ap_phi_mux_icmp_ln3725_phi_fu_191_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln3824_phi_fu_202_p4;
wire   [63:0] zext_ln43_fu_338_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln44_fu_359_p1;
wire   [63:0] zext_ln40_fu_442_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln45_fu_460_p1;
wire   [63:0] zext_ln41_fu_499_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln42_fu_512_p1;
reg   [13:0] indvar_flatten1417_fu_70;
wire   [13:0] add_ln36_fu_531_p2;
reg   [4:0] i18_fu_74;
reg   [8:0] indvar_flatten19_fu_78;
wire   [8:0] select_ln37_1_fu_523_p3;
reg   [4:0] j20_fu_82;
reg   [4:0] ap_sig_allocacmp_j20_load;
reg   [3:0] k21_fu_86;
wire   [3:0] k_fu_343_p2;
reg   [4:0] indvars_iv_next32822_fu_90;
wire   [4:0] indvars_iv_next328_fu_364_p2;
reg   [4:0] indvars_iv_next31423_fu_94;
reg    orig_ce1_local;
reg   [13:0] orig_address1_local;
reg    orig_ce0_local;
reg   [13:0] orig_address0_local;
reg    sol_we0_local;
wire   [31:0] add_ln48_5_fu_601_p2;
reg    sol_ce0_local;
reg  signed [31:0] grp_fu_209_p0;
reg  signed [31:0] grp_fu_209_p1;
wire   [0:0] xor_ln11_fu_269_p2;
wire   [0:0] empty_fu_304_p2;
wire   [4:0] tmp2_fu_322_p2;
wire   [13:0] add_ln4_fu_328_p4;
wire   [13:0] add_ln44_1_fu_349_p4;
wire  signed [5:0] tmp_cast_cast_fu_408_p3;
wire   [9:0] tmp_cast_cast_cast_fu_415_p1;
wire   [9:0] tmp_fu_401_p3;
wire  signed [9:0] tmp1_cast_fu_425_p1;
wire   [9:0] empty_4_fu_419_p2;
wire   [13:0] add_ln1_fu_435_p3;
wire   [3:0] add_ln45_fu_447_p2;
wire   [13:0] add_ln45_1_fu_452_p4;
wire   [4:0] select_ln11_1_fu_479_p3;
wire   [13:0] add_ln2_fu_493_p3;
wire   [4:0] indvars_iv_next314_mid2_fu_487_p3;
wire   [13:0] add_ln3_fu_504_p4;
wire   [8:0] add_ln37_fu_517_p2;
wire   [13:0] add_ln_fu_563_p4;
wire   [31:0] add_ln48_2_fu_581_p2;
wire   [31:0] add_ln48_1_fu_591_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [3:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_546;
reg    ap_condition_553;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten1417_fu_70 = 14'd0;
#0 i18_fu_74 = 5'd0;
#0 indvar_flatten19_fu_78 = 9'd0;
#0 j20_fu_82 = 5'd0;
#0 k21_fu_86 = 4'd0;
#0 indvars_iv_next32822_fu_90 = 5'd0;
#0 indvars_iv_next31423_fu_94 = 5'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_209_p0),.din1(grp_fu_209_p1),.ce(1'b1),.dout(grp_fu_209_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        i18_fu_74 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i18_fu_74 <= i_fu_296_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_553)) begin
            icmp_ln3725_reg_188 <= icmp_ln37_reg_768;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln3725_reg_188 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten1417_fu_70 <= 14'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        indvar_flatten1417_fu_70 <= add_ln36_fu_531_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvar_flatten19_fu_78 <= 9'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        indvar_flatten19_fu_78 <= select_ln37_1_fu_523_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvars_iv_next31423_fu_94 <= 5'd2;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        indvars_iv_next31423_fu_94 <= indvars_iv_next314_reg_748;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        indvars_iv_next32822_fu_90 <= 5'd2;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvars_iv_next32822_fu_90 <= indvars_iv_next328_fu_364_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        j20_fu_82 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j20_fu_82 <= j_fu_317_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        k21_fu_86 <= 4'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k21_fu_86 <= k_fu_343_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_213 <= orig_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_213 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_3_reg_792 <= add_ln48_3_fu_585_p2;
        add_ln48_reg_787 <= add_ln48_fu_575_p2;
        and_ln11_reg_671 <= and_ln11_fu_275_p2;
        indvars_iv_next314_dup_reg_678 <= indvars_iv_next314_dup_fu_281_p2;
        select_ln11_reg_665 <= select_ln11_fu_261_p3;
        zext_ln39_reg_777[13 : 0] <= zext_ln39_fu_570_p1[13 : 0];
        zext_ln39_reg_777_pp0_iter2_reg[13 : 0] <= zext_ln39_reg_777[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_4_reg_797 <= add_ln48_4_fu_596_p2;
        i_reg_683 <= i_fu_296_p3;
        j_reg_700 <= j_fu_317_p3;
        k_mid2_reg_691 <= k_mid2_fu_309_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        empty_5_reg_728 <= empty_5_fu_429_p2;
        indvars_iv_next314_mid1_reg_723 <= indvars_iv_next314_mid1_fu_396_p2;
        indvars_iv_next314_reg_748 <= indvars_iv_next314_fu_465_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln36_reg_773 <= icmp_ln36_fu_543_p2;
        icmp_ln36_reg_773_pp0_iter1_reg <= icmp_ln36_reg_773;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln37_reg_768 <= icmp_ln37_fu_537_p2;
        orig_load_5_reg_763 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln38_reg_718 <= icmp_ln38_fu_370_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_1_reg_807 <= grp_fu_209_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln48_reg_802 <= grp_fu_209_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_load_4_reg_738 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_218 <= orig_q0;
    end
end
always @ (*) begin
    if (((icmp_ln36_fu_543_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln36_reg_773_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to1 = 1'b1;
    end else begin
        ap_idle_pp0_0to1 = 1'b0;
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
        if ((1'b1 == ap_condition_546)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_191_p4 = icmp_ln37_reg_768;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_191_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3725_phi_fu_191_p4 = icmp_ln37_reg_768;
        end
    end else begin
        ap_phi_mux_icmp_ln3725_phi_fu_191_p4 = icmp_ln37_reg_768;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_546)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_202_p4 = icmp_ln38_reg_718;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_202_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3824_phi_fu_202_p4 = icmp_ln38_reg_718;
        end
    end else begin
        ap_phi_mux_icmp_ln3824_phi_fu_202_p4 = icmp_ln38_reg_718;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
        ap_sig_allocacmp_j20_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j20_load = j20_fu_82;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_209_p0 = C_load_1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_209_p0 = reg_218;
        end else begin
            grp_fu_209_p0 = 'bx;
        end
    end else begin
        grp_fu_209_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_209_p1 = add_ln48_4_reg_797;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_209_p1 = C_load;
        end else begin
            grp_fu_209_p1 = 'bx;
        end
    end else begin
        grp_fu_209_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_address0_local = zext_ln39_fu_570_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_address0_local = zext_ln41_fu_499_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_address0_local = zext_ln40_fu_442_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_address0_local = zext_ln44_fu_359_p1;
    end else begin
        orig_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_address1_local = zext_ln42_fu_512_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address1_local = zext_ln45_fu_460_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address1_local = zext_ln43_fu_338_p1;
        end else begin
            orig_address1_local = 'bx;
        end
    end else begin
        orig_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_ce0_local = 1'b1;
    end else begin
        orig_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_ce1_local = 1'b1;
    end else begin
        orig_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_ce0_local = 1'b1;
    end else begin
        sol_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_we0_local = 1'b1;
    end else begin
        sol_we0_local = 1'b0;
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        ap_ST_fsm_pp0_stage2 : begin
            if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1_fu_435_p3 = {{empty_4_fu_419_p2}, {k_mid2_reg_691}};
assign add_ln2_fu_493_p3 = {{empty_5_reg_728}, {k_mid2_reg_691}};
assign add_ln36_fu_531_p2 = (indvar_flatten1417_fu_70 + 14'd1);
assign add_ln37_fu_517_p2 = (indvar_flatten19_fu_78 + 9'd1);
assign add_ln3_fu_504_p4 = {{{i_reg_683}, {indvars_iv_next314_mid2_fu_487_p3}}, {k_mid2_reg_691}};
assign add_ln44_1_fu_349_p4 = {{{i_fu_296_p3}, {j_fu_317_p3}}, {k_fu_343_p2}};
assign add_ln45_1_fu_452_p4 = {{{i_reg_683}, {j_reg_700}}, {add_ln45_fu_447_p2}};
assign add_ln45_fu_447_p2 = ($signed(k_mid2_reg_691) + $signed(4'd15));
assign add_ln48_1_fu_591_p2 = (add_ln48_reg_787 + reg_213);
assign add_ln48_2_fu_581_p2 = (orig_load_4_reg_738 + orig_load_5_reg_763);
assign add_ln48_3_fu_585_p2 = (add_ln48_2_fu_581_p2 + reg_213);
assign add_ln48_4_fu_596_p2 = (add_ln48_3_reg_792 + add_ln48_1_fu_591_p2);
assign add_ln48_5_fu_601_p2 = (mul_ln48_1_reg_807 + mul_ln48_reg_802);
assign add_ln48_fu_575_p2 = (reg_218 + orig_q1);
assign add_ln4_fu_328_p4 = {{{i_fu_296_p3}, {tmp2_fu_322_p2}}, {k_mid2_fu_309_p3}};
assign add_ln_fu_563_p4 = {{{i_reg_683}, {j_reg_700}}, {k_mid2_reg_691}};
assign and_ln11_fu_275_p2 = (xor_ln11_fu_269_p2 & ap_phi_mux_icmp_ln3824_phi_fu_202_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_546 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln36_reg_773 == 1'd0));
end
always @ (*) begin
    ap_condition_553 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln36_reg_773 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign empty_4_fu_419_p2 = (tmp_cast_cast_cast_fu_415_p1 + tmp_fu_401_p3);
assign empty_5_fu_429_p2 = ($signed(tmp1_cast_fu_425_p1) + $signed(tmp_fu_401_p3));
assign empty_fu_304_p2 = (icmp_ln3725_reg_188 | and_ln11_reg_671);
assign i_fu_296_p3 = ((icmp_ln3725_reg_188[0:0] == 1'b1) ? indvars_iv_next32822_fu_90 : i18_fu_74);
assign icmp_ln36_fu_543_p2 = ((indvar_flatten1417_fu_70 == 14'd12599) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_537_p2 = ((select_ln37_1_fu_523_p3 == 9'd420) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_370_p2 = ((k_fu_343_p2 == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next314_dup_fu_281_p2 = (select_ln11_fu_261_p3 + 5'd1);
assign indvars_iv_next314_fu_465_p2 = (j_reg_700 + 5'd1);
assign indvars_iv_next314_mid1_fu_396_p2 = (select_ln11_reg_665 + 5'd2);
assign indvars_iv_next314_mid2_fu_487_p3 = ((and_ln11_reg_671[0:0] == 1'b1) ? indvars_iv_next314_mid1_reg_723 : select_ln11_1_fu_479_p3);
assign indvars_iv_next328_fu_364_p2 = (i_fu_296_p3 + 5'd1);
assign j_fu_317_p3 = ((and_ln11_reg_671[0:0] == 1'b1) ? indvars_iv_next314_dup_reg_678 : select_ln11_reg_665);
assign k_fu_343_p2 = (k_mid2_fu_309_p3 + 4'd1);
assign k_mid2_fu_309_p3 = ((empty_fu_304_p2[0:0] == 1'b1) ? 4'd1 : k21_fu_86);
assign orig_address0 = orig_address0_local;
assign orig_address1 = orig_address1_local;
assign orig_ce0 = orig_ce0_local;
assign orig_ce1 = orig_ce1_local;
assign select_ln11_1_fu_479_p3 = ((icmp_ln3725_reg_188[0:0] == 1'b1) ? 5'd2 : indvars_iv_next31423_fu_94);
assign select_ln11_fu_261_p3 = ((ap_phi_mux_icmp_ln3725_phi_fu_191_p4[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j20_load);
assign select_ln37_1_fu_523_p3 = ((icmp_ln3725_reg_188[0:0] == 1'b1) ? 9'd1 : add_ln37_fu_517_p2);
assign sol_address0 = zext_ln39_reg_777_pp0_iter2_reg;
assign sol_ce0 = sol_ce0_local;
assign sol_d0 = add_ln48_5_fu_601_p2;
assign sol_we0 = sol_we0_local;
assign tmp1_cast_fu_425_p1 = tmp_cast_cast_fu_408_p3;
assign tmp2_fu_322_p2 = ($signed(j_fu_317_p3) + $signed(5'd31));
assign tmp_cast_cast_cast_fu_415_p1 = $unsigned(tmp_cast_cast_fu_408_p3);
assign tmp_cast_cast_fu_408_p3 = {{1'd1}, {j_reg_700}};
assign tmp_fu_401_p3 = {{i_reg_683}, {5'd0}};
assign xor_ln11_fu_269_p2 = (ap_phi_mux_icmp_ln3725_phi_fu_191_p4 ^ 1'd1);
assign zext_ln39_fu_570_p1 = add_ln_fu_563_p4;
assign zext_ln40_fu_442_p1 = add_ln1_fu_435_p3;
assign zext_ln41_fu_499_p1 = add_ln2_fu_493_p3;
assign zext_ln42_fu_512_p1 = add_ln3_fu_504_p4;
assign zext_ln43_fu_338_p1 = add_ln4_fu_328_p4;
assign zext_ln44_fu_359_p1 = add_ln44_1_fu_349_p4;
assign zext_ln45_fu_460_p1 = add_ln45_1_fu_452_p4;
always @ (posedge ap_clk) begin
    zext_ln39_reg_777[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln39_reg_777_pp0_iter2_reg[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 