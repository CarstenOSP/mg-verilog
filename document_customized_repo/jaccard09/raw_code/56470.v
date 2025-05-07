module stencil3d_stencil3d_Pipeline_loop_height_loop_col_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,C_load,C_load_1); 
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
output  [12:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [12:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [12:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [12:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
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
wire   [0:0] icmp_ln36_fu_685_p2;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln3725_reg_262;
reg   [31:0] reg_291;
wire    ap_block_pp0_stage2_11001;
wire    ap_block_pp0_stage0_11001;
reg  signed [31:0] reg_296;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [31:0] reg_301;
reg   [31:0] reg_306;
wire   [31:0] grp_fu_287_p2;
reg   [31:0] reg_311;
wire   [4:0] select_ln11_fu_353_p3;
reg   [4:0] select_ln11_reg_876;
wire   [0:0] and_ln11_fu_367_p2;
reg   [0:0] and_ln11_reg_882;
wire   [4:0] indvars_iv_next320_dup_fu_373_p2;
reg   [4:0] indvars_iv_next320_dup_reg_889;
wire   [4:0] i_fu_388_p3;
reg   [4:0] i_reg_894;
wire   [4:0] j_fu_409_p3;
reg   [4:0] j_reg_902;
wire   [4:0] tmp2_fu_414_p2;
reg   [4:0] tmp2_reg_908;
wire   [2:0] lshr_ln_fu_420_p4;
reg   [2:0] lshr_ln_reg_913;
wire   [63:0] zext_ln39_1_fu_444_p1;
reg   [63:0] zext_ln39_1_reg_920;
reg   [63:0] zext_ln39_1_reg_920_pp0_iter1_reg;
reg   [63:0] zext_ln39_1_reg_920_pp0_iter2_reg;
wire   [2:0] lshr_ln1_fu_470_p4;
reg   [2:0] lshr_ln1_reg_931;
wire   [63:0] zext_ln44_fu_490_p1;
reg   [63:0] zext_ln44_reg_939;
reg   [63:0] zext_ln44_reg_939_pp0_iter1_reg;
reg   [63:0] zext_ln44_reg_939_pp0_iter2_reg;
wire   [0:0] icmp_ln38_fu_528_p2;
reg   [0:0] icmp_ln38_reg_959;
wire   [4:0] indvars_iv_next320_mid2_fu_576_p3;
reg   [4:0] indvars_iv_next320_mid2_reg_964;
wire   [9:0] empty_6_fu_601_p2;
reg   [9:0] empty_6_reg_969;
wire   [9:0] empty_7_fu_611_p2;
reg   [9:0] empty_7_reg_974;
wire   [0:0] icmp_ln37_fu_679_p2;
reg   [0:0] icmp_ln37_reg_1000;
reg   [0:0] icmp_ln36_reg_1005;
reg   [0:0] icmp_ln36_reg_1005_pp0_iter1_reg;
reg   [0:0] icmp_ln36_reg_1005_pp0_iter2_reg;
reg   [31:0] orig_1_load_reg_1009;
wire   [31:0] add_ln48_3_fu_735_p2;
reg   [31:0] add_ln48_3_reg_1024;
reg   [31:0] orig_0_load_4_reg_1039;
wire   [31:0] add_ln48_fu_763_p2;
reg   [31:0] add_ln48_reg_1044;
wire   [31:0] add_ln48_6_fu_768_p2;
reg   [31:0] add_ln48_6_reg_1049;
wire   [31:0] add_ln48_9_fu_779_p2;
reg   [31:0] add_ln48_9_reg_1054;
wire   [31:0] grp_fu_283_p2;
reg   [31:0] mul_ln48_2_reg_1059;
reg   [31:0] mul_ln48_2_reg_1059_pp0_iter2_reg;
wire  signed [31:0] add_ln48_4_fu_790_p2;
reg  signed [31:0] add_ln48_4_reg_1064;
reg   [31:0] mul_ln48_reg_1069;
wire  signed [31:0] add_ln48_10_fu_800_p2;
reg  signed [31:0] add_ln48_10_reg_1074;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_icmp_ln3725_phi_fu_265_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln3824_phi_fu_276_p4;
wire   [63:0] zext_ln43_fu_459_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln44_1_fu_517_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln40_fu_624_p1;
wire   [63:0] zext_ln42_1_fu_637_p1;
wire   [63:0] zext_ln43_1_fu_649_p1;
wire   [63:0] zext_ln41_fu_712_p1;
wire   [63:0] zext_ln42_fu_724_p1;
wire   [63:0] zext_ln40_1_fu_747_p1;
wire   [63:0] zext_ln41_1_fu_758_p1;
reg   [12:0] indvar_flatten1417_fu_82;
wire   [12:0] add_ln36_fu_668_p2;
reg   [4:0] i18_fu_86;
reg   [7:0] indvar_flatten19_fu_90;
wire   [7:0] select_ln37_1_fu_660_p3;
reg   [4:0] j20_fu_94;
reg   [4:0] ap_sig_allocacmp_j20_load;
reg   [3:0] k21_fu_98;
wire   [3:0] k_fu_495_p2;
reg   [4:0] indvars_iv_next33322_fu_102;
wire   [4:0] indvars_iv_next333_fu_522_p2;
reg   [4:0] indvars_iv_next32023_fu_106;
wire   [4:0] indvars_iv_next320_fu_674_p2;
reg    orig_1_ce1_local;
reg   [12:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [12:0] orig_1_address0_local;
reg    orig_0_ce1_local;
reg   [12:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [12:0] orig_0_address0_local;
reg    sol_1_we0_local;
wire   [31:0] add_ln48_5_fu_805_p2;
reg    sol_1_ce0_local;
reg    sol_0_we0_local;
wire   [31:0] add_ln48_11_fu_811_p2;
reg    sol_0_ce0_local;
reg  signed [31:0] grp_fu_283_p0;
reg  signed [31:0] grp_fu_287_p1;
wire   [0:0] xor_ln11_fu_361_p2;
wire   [0:0] empty_fu_396_p2;
wire   [3:0] k_mid2_fu_401_p3;
wire   [12:0] add_ln_fu_434_p4;
wire   [12:0] add_ln4_fu_449_p4;
wire   [3:0] add_ln44_fu_464_p2;
wire   [12:0] add_ln44_1_fu_480_p4;
wire   [12:0] zext_ln39_fu_430_p1;
wire   [12:0] or_ln_fu_501_p4;
wire   [12:0] add_ln44_3_fu_511_p2;
wire   [4:0] indvars_iv_next320_mid1_fu_571_p2;
wire   [4:0] select_ln11_1_fu_563_p3;
wire  signed [5:0] tmp_cast_cast_fu_590_p3;
wire   [9:0] tmp_cast_cast_cast_fu_597_p1;
wire   [9:0] tmp_fu_583_p3;
wire  signed [9:0] tmp1_cast_fu_607_p1;
wire   [12:0] add_ln1_fu_617_p3;
wire   [12:0] add_ln42_1_fu_629_p4;
wire   [12:0] add_ln43_1_fu_642_p4;
wire   [7:0] add_ln37_fu_654_p2;
wire   [12:0] add_ln2_fu_706_p3;
wire   [12:0] add_ln3_fu_717_p4;
wire   [31:0] add_ln48_2_fu_729_p2;
wire   [12:0] add_ln40_1_fu_741_p3;
wire   [12:0] add_ln41_1_fu_752_p3;
wire  signed [31:0] add_ln48_6_fu_768_p0;
wire   [31:0] add_ln48_8_fu_774_p2;
wire   [31:0] add_ln48_1_fu_785_p2;
wire   [31:0] add_ln48_7_fu_795_p1;
wire   [31:0] add_ln48_7_fu_795_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_682;
reg    ap_condition_688;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten1417_fu_82 = 13'd0;
#0 i18_fu_86 = 5'd0;
#0 indvar_flatten19_fu_90 = 8'd0;
#0 j20_fu_94 = 5'd0;
#0 k21_fu_98 = 4'd0;
#0 indvars_iv_next33322_fu_102 = 5'd0;
#0 indvars_iv_next32023_fu_106 = 5'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_283_p0),.din1(C_load),.ce(1'b1),.dout(grp_fu_283_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(C_load_1),.din1(grp_fu_287_p1),.ce(1'b1),.dout(grp_fu_287_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i18_fu_86 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i18_fu_86 <= i_fu_388_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_688)) begin
            icmp_ln3725_reg_262 <= icmp_ln37_reg_1000;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln3725_reg_262 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten1417_fu_82 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten1417_fu_82 <= add_ln36_fu_668_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten19_fu_90 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten19_fu_90 <= select_ln37_1_fu_660_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next32023_fu_106 <= 5'd2;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvars_iv_next32023_fu_106 <= indvars_iv_next320_fu_674_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next33322_fu_102 <= 5'd2;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvars_iv_next33322_fu_102 <= indvars_iv_next333_fu_522_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j20_fu_94 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j20_fu_94 <= j_fu_409_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k21_fu_98 <= 4'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k21_fu_98 <= k_fu_495_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_301 <= orig_0_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_301 <= orig_0_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reg_306 <= orig_1_q1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reg_306 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_10_reg_1074 <= add_ln48_10_fu_800_p2;
        add_ln48_4_reg_1064 <= add_ln48_4_fu_790_p2;
        empty_6_reg_969 <= empty_6_fu_601_p2;
        empty_7_reg_974 <= empty_7_fu_611_p2;
        icmp_ln36_reg_1005 <= icmp_ln36_fu_685_p2;
        icmp_ln36_reg_1005_pp0_iter1_reg <= icmp_ln36_reg_1005;
        icmp_ln36_reg_1005_pp0_iter2_reg <= icmp_ln36_reg_1005_pp0_iter1_reg;
        indvars_iv_next320_mid2_reg_964 <= indvars_iv_next320_mid2_fu_576_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_3_reg_1024 <= add_ln48_3_fu_735_p2;
        and_ln11_reg_882 <= and_ln11_fu_367_p2;
        indvars_iv_next320_dup_reg_889 <= indvars_iv_next320_dup_fu_373_p2;
        select_ln11_reg_876 <= select_ln11_fu_353_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_6_reg_1049 <= add_ln48_6_fu_768_p2;
        add_ln48_9_reg_1054 <= add_ln48_9_fu_779_p2;
        add_ln48_reg_1044 <= add_ln48_fu_763_p2;
        i_reg_894 <= i_fu_388_p3;
        j_reg_902 <= j_fu_409_p3;
        lshr_ln1_reg_931 <= {{add_ln44_fu_464_p2[3:1]}};
        lshr_ln_reg_913 <= {{k_mid2_fu_401_p3[3:1]}};
        mul_ln48_2_reg_1059_pp0_iter2_reg <= mul_ln48_2_reg_1059;
        tmp2_reg_908 <= tmp2_fu_414_p2;
        zext_ln39_1_reg_920[12 : 0] <= zext_ln39_1_fu_444_p1[12 : 0];
        zext_ln39_1_reg_920_pp0_iter1_reg[12 : 0] <= zext_ln39_1_reg_920[12 : 0];
        zext_ln39_1_reg_920_pp0_iter2_reg[12 : 0] <= zext_ln39_1_reg_920_pp0_iter1_reg[12 : 0];
        zext_ln44_reg_939[12 : 0] <= zext_ln44_fu_490_p1[12 : 0];
        zext_ln44_reg_939_pp0_iter1_reg[12 : 0] <= zext_ln44_reg_939[12 : 0];
        zext_ln44_reg_939_pp0_iter2_reg[12 : 0] <= zext_ln44_reg_939_pp0_iter1_reg[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln37_reg_1000 <= icmp_ln37_fu_679_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln38_reg_959 <= icmp_ln38_fu_528_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln48_2_reg_1059 <= grp_fu_283_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_reg_1069 <= grp_fu_283_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_load_4_reg_1039 <= orig_0_q0;
        orig_1_load_reg_1009 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_291 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_296 <= orig_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_311 <= grp_fu_287_p2;
    end
end
always @ (*) begin
    if (((icmp_ln36_fu_685_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln36_reg_1005_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_682)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_265_p4 = icmp_ln37_reg_1000;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_265_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3725_phi_fu_265_p4 = icmp_ln37_reg_1000;
        end
    end else begin
        ap_phi_mux_icmp_ln3725_phi_fu_265_p4 = icmp_ln37_reg_1000;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_682)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_276_p4 = icmp_ln38_reg_959;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_276_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3824_phi_fu_276_p4 = icmp_ln38_reg_959;
        end
    end else begin
        ap_phi_mux_icmp_ln3824_phi_fu_276_p4 = icmp_ln38_reg_959;
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
        ap_sig_allocacmp_j20_load = j20_fu_94;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_283_p0 = reg_291;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_283_p0 = reg_296;
        end else begin
            grp_fu_283_p0 = 'bx;
        end
    end else begin
        grp_fu_283_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_287_p1 = add_ln48_10_reg_1074;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_287_p1 = add_ln48_4_reg_1064;
        end else begin
            grp_fu_287_p1 = 'bx;
        end
    end else begin
        grp_fu_287_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln41_1_fu_758_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln43_1_fu_649_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln39_1_fu_444_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address1_local = zext_ln40_1_fu_747_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address1_local = zext_ln42_1_fu_637_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address1_local = zext_ln44_fu_490_p1;
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln42_fu_724_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln40_fu_624_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln44_1_fu_517_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address1_local = zext_ln41_fu_712_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address1_local = zext_ln39_1_reg_920;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address1_local = zext_ln43_fu_459_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
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
assign add_ln1_fu_617_p3 = {{empty_6_fu_601_p2}, {lshr_ln_reg_913}};
assign add_ln2_fu_706_p3 = {{empty_7_reg_974}, {lshr_ln_reg_913}};
assign add_ln36_fu_668_p2 = (indvar_flatten1417_fu_82 + 13'd1);
assign add_ln37_fu_654_p2 = (indvar_flatten19_fu_90 + 8'd1);
assign add_ln3_fu_717_p4 = {{{i_reg_894}, {indvars_iv_next320_mid2_reg_964}}, {lshr_ln_reg_913}};
assign add_ln40_1_fu_741_p3 = {{empty_6_reg_969}, {lshr_ln1_reg_931}};
assign add_ln41_1_fu_752_p3 = {{empty_7_reg_974}, {lshr_ln1_reg_931}};
assign add_ln42_1_fu_629_p4 = {{{i_reg_894}, {indvars_iv_next320_mid2_fu_576_p3}}, {lshr_ln1_reg_931}};
assign add_ln43_1_fu_642_p4 = {{{i_reg_894}, {tmp2_reg_908}}, {lshr_ln1_reg_931}};
assign add_ln44_1_fu_480_p4 = {{{i_fu_388_p3}, {j_fu_409_p3}}, {lshr_ln1_fu_470_p4}};
assign add_ln44_3_fu_511_p2 = (zext_ln39_fu_430_p1 + or_ln_fu_501_p4);
assign add_ln44_fu_464_p2 = (k_mid2_fu_401_p3 + 4'd1);
assign add_ln48_10_fu_800_p2 = (add_ln48_9_reg_1054 + add_ln48_7_fu_795_p2);
assign add_ln48_11_fu_811_p2 = (reg_311 + mul_ln48_2_reg_1059_pp0_iter2_reg);
assign add_ln48_1_fu_785_p2 = (add_ln48_reg_1044 + reg_306);
assign add_ln48_2_fu_729_p2 = ($signed(reg_296) + $signed(reg_301));
assign add_ln48_3_fu_735_p2 = (add_ln48_2_fu_729_p2 + reg_291);
assign add_ln48_4_fu_790_p2 = (add_ln48_3_reg_1024 + add_ln48_1_fu_785_p2);
assign add_ln48_5_fu_805_p2 = (reg_311 + mul_ln48_reg_1069);
assign add_ln48_6_fu_768_p0 = reg_291;
assign add_ln48_6_fu_768_p2 = ($signed(add_ln48_6_fu_768_p0) + $signed(orig_0_q0));
assign add_ln48_7_fu_795_p1 = reg_296;
assign add_ln48_7_fu_795_p2 = (add_ln48_6_reg_1049 + add_ln48_7_fu_795_p1);
assign add_ln48_8_fu_774_p2 = (orig_0_load_4_reg_1039 + reg_306);
assign add_ln48_9_fu_779_p2 = (add_ln48_8_fu_774_p2 + reg_301);
assign add_ln48_fu_763_p2 = (orig_1_load_reg_1009 + orig_1_q0);
assign add_ln4_fu_449_p4 = {{{i_fu_388_p3}, {tmp2_fu_414_p2}}, {lshr_ln_fu_420_p4}};
assign add_ln_fu_434_p4 = {{{i_fu_388_p3}, {j_fu_409_p3}}, {lshr_ln_fu_420_p4}};
assign and_ln11_fu_367_p2 = (xor_ln11_fu_361_p2 & ap_phi_mux_icmp_ln3824_phi_fu_276_p4);
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
    ap_condition_682 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln36_reg_1005 == 1'd0));
end
always @ (*) begin
    ap_condition_688 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln36_reg_1005 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign empty_6_fu_601_p2 = (tmp_cast_cast_cast_fu_597_p1 + tmp_fu_583_p3);
assign empty_7_fu_611_p2 = ($signed(tmp1_cast_fu_607_p1) + $signed(tmp_fu_583_p3));
assign empty_fu_396_p2 = (icmp_ln3725_reg_262 | and_ln11_reg_882);
assign i_fu_388_p3 = ((icmp_ln3725_reg_262[0:0] == 1'b1) ? indvars_iv_next33322_fu_102 : i18_fu_86);
assign icmp_ln36_fu_685_p2 = ((indvar_flatten1417_fu_82 == 13'd6299) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_679_p2 = ((select_ln37_1_fu_660_p3 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_528_p2 = ((k_fu_495_p2 == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next320_dup_fu_373_p2 = (select_ln11_fu_353_p3 + 5'd1);
assign indvars_iv_next320_fu_674_p2 = (j_reg_902 + 5'd1);
assign indvars_iv_next320_mid1_fu_571_p2 = (select_ln11_reg_876 + 5'd2);
assign indvars_iv_next320_mid2_fu_576_p3 = ((and_ln11_reg_882[0:0] == 1'b1) ? indvars_iv_next320_mid1_fu_571_p2 : select_ln11_1_fu_563_p3);
assign indvars_iv_next333_fu_522_p2 = (i_fu_388_p3 + 5'd1);
assign j_fu_409_p3 = ((and_ln11_reg_882[0:0] == 1'b1) ? indvars_iv_next320_dup_reg_889 : select_ln11_reg_876);
assign k_fu_495_p2 = (k_mid2_fu_401_p3 + 4'd2);
assign k_mid2_fu_401_p3 = ((empty_fu_396_p2[0:0] == 1'b1) ? 4'd1 : k21_fu_98);
assign lshr_ln1_fu_470_p4 = {{add_ln44_fu_464_p2[3:1]}};
assign lshr_ln_fu_420_p4 = {{k_mid2_fu_401_p3[3:1]}};
assign or_ln_fu_501_p4 = {{{i_fu_388_p3}, {j_fu_409_p3}}, {3'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign select_ln11_1_fu_563_p3 = ((icmp_ln3725_reg_262[0:0] == 1'b1) ? 5'd2 : indvars_iv_next32023_fu_106);
assign select_ln11_fu_353_p3 = ((ap_phi_mux_icmp_ln3725_phi_fu_265_p4[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j20_load);
assign select_ln37_1_fu_660_p3 = ((icmp_ln3725_reg_262[0:0] == 1'b1) ? 8'd1 : add_ln37_fu_654_p2);
assign sol_0_address0 = zext_ln44_reg_939_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = add_ln48_11_fu_811_p2;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln39_1_reg_920_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = add_ln48_5_fu_805_p2;
assign sol_1_we0 = sol_1_we0_local;
assign tmp1_cast_fu_607_p1 = tmp_cast_cast_fu_590_p3;
assign tmp2_fu_414_p2 = ($signed(j_fu_409_p3) + $signed(5'd31));
assign tmp_cast_cast_cast_fu_597_p1 = $unsigned(tmp_cast_cast_fu_590_p3);
assign tmp_cast_cast_fu_590_p3 = {{1'd1}, {j_reg_902}};
assign tmp_fu_583_p3 = {{i_reg_894}, {5'd0}};
assign xor_ln11_fu_361_p2 = (ap_phi_mux_icmp_ln3725_phi_fu_265_p4 ^ 1'd1);
assign zext_ln39_1_fu_444_p1 = add_ln_fu_434_p4;
assign zext_ln39_fu_430_p1 = lshr_ln_fu_420_p4;
assign zext_ln40_1_fu_747_p1 = add_ln40_1_fu_741_p3;
assign zext_ln40_fu_624_p1 = add_ln1_fu_617_p3;
assign zext_ln41_1_fu_758_p1 = add_ln41_1_fu_752_p3;
assign zext_ln41_fu_712_p1 = add_ln2_fu_706_p3;
assign zext_ln42_1_fu_637_p1 = add_ln42_1_fu_629_p4;
assign zext_ln42_fu_724_p1 = add_ln3_fu_717_p4;
assign zext_ln43_1_fu_649_p1 = add_ln43_1_fu_642_p4;
assign zext_ln43_fu_459_p1 = add_ln4_fu_449_p4;
assign zext_ln44_1_fu_517_p1 = add_ln44_3_fu_511_p2;
assign zext_ln44_fu_490_p1 = add_ln44_1_fu_480_p4;
always @ (posedge ap_clk) begin
    zext_ln39_1_reg_920[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln39_1_reg_920_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln39_1_reg_920_pp0_iter2_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_939[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_939_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_939_pp0_iter2_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 