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
reg   [0:0] icmp_ln36_reg_797;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_260;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg  signed [31:0] reg_265;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] reg_270;
reg   [31:0] reg_275;
wire   [31:0] grp_fu_256_p2;
reg   [31:0] reg_280;
wire   [0:0] icmp_ln36_fu_312_p2;
reg   [0:0] icmp_ln36_reg_797_pp0_iter1_reg;
reg   [3:0] k_load_reg_801;
reg   [4:0] j_load_reg_806;
wire   [0:0] icmp_ln37_fu_336_p2;
reg   [0:0] icmp_ln37_reg_811;
wire   [4:0] select_ln11_fu_342_p3;
reg   [4:0] select_ln11_reg_817;
wire   [0:0] and_ln11_fu_362_p2;
reg   [0:0] and_ln11_reg_823;
wire   [4:0] select_ln36_fu_374_p3;
reg   [4:0] select_ln36_reg_830;
wire   [4:0] indvars_iv_next79_dup_fu_382_p2;
reg   [4:0] indvars_iv_next79_dup_reg_842;
wire   [4:0] indvars_iv_next79_mid2_fu_445_p3;
reg   [4:0] indvars_iv_next79_mid2_reg_847;
wire   [4:0] select_ln37_fu_452_p3;
reg   [4:0] select_ln37_reg_853;
wire   [4:0] tmp2_fu_457_p2;
reg   [4:0] tmp2_reg_858;
wire   [2:0] lshr_ln_fu_463_p4;
reg   [2:0] lshr_ln_reg_863;
wire   [63:0] zext_ln39_1_fu_486_p1;
reg   [63:0] zext_ln39_1_reg_870;
reg   [63:0] zext_ln39_1_reg_870_pp0_iter1_reg;
reg   [63:0] zext_ln39_1_reg_870_pp0_iter2_reg;
wire   [2:0] lshr_ln1_fu_511_p4;
reg   [2:0] lshr_ln1_reg_881;
wire   [63:0] zext_ln44_fu_530_p1;
reg   [63:0] zext_ln44_reg_889;
reg   [63:0] zext_ln44_reg_889_pp0_iter1_reg;
reg   [63:0] zext_ln44_reg_889_pp0_iter2_reg;
wire   [9:0] empty_12_fu_589_p2;
reg   [9:0] empty_12_reg_909;
wire   [9:0] empty_13_fu_599_p2;
reg   [9:0] empty_13_reg_914;
reg   [31:0] orig_1_load_reg_940;
wire   [31:0] add_ln48_3_fu_670_p2;
reg   [31:0] add_ln48_3_reg_955;
reg   [31:0] orig_0_load_63_reg_970;
wire   [31:0] add_ln48_fu_698_p2;
reg   [31:0] add_ln48_reg_975;
wire   [31:0] add_ln48_6_fu_703_p2;
reg   [31:0] add_ln48_6_reg_980;
wire   [31:0] add_ln48_9_fu_714_p2;
reg   [31:0] add_ln48_9_reg_985;
wire   [31:0] grp_fu_252_p2;
reg   [31:0] mul_ln48_2_reg_990;
reg   [31:0] mul_ln48_2_reg_990_pp0_iter2_reg;
wire  signed [31:0] add_ln48_4_fu_725_p2;
reg  signed [31:0] add_ln48_4_reg_995;
reg   [31:0] mul_ln48_reg_1000;
wire  signed [31:0] add_ln48_10_fu_735_p2;
reg  signed [31:0] add_ln48_10_reg_1005;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln43_fu_500_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln44_1_fu_556_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln40_fu_612_p1;
wire   [63:0] zext_ln42_1_fu_624_p1;
wire   [63:0] zext_ln43_1_fu_636_p1;
wire   [63:0] zext_ln41_fu_647_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln42_fu_659_p1;
wire   [63:0] zext_ln40_1_fu_682_p1;
wire   [63:0] zext_ln41_1_fu_693_p1;
reg   [3:0] k_fu_80;
wire   [3:0] add_ln44_2_fu_535_p2;
wire    ap_loop_init;
reg   [4:0] j_fu_84;
reg   [7:0] indvar_flatten_fu_88;
wire   [7:0] select_ln37_1_fu_394_p3;
reg   [4:0] i_fu_92;
reg   [12:0] indvar_flatten14_fu_96;
wire   [12:0] add_ln36_fu_318_p2;
reg    orig_1_ce1_local;
reg   [12:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [12:0] orig_1_address0_local;
reg    orig_0_ce1_local;
reg   [12:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [12:0] orig_0_address0_local;
reg    sol_1_we0_local;
wire   [31:0] add_ln48_5_fu_740_p2;
reg    sol_1_ce0_local;
reg    sol_0_we0_local;
wire   [31:0] add_ln48_11_fu_746_p2;
reg    sol_0_ce0_local;
reg  signed [31:0] grp_fu_252_p0;
reg  signed [31:0] grp_fu_256_p1;
wire   [0:0] icmp_ln38_fu_356_p2;
wire   [0:0] xor_ln11_fu_350_p2;
wire   [4:0] indvars_iv_next9217_fu_368_p2;
wire   [7:0] add_ln37_fu_388_p2;
wire   [4:0] indvars_iv_next7924_fu_417_p2;
wire   [0:0] empty_fu_429_p2;
wire   [4:0] indvars_iv_next79_mid1_fu_440_p2;
wire   [4:0] select_ln11_1_fu_422_p3;
wire   [3:0] k_mid2_fu_433_p3;
wire   [12:0] add_ln_fu_477_p4;
wire   [12:0] add_ln4_fu_491_p4;
wire   [3:0] add_ln44_fu_505_p2;
wire   [12:0] add_ln44_1_fu_521_p4;
wire   [12:0] zext_ln39_fu_473_p1;
wire   [12:0] or_ln6_fu_541_p4;
wire   [12:0] add_ln44_3_fu_550_p2;
wire  signed [5:0] tmp_cast_cast_fu_578_p3;
wire   [9:0] tmp_cast_cast_cast_fu_585_p1;
wire   [9:0] tmp_s_fu_571_p3;
wire  signed [9:0] tmp1_cast_fu_595_p1;
wire   [12:0] add_ln1_fu_605_p3;
wire   [12:0] add_ln42_1_fu_617_p4;
wire   [12:0] add_ln43_1_fu_629_p4;
wire   [12:0] add_ln2_fu_641_p3;
wire   [12:0] add_ln3_fu_652_p4;
wire   [31:0] add_ln48_2_fu_664_p2;
wire   [12:0] add_ln40_1_fu_676_p3;
wire   [12:0] add_ln41_1_fu_687_p3;
wire  signed [31:0] add_ln48_6_fu_703_p0;
wire   [31:0] add_ln48_8_fu_709_p2;
wire   [31:0] add_ln48_1_fu_720_p2;
wire   [31:0] add_ln48_7_fu_730_p1;
wire   [31:0] add_ln48_7_fu_730_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
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
#0 k_fu_80 = 4'd0;
#0 j_fu_84 = 5'd0;
#0 indvar_flatten_fu_88 = 8'd0;
#0 i_fu_92 = 5'd0;
#0 indvar_flatten14_fu_96 = 13'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U13(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_252_p0),.din1(C_load),.ce(1'b1),.dout(grp_fu_252_p2));
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U14(.clk(ap_clk),.reset(ap_rst),.din0(C_load_1),.din1(grp_fu_256_p1),.ce(1'b1),.dout(grp_fu_256_p2));
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage1))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_92 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln36_fu_312_p2 == 1'd0))) begin
        i_fu_92 <= select_ln36_fu_374_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten14_fu_96 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln36_fu_312_p2 == 1'd0))) begin
        indvar_flatten14_fu_96 <= add_ln36_fu_318_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten_fu_88 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln36_fu_312_p2 == 1'd0))) begin
        indvar_flatten_fu_88 <= select_ln37_1_fu_394_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_84 <= 5'd1;
    end else if (((icmp_ln36_reg_797 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        j_fu_84 <= select_ln37_fu_452_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_80 <= 4'd1;
    end else if (((icmp_ln36_reg_797 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        k_fu_80 <= add_ln44_2_fu_535_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            reg_270 <= orig_0_q1;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_270 <= orig_0_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            reg_275 <= orig_1_q1;
        end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            reg_275 <= orig_1_q0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_10_reg_1005 <= add_ln48_10_fu_735_p2;
        add_ln48_4_reg_995 <= add_ln48_4_fu_725_p2;
        empty_12_reg_909 <= empty_12_fu_589_p2;
        empty_13_reg_914 <= empty_13_fu_599_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln48_3_reg_955 <= add_ln48_3_fu_670_p2;
        and_ln11_reg_823 <= and_ln11_fu_362_p2;
        icmp_ln36_reg_797 <= icmp_ln36_fu_312_p2;
        icmp_ln36_reg_797_pp0_iter1_reg <= icmp_ln36_reg_797;
        icmp_ln37_reg_811 <= icmp_ln37_fu_336_p2;
        indvars_iv_next79_dup_reg_842 <= indvars_iv_next79_dup_fu_382_p2;
        j_load_reg_806 <= j_fu_84;
        k_load_reg_801 <= k_fu_80;
        select_ln11_reg_817 <= select_ln11_fu_342_p3;
        select_ln36_reg_830 <= select_ln36_fu_374_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_6_reg_980 <= add_ln48_6_fu_703_p2;
        add_ln48_9_reg_985 <= add_ln48_9_fu_714_p2;
        add_ln48_reg_975 <= add_ln48_fu_698_p2;
        indvars_iv_next79_mid2_reg_847 <= indvars_iv_next79_mid2_fu_445_p3;
        lshr_ln1_reg_881 <= {{add_ln44_fu_505_p2[3:1]}};
        lshr_ln_reg_863 <= {{k_mid2_fu_433_p3[3:1]}};
        mul_ln48_2_reg_990_pp0_iter2_reg <= mul_ln48_2_reg_990;
        select_ln37_reg_853 <= select_ln37_fu_452_p3;
        tmp2_reg_858 <= tmp2_fu_457_p2;
        zext_ln39_1_reg_870[12 : 0] <= zext_ln39_1_fu_486_p1[12 : 0];
        zext_ln39_1_reg_870_pp0_iter1_reg[12 : 0] <= zext_ln39_1_reg_870[12 : 0];
        zext_ln39_1_reg_870_pp0_iter2_reg[12 : 0] <= zext_ln39_1_reg_870_pp0_iter1_reg[12 : 0];
        zext_ln44_reg_889[12 : 0] <= zext_ln44_fu_530_p1[12 : 0];
        zext_ln44_reg_889_pp0_iter1_reg[12 : 0] <= zext_ln44_reg_889[12 : 0];
        zext_ln44_reg_889_pp0_iter2_reg[12 : 0] <= zext_ln44_reg_889_pp0_iter1_reg[12 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln48_2_reg_990 <= grp_fu_252_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln48_reg_1000 <= grp_fu_252_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_load_63_reg_970 <= orig_0_q0;
        orig_1_load_reg_940 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_260 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_265 <= orig_0_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_280 <= grp_fu_256_p2;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_797 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln36_reg_797_pp0_iter1_reg == 1'd1))) begin
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
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_252_p0 = reg_260;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_252_p0 = reg_265;
        end else begin
            grp_fu_252_p0 = 'bx;
        end
    end else begin
        grp_fu_252_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_256_p1 = add_ln48_10_reg_1005;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_256_p1 = add_ln48_4_reg_995;
        end else begin
            grp_fu_256_p1 = 'bx;
        end
    end else begin
        grp_fu_256_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln41_1_fu_693_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln43_1_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln39_1_fu_486_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address1_local = zext_ln40_1_fu_682_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address1_local = zext_ln42_1_fu_624_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address1_local = zext_ln44_fu_530_p1;
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln42_fu_659_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln40_fu_612_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln44_1_fu_556_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address1_local = zext_ln41_fu_647_p1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address1_local = zext_ln39_1_reg_870;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address1_local = zext_ln43_fu_500_p1;
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_1_we0_local = 1'b1;
    end else begin
        sol_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln1_fu_605_p3 = {{empty_12_fu_589_p2}, {lshr_ln_reg_863}};
assign add_ln2_fu_641_p3 = {{empty_13_reg_914}, {lshr_ln_reg_863}};
assign add_ln36_fu_318_p2 = (indvar_flatten14_fu_96 + 13'd1);
assign add_ln37_fu_388_p2 = (indvar_flatten_fu_88 + 8'd1);
assign add_ln3_fu_652_p4 = {{{select_ln36_reg_830}, {indvars_iv_next79_mid2_reg_847}}, {lshr_ln_reg_863}};
assign add_ln40_1_fu_676_p3 = {{empty_12_reg_909}, {lshr_ln1_reg_881}};
assign add_ln41_1_fu_687_p3 = {{empty_13_reg_914}, {lshr_ln1_reg_881}};
assign add_ln42_1_fu_617_p4 = {{{select_ln36_reg_830}, {indvars_iv_next79_mid2_reg_847}}, {lshr_ln1_reg_881}};
assign add_ln43_1_fu_629_p4 = {{{select_ln36_reg_830}, {tmp2_reg_858}}, {lshr_ln1_reg_881}};
assign add_ln44_1_fu_521_p4 = {{{select_ln36_reg_830}, {select_ln37_fu_452_p3}}, {lshr_ln1_fu_511_p4}};
assign add_ln44_2_fu_535_p2 = (k_mid2_fu_433_p3 + 4'd2);
assign add_ln44_3_fu_550_p2 = (zext_ln39_fu_473_p1 + or_ln6_fu_541_p4);
assign add_ln44_fu_505_p2 = (k_mid2_fu_433_p3 + 4'd1);
assign add_ln48_10_fu_735_p2 = (add_ln48_9_reg_985 + add_ln48_7_fu_730_p2);
assign add_ln48_11_fu_746_p2 = (reg_280 + mul_ln48_2_reg_990_pp0_iter2_reg);
assign add_ln48_1_fu_720_p2 = (add_ln48_reg_975 + reg_275);
assign add_ln48_2_fu_664_p2 = ($signed(reg_265) + $signed(reg_270));
assign add_ln48_3_fu_670_p2 = (add_ln48_2_fu_664_p2 + reg_260);
assign add_ln48_4_fu_725_p2 = (add_ln48_3_reg_955 + add_ln48_1_fu_720_p2);
assign add_ln48_5_fu_740_p2 = (reg_280 + mul_ln48_reg_1000);
assign add_ln48_6_fu_703_p0 = reg_260;
assign add_ln48_6_fu_703_p2 = ($signed(add_ln48_6_fu_703_p0) + $signed(orig_0_q0));
assign add_ln48_7_fu_730_p1 = reg_265;
assign add_ln48_7_fu_730_p2 = (add_ln48_6_reg_980 + add_ln48_7_fu_730_p1);
assign add_ln48_8_fu_709_p2 = (orig_0_load_63_reg_970 + reg_275);
assign add_ln48_9_fu_714_p2 = (add_ln48_8_fu_709_p2 + reg_270);
assign add_ln48_fu_698_p2 = (orig_1_load_reg_940 + orig_1_q0);
assign add_ln4_fu_491_p4 = {{{select_ln36_reg_830}, {tmp2_fu_457_p2}}, {lshr_ln_fu_463_p4}};
assign add_ln_fu_477_p4 = {{{select_ln36_reg_830}, {select_ln37_fu_452_p3}}, {lshr_ln_fu_463_p4}};
assign and_ln11_fu_362_p2 = (xor_ln11_fu_350_p2 & icmp_ln38_fu_356_p2);
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
assign empty_12_fu_589_p2 = (tmp_cast_cast_cast_fu_585_p1 + tmp_s_fu_571_p3);
assign empty_13_fu_599_p2 = ($signed(tmp1_cast_fu_595_p1) + $signed(tmp_s_fu_571_p3));
assign empty_fu_429_p2 = (icmp_ln37_reg_811 | and_ln11_reg_823);
assign icmp_ln36_fu_312_p2 = ((indvar_flatten14_fu_96 == 13'd6300) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_336_p2 = ((indvar_flatten_fu_88 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_356_p2 = ((k_fu_80 == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next7924_fu_417_p2 = (j_load_reg_806 + 5'd1);
assign indvars_iv_next79_dup_fu_382_p2 = (select_ln11_fu_342_p3 + 5'd1);
assign indvars_iv_next79_mid1_fu_440_p2 = (select_ln11_reg_817 + 5'd2);
assign indvars_iv_next79_mid2_fu_445_p3 = ((and_ln11_reg_823[0:0] == 1'b1) ? indvars_iv_next79_mid1_fu_440_p2 : select_ln11_1_fu_422_p3);
assign indvars_iv_next9217_fu_368_p2 = (i_fu_92 + 5'd1);
assign k_mid2_fu_433_p3 = ((empty_fu_429_p2[0:0] == 1'b1) ? 4'd1 : k_load_reg_801);
assign lshr_ln1_fu_511_p4 = {{add_ln44_fu_505_p2[3:1]}};
assign lshr_ln_fu_463_p4 = {{k_mid2_fu_433_p3[3:1]}};
assign or_ln6_fu_541_p4 = {{{select_ln36_reg_830}, {select_ln37_fu_452_p3}}, {3'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign select_ln11_1_fu_422_p3 = ((icmp_ln37_reg_811[0:0] == 1'b1) ? 5'd2 : indvars_iv_next7924_fu_417_p2);
assign select_ln11_fu_342_p3 = ((icmp_ln37_fu_336_p2[0:0] == 1'b1) ? 5'd1 : j_fu_84);
assign select_ln36_fu_374_p3 = ((icmp_ln37_fu_336_p2[0:0] == 1'b1) ? indvars_iv_next9217_fu_368_p2 : i_fu_92);
assign select_ln37_1_fu_394_p3 = ((icmp_ln37_fu_336_p2[0:0] == 1'b1) ? 8'd1 : add_ln37_fu_388_p2);
assign select_ln37_fu_452_p3 = ((and_ln11_reg_823[0:0] == 1'b1) ? indvars_iv_next79_dup_reg_842 : select_ln11_reg_817);
assign sol_0_address0 = zext_ln44_reg_889_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = add_ln48_11_fu_746_p2;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln39_1_reg_870_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = add_ln48_5_fu_740_p2;
assign sol_1_we0 = sol_1_we0_local;
assign tmp1_cast_fu_595_p1 = tmp_cast_cast_fu_578_p3;
assign tmp2_fu_457_p2 = ($signed(select_ln37_fu_452_p3) + $signed(5'd31));
assign tmp_cast_cast_cast_fu_585_p1 = $unsigned(tmp_cast_cast_fu_578_p3);
assign tmp_cast_cast_fu_578_p3 = {{1'd1}, {select_ln37_reg_853}};
assign tmp_s_fu_571_p3 = {{select_ln36_reg_830}, {5'd0}};
assign xor_ln11_fu_350_p2 = (icmp_ln37_fu_336_p2 ^ 1'd1);
assign zext_ln39_1_fu_486_p1 = add_ln_fu_477_p4;
assign zext_ln39_fu_473_p1 = lshr_ln_fu_463_p4;
assign zext_ln40_1_fu_682_p1 = add_ln40_1_fu_676_p3;
assign zext_ln40_fu_612_p1 = add_ln1_fu_605_p3;
assign zext_ln41_1_fu_693_p1 = add_ln41_1_fu_687_p3;
assign zext_ln41_fu_647_p1 = add_ln2_fu_641_p3;
assign zext_ln42_1_fu_624_p1 = add_ln42_1_fu_617_p4;
assign zext_ln42_fu_659_p1 = add_ln3_fu_652_p4;
assign zext_ln43_1_fu_636_p1 = add_ln43_1_fu_629_p4;
assign zext_ln43_fu_500_p1 = add_ln4_fu_491_p4;
assign zext_ln44_1_fu_556_p1 = add_ln44_3_fu_550_p2;
assign zext_ln44_fu_530_p1 = add_ln44_1_fu_521_p4;
always @ (posedge ap_clk) begin
    zext_ln39_1_reg_870[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln39_1_reg_870_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln39_1_reg_870_pp0_iter2_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_889[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_889_pp0_iter1_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
    zext_ln44_reg_889_pp0_iter2_reg[63:13] <= 51'b000000000000000000000000000000000000000000000000000;
end
endmodule 