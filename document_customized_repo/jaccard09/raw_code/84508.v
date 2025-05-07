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
reg   [0:0] icmp_ln36_reg_591;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_182;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg   [31:0] reg_187;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] icmp_ln36_fu_220_p2;
reg   [0:0] icmp_ln36_reg_591_pp0_iter1_reg;
reg   [3:0] k_load_reg_595;
reg   [4:0] j_load_reg_600;
wire   [0:0] icmp_ln37_fu_241_p2;
reg   [0:0] icmp_ln37_reg_605;
wire   [4:0] select_ln11_fu_247_p3;
reg   [4:0] select_ln11_reg_612;
wire   [0:0] and_ln11_fu_267_p2;
reg   [0:0] and_ln11_reg_618;
wire   [4:0] indvars_iv_next19_dup_fu_273_p2;
reg   [4:0] indvars_iv_next19_dup_reg_625;
wire   [4:0] select_ln36_fu_324_p3;
reg   [4:0] select_ln36_reg_630;
wire   [3:0] k_2_mid2_fu_335_p3;
reg   [3:0] k_2_mid2_reg_638;
wire   [4:0] indvars_iv_next19_mid2_fu_347_p3;
reg   [4:0] indvars_iv_next19_mid2_reg_647;
wire   [4:0] select_ln37_fu_354_p3;
reg   [4:0] select_ln37_reg_652;
wire   [9:0] empty_6_fu_444_p2;
reg   [9:0] empty_6_reg_669;
reg   [31:0] orig_load_5_reg_679;
reg   [31:0] orig_load_6_reg_699;
wire   [63:0] zext_ln39_fu_510_p1;
reg   [63:0] zext_ln39_reg_704;
reg   [63:0] zext_ln39_reg_704_pp0_iter2_reg;
wire   [31:0] add_ln48_fu_515_p2;
reg   [31:0] add_ln48_reg_714;
wire   [31:0] add_ln48_3_fu_525_p2;
reg   [31:0] add_ln48_3_reg_719;
wire  signed [31:0] add_ln48_4_fu_536_p2;
reg  signed [31:0] add_ln48_4_reg_724;
wire   [31:0] grp_fu_178_p2;
reg   [31:0] mul_ln48_reg_729;
reg   [31:0] mul_ln48_1_reg_734;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln43_fu_375_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln44_fu_396_p1;
wire   [63:0] zext_ln40_fu_457_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln45_fu_475_p1;
wire   [63:0] zext_ln41_fu_486_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln42_fu_498_p1;
wire    ap_block_pp0_stage0;
reg   [3:0] k_fu_68;
wire   [3:0] add_ln44_fu_380_p2;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_load;
reg   [4:0] j_fu_72;
reg   [4:0] ap_sig_allocacmp_j_load;
reg   [8:0] indvar_flatten20_fu_76;
wire   [8:0] select_ln37_1_fu_285_p3;
reg   [8:0] ap_sig_allocacmp_indvar_flatten20_load;
reg   [4:0] i_fu_80;
reg   [13:0] indvar_flatten35_fu_84;
wire   [13:0] add_ln36_fu_226_p2;
reg   [13:0] ap_sig_allocacmp_indvar_flatten35_load;
reg    orig_ce1_local;
reg   [13:0] orig_address1_local;
reg    orig_ce0_local;
reg   [13:0] orig_address0_local;
reg    sol_we0_local;
wire   [31:0] add_ln48_5_fu_541_p2;
reg    sol_ce0_local;
reg  signed [31:0] grp_fu_178_p0;
reg  signed [31:0] grp_fu_178_p1;
wire   [0:0] icmp_ln38_fu_261_p2;
wire   [0:0] xor_ln11_fu_255_p2;
wire   [8:0] add_ln37_fu_279_p2;
wire   [4:0] indvars_iv_next1954_fu_306_p2;
wire   [4:0] indvars_iv_next3347_fu_318_p2;
wire   [0:0] empty_fu_331_p2;
wire   [4:0] indvars_iv_next19_mid1_fu_342_p2;
wire   [4:0] select_ln11_1_fu_311_p3;
wire   [4:0] tmp3_fu_359_p2;
wire   [13:0] add_ln6_fu_365_p4;
wire   [13:0] add_ln44_1_fu_386_p4;
wire  signed [5:0] tmp1_cast_cast_fu_423_p3;
wire   [9:0] tmp1_cast_cast_cast_fu_430_p1;
wire   [9:0] tmp_3_fu_416_p3;
wire  signed [9:0] tmp2_cast_fu_440_p1;
wire   [9:0] empty_5_fu_434_p2;
wire   [13:0] add_ln3_fu_450_p3;
wire   [3:0] add_ln45_fu_462_p2;
wire   [13:0] add_ln45_1_fu_467_p4;
wire   [13:0] add_ln4_fu_480_p3;
wire   [13:0] add_ln5_fu_491_p4;
wire   [13:0] add_ln2_fu_503_p4;
wire   [31:0] add_ln48_2_fu_521_p2;
wire   [31:0] add_ln48_1_fu_531_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage1;
reg    ap_idle_pp0_0to0;
reg   [3:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 4'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_68 = 4'd0;
#0 j_fu_72 = 5'd0;
#0 indvar_flatten20_fu_76 = 9'd0;
#0 i_fu_80 = 5'd0;
#0 indvar_flatten35_fu_84 = 14'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_178_p0),.din1(grp_fu_178_p1),.ce(1'b1),.dout(grp_fu_178_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_80 <= 5'd1;
    end else if (((icmp_ln36_reg_591 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_80 <= select_ln36_fu_324_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln36_fu_220_p2 == 1'd0))) begin
            indvar_flatten20_fu_76 <= select_ln37_1_fu_285_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_76 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln36_fu_220_p2 == 1'd0))) begin
            indvar_flatten35_fu_84 <= add_ln36_fu_226_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_fu_84 <= 14'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_72 <= 5'd1;
    end else if (((icmp_ln36_reg_591 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_72 <= select_ln37_fu_354_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_68 <= 4'd1;
    end else if (((icmp_ln36_reg_591 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k_fu_68 <= add_ln44_fu_380_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_182 <= orig_q0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_182 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_3_reg_719 <= add_ln48_3_fu_525_p2;
        add_ln48_reg_714 <= add_ln48_fu_515_p2;
        and_ln11_reg_618 <= and_ln11_fu_267_p2;
        icmp_ln36_reg_591 <= icmp_ln36_fu_220_p2;
        icmp_ln36_reg_591_pp0_iter1_reg <= icmp_ln36_reg_591;
        icmp_ln37_reg_605 <= icmp_ln37_fu_241_p2;
        indvars_iv_next19_dup_reg_625 <= indvars_iv_next19_dup_fu_273_p2;
        j_load_reg_600 <= ap_sig_allocacmp_j_load;
        k_load_reg_595 <= ap_sig_allocacmp_k_load;
        select_ln11_reg_612 <= select_ln11_fu_247_p3;
        zext_ln39_reg_704[13 : 0] <= zext_ln39_fu_510_p1[13 : 0];
        zext_ln39_reg_704_pp0_iter2_reg[13 : 0] <= zext_ln39_reg_704[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_4_reg_724 <= add_ln48_4_fu_536_p2;
        indvars_iv_next19_mid2_reg_647 <= indvars_iv_next19_mid2_fu_347_p3;
        k_2_mid2_reg_638 <= k_2_mid2_fu_335_p3;
        select_ln36_reg_630 <= select_ln36_fu_324_p3;
        select_ln37_reg_652 <= select_ln37_fu_354_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        empty_6_reg_669 <= empty_6_fu_444_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_1_reg_734 <= grp_fu_178_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln48_reg_729 <= grp_fu_178_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_load_5_reg_679 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_load_6_reg_699 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_187 <= orig_q0;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_591 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln36_reg_591_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten20_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 14'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_load = 4'd1;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_68;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_178_p0 = C_load_1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_178_p0 = reg_187;
        end else begin
            grp_fu_178_p0 = 'bx;
        end
    end else begin
        grp_fu_178_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_178_p1 = add_ln48_4_reg_724;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_178_p1 = C_load;
        end else begin
            grp_fu_178_p1 = 'bx;
        end
    end else begin
        grp_fu_178_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_address0_local = zext_ln39_fu_510_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_address0_local = zext_ln41_fu_486_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_address0_local = zext_ln40_fu_457_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_address0_local = zext_ln44_fu_396_p1;
    end else begin
        orig_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            orig_address1_local = zext_ln42_fu_498_p1;
        end else if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address1_local = zext_ln45_fu_475_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address1_local = zext_ln43_fu_375_p1;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
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
assign add_ln2_fu_503_p4 = {{{select_ln36_reg_630}, {select_ln37_reg_652}}, {k_2_mid2_reg_638}};
assign add_ln36_fu_226_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 14'd1);
assign add_ln37_fu_279_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 9'd1);
assign add_ln3_fu_450_p3 = {{empty_5_fu_434_p2}, {k_2_mid2_reg_638}};
assign add_ln44_1_fu_386_p4 = {{{select_ln36_fu_324_p3}, {select_ln37_fu_354_p3}}, {add_ln44_fu_380_p2}};
assign add_ln44_fu_380_p2 = (k_2_mid2_fu_335_p3 + 4'd1);
assign add_ln45_1_fu_467_p4 = {{{select_ln36_reg_630}, {select_ln37_reg_652}}, {add_ln45_fu_462_p2}};
assign add_ln45_fu_462_p2 = ($signed(k_2_mid2_reg_638) + $signed(4'd15));
assign add_ln48_1_fu_531_p2 = (add_ln48_reg_714 + reg_182);
assign add_ln48_2_fu_521_p2 = (orig_load_5_reg_679 + orig_load_6_reg_699);
assign add_ln48_3_fu_525_p2 = (add_ln48_2_fu_521_p2 + reg_182);
assign add_ln48_4_fu_536_p2 = (add_ln48_3_reg_719 + add_ln48_1_fu_531_p2);
assign add_ln48_5_fu_541_p2 = (mul_ln48_1_reg_734 + mul_ln48_reg_729);
assign add_ln48_fu_515_p2 = (reg_187 + orig_q1);
assign add_ln4_fu_480_p3 = {{empty_6_reg_669}, {k_2_mid2_reg_638}};
assign add_ln5_fu_491_p4 = {{{select_ln36_reg_630}, {indvars_iv_next19_mid2_reg_647}}, {k_2_mid2_reg_638}};
assign add_ln6_fu_365_p4 = {{{select_ln36_fu_324_p3}, {tmp3_fu_359_p2}}, {k_2_mid2_fu_335_p3}};
assign and_ln11_fu_267_p2 = (xor_ln11_fu_255_p2 & icmp_ln38_fu_261_p2);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign empty_5_fu_434_p2 = (tmp1_cast_cast_cast_fu_430_p1 + tmp_3_fu_416_p3);
assign empty_6_fu_444_p2 = ($signed(tmp2_cast_fu_440_p1) + $signed(tmp_3_fu_416_p3));
assign empty_fu_331_p2 = (icmp_ln37_reg_605 | and_ln11_reg_618);
assign icmp_ln36_fu_220_p2 = ((ap_sig_allocacmp_indvar_flatten35_load == 14'd12600) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_241_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 9'd420) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_261_p2 = ((ap_sig_allocacmp_k_load == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next1954_fu_306_p2 = (j_load_reg_600 + 5'd1);
assign indvars_iv_next19_dup_fu_273_p2 = (select_ln11_fu_247_p3 + 5'd1);
assign indvars_iv_next19_mid1_fu_342_p2 = (select_ln11_reg_612 + 5'd2);
assign indvars_iv_next19_mid2_fu_347_p3 = ((and_ln11_reg_618[0:0] == 1'b1) ? indvars_iv_next19_mid1_fu_342_p2 : select_ln11_1_fu_311_p3);
assign indvars_iv_next3347_fu_318_p2 = (i_fu_80 + 5'd1);
assign k_2_mid2_fu_335_p3 = ((empty_fu_331_p2[0:0] == 1'b1) ? 4'd1 : k_load_reg_595);
assign orig_address0 = orig_address0_local;
assign orig_address1 = orig_address1_local;
assign orig_ce0 = orig_ce0_local;
assign orig_ce1 = orig_ce1_local;
assign select_ln11_1_fu_311_p3 = ((icmp_ln37_reg_605[0:0] == 1'b1) ? 5'd2 : indvars_iv_next1954_fu_306_p2);
assign select_ln11_fu_247_p3 = ((icmp_ln37_fu_241_p2[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j_load);
assign select_ln36_fu_324_p3 = ((icmp_ln37_reg_605[0:0] == 1'b1) ? indvars_iv_next3347_fu_318_p2 : i_fu_80);
assign select_ln37_1_fu_285_p3 = ((icmp_ln37_fu_241_p2[0:0] == 1'b1) ? 9'd1 : add_ln37_fu_279_p2);
assign select_ln37_fu_354_p3 = ((and_ln11_reg_618[0:0] == 1'b1) ? indvars_iv_next19_dup_reg_625 : select_ln11_reg_612);
assign sol_address0 = zext_ln39_reg_704_pp0_iter2_reg;
assign sol_ce0 = sol_ce0_local;
assign sol_d0 = add_ln48_5_fu_541_p2;
assign sol_we0 = sol_we0_local;
assign tmp1_cast_cast_cast_fu_430_p1 = $unsigned(tmp1_cast_cast_fu_423_p3);
assign tmp1_cast_cast_fu_423_p3 = {{1'd1}, {select_ln37_reg_652}};
assign tmp2_cast_fu_440_p1 = tmp1_cast_cast_fu_423_p3;
assign tmp3_fu_359_p2 = ($signed(select_ln37_fu_354_p3) + $signed(5'd31));
assign tmp_3_fu_416_p3 = {{select_ln36_reg_630}, {5'd0}};
assign xor_ln11_fu_255_p2 = (icmp_ln37_fu_241_p2 ^ 1'd1);
assign zext_ln39_fu_510_p1 = add_ln2_fu_503_p4;
assign zext_ln40_fu_457_p1 = add_ln3_fu_450_p3;
assign zext_ln41_fu_486_p1 = add_ln4_fu_480_p3;
assign zext_ln42_fu_498_p1 = add_ln5_fu_491_p4;
assign zext_ln43_fu_375_p1 = add_ln6_fu_365_p4;
assign zext_ln44_fu_396_p1 = add_ln44_1_fu_386_p4;
assign zext_ln45_fu_475_p1 = add_ln45_1_fu_467_p4;
always @ (posedge ap_clk) begin
    zext_ln39_reg_704[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln39_reg_704_pp0_iter2_reg[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 