
module stencil3d_stencil3d_Pipeline_loop_height_loop_col_loop_row (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,orig_address0,orig_ce0,orig_q0,orig_address1,orig_ce1,orig_q1,C_load,C_load_1,sol_address0,sol_ce0,sol_we0,sol_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage3 = 6'd8;
parameter    ap_ST_fsm_pp0_stage4 = 6'd16;
parameter    ap_ST_fsm_pp0_stage5 = 6'd32;
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
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
wire   [0:0] icmp_ln36_fu_698_p2;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln3725_reg_238;
reg   [31:0] reg_263;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg  signed [31:0] reg_268;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_259_p2;
reg   [31:0] reg_274;
wire   [4:0] select_ln11_fu_316_p3;
reg   [4:0] select_ln11_reg_839;
wire   [0:0] and_ln11_fu_330_p2;
reg   [0:0] and_ln11_reg_845;
wire   [4:0] indvars_iv_next320_dup_fu_336_p2;
reg   [4:0] indvars_iv_next320_dup_reg_852;
wire   [4:0] i_fu_351_p3;
reg   [4:0] i_reg_857;
wire   [3:0] k_mid2_fu_364_p3;
reg   [3:0] k_mid2_reg_868;
wire   [4:0] j_fu_372_p3;
reg   [4:0] j_reg_878;
wire   [4:0] tmp2_fu_377_p2;
reg   [4:0] tmp2_reg_887;
wire   [3:0] add_ln44_fu_398_p2;
reg   [3:0] add_ln44_reg_897;
wire   [63:0] zext_ln44_fu_414_p1;
reg   [63:0] zext_ln44_reg_905;
reg   [63:0] zext_ln44_reg_905_pp0_iter1_reg;
wire   [4:0] indvars_iv_next320_mid2_fu_456_p3;
reg   [4:0] indvars_iv_next320_mid2_reg_915;
reg   [31:0] orig_load_5_reg_930;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] orig_load_8_reg_935;
wire   [0:0] icmp_ln38_fu_542_p2;
reg   [0:0] icmp_ln38_reg_950;
wire   [9:0] empty_4_fu_571_p2;
reg   [9:0] empty_4_reg_955;
wire   [9:0] empty_5_fu_581_p2;
reg   [9:0] empty_5_reg_960;
wire   [63:0] zext_ln39_fu_594_p1;
reg   [63:0] zext_ln39_reg_966;
wire   [31:0] add_ln48_3_fu_616_p2;
reg   [31:0] add_ln48_3_reg_981;
reg   [31:0] mul_ln48_2_reg_986;
reg   [31:0] mul_ln48_2_reg_986_pp0_iter1_reg;
wire   [31:0] add_ln48_9_fu_667_p2;
reg   [31:0] add_ln48_9_reg_1001;
wire   [0:0] icmp_ln37_fu_692_p2;
reg   [0:0] icmp_ln37_reg_1006;
reg   [0:0] icmp_ln36_reg_1011;
reg   [0:0] icmp_ln36_reg_1011_pp0_iter1_reg;
wire   [31:0] add_ln48_fu_714_p2;
reg   [31:0] add_ln48_reg_1015;
wire  signed [31:0] add_ln48_4_fu_747_p2;
reg  signed [31:0] add_ln48_4_reg_1030;
wire   [31:0] add_ln48_6_fu_752_p2;
reg   [31:0] add_ln48_6_reg_1035;
wire  signed [31:0] add_ln48_10_fu_763_p2;
reg  signed [31:0] add_ln48_10_reg_1040;
reg   [31:0] mul_ln48_1_reg_1045;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_icmp_ln3725_phi_fu_241_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln3824_phi_fu_252_p4;
wire   [63:0] zext_ln43_fu_393_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln45_fu_476_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln42_1_fu_489_p1;
wire   [63:0] zext_ln43_1_fu_512_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln44_2_fu_537_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln40_fu_606_p1;
wire   [63:0] zext_ln41_fu_644_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln42_fu_656_p1;
wire   [63:0] zext_ln40_1_fu_726_p1;
wire   [63:0] zext_ln41_1_fu_737_p1;
reg   [12:0] indvar_flatten1417_fu_72;
wire   [12:0] add_ln36_fu_686_p2;
reg   [4:0] i18_fu_76;
reg   [7:0] indvar_flatten19_fu_80;
wire   [7:0] select_ln37_1_fu_678_p3;
reg   [4:0] j20_fu_84;
reg   [4:0] ap_sig_allocacmp_j20_load;
reg   [3:0] k21_fu_88;
wire   [3:0] k_fu_523_p1;
reg   [4:0] indvars_iv_next33322_fu_92;
wire   [4:0] indvars_iv_next333_fu_419_p2;
reg   [4:0] indvars_iv_next32023_fu_96;
wire   [4:0] indvars_iv_next320_fu_622_p2;
reg    orig_ce1_local;
reg   [13:0] orig_address1_local;
reg    orig_ce0_local;
reg   [13:0] orig_address0_local;
reg    sol_we0_local;
reg   [31:0] sol_d0_local;
wire   [31:0] add_ln48_5_fu_768_p2;
reg    sol_ce0_local;
reg   [13:0] sol_address0_local;
wire   [31:0] add_ln48_11_fu_774_p2;
reg  signed [31:0] grp_fu_259_p0;
reg  signed [31:0] grp_fu_259_p1;
wire   [0:0] xor_ln11_fu_324_p2;
wire   [0:0] empty_fu_359_p2;
wire   [13:0] add_ln4_fu_383_p4;
wire   [13:0] add_ln44_1_fu_404_p4;
wire   [4:0] indvars_iv_next320_mid1_fu_451_p2;
wire   [4:0] select_ln11_1_fu_443_p3;
wire   [3:0] add_ln45_fu_463_p2;
wire   [13:0] add_ln45_1_fu_468_p4;
wire   [13:0] add_ln42_1_fu_481_p4;
wire   [13:0] add_ln43_1_fu_505_p4;
wire   [4:0] zext_ln38_fu_502_p1;
wire   [4:0] add_ln44_2_fu_517_p2;
wire   [13:0] zext_ln44_1_fu_527_p1;
wire   [13:0] tmp_1_fu_494_p4;
wire   [13:0] add_ln44_3_fu_531_p2;
wire  signed [5:0] tmp_cast_cast_fu_560_p3;
wire   [9:0] tmp_cast_cast_cast_fu_567_p1;
wire   [9:0] tmp_fu_553_p3;
wire  signed [9:0] tmp1_cast_fu_577_p1;
wire   [13:0] add_ln_fu_587_p4;
wire   [13:0] add_ln1_fu_599_p3;
wire   [31:0] add_ln48_2_fu_611_p2;
wire   [13:0] add_ln2_fu_638_p3;
wire   [13:0] add_ln3_fu_649_p4;
wire   [31:0] add_ln48_8_fu_661_p1;
wire   [31:0] add_ln48_8_fu_661_p2;
wire   [7:0] add_ln37_fu_672_p2;
wire   [31:0] add_ln48_fu_714_p0;
wire   [13:0] add_ln40_1_fu_720_p3;
wire   [13:0] add_ln41_1_fu_731_p3;
wire   [31:0] add_ln48_1_fu_742_p1;
wire   [31:0] add_ln48_1_fu_742_p2;
wire  signed [31:0] add_ln48_6_fu_752_p0;
wire   [31:0] add_ln48_7_fu_758_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage0;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [5:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_708;
reg    ap_condition_713;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten1417_fu_72 = 13'd0;
#0 i18_fu_76 = 5'd0;
#0 indvar_flatten19_fu_80 = 8'd0;
#0 j20_fu_84 = 5'd0;
#0 k21_fu_88 = 4'd0;
#0 indvars_iv_next33322_fu_92 = 5'd0;
#0 indvars_iv_next32023_fu_96 = 5'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_259_p0),.din1(grp_fu_259_p1),.ce(1'b1),.dout(grp_fu_259_p2));
stencil3d_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i18_fu_76 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i18_fu_76 <= i_fu_351_p3;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_713)) begin
            icmp_ln3725_reg_238 <= icmp_ln37_reg_1006;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
            icmp_ln3725_reg_238 <= 1'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten1417_fu_72 <= 13'd0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        indvar_flatten1417_fu_72 <= add_ln36_fu_686_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten19_fu_80 <= 8'd0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        indvar_flatten19_fu_80 <= select_ln37_1_fu_678_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next32023_fu_96 <= 5'd2;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        indvars_iv_next32023_fu_96 <= indvars_iv_next320_fu_622_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next33322_fu_92 <= 5'd2;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        indvars_iv_next33322_fu_92 <= indvars_iv_next333_fu_419_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j20_fu_84 <= 5'd1;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j20_fu_84 <= j_fu_372_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k21_fu_88 <= 4'd1;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        k21_fu_88 <= k_fu_523_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_268 <= orig_q1;
    end else if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_268 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln44_reg_897 <= add_ln44_fu_398_p2;
        add_ln48_4_reg_1030 <= add_ln48_4_fu_747_p2;
        add_ln48_6_reg_1035 <= add_ln48_6_fu_752_p2;
        i_reg_857 <= i_fu_351_p3;
        j_reg_878 <= j_fu_372_p3;
        k_mid2_reg_868 <= k_mid2_fu_364_p3;
        tmp2_reg_887 <= tmp2_fu_377_p2;
        zext_ln44_reg_905[13 : 0] <= zext_ln44_fu_414_p1[13 : 0];
        zext_ln44_reg_905_pp0_iter1_reg[13 : 0] <= zext_ln44_reg_905[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_10_reg_1040 <= add_ln48_10_fu_763_p2;
        indvars_iv_next320_mid2_reg_915 <= indvars_iv_next320_mid2_fu_456_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln48_3_reg_981 <= add_ln48_3_fu_616_p2;
        empty_4_reg_955 <= empty_4_fu_571_p2;
        empty_5_reg_960 <= empty_5_fu_581_p2;
        mul_ln48_2_reg_986_pp0_iter1_reg <= mul_ln48_2_reg_986;
        zext_ln39_reg_966[13 : 0] <= zext_ln39_fu_594_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln48_9_reg_1001 <= add_ln48_9_fu_667_p2;
        icmp_ln36_reg_1011 <= icmp_ln36_fu_698_p2;
        icmp_ln36_reg_1011_pp0_iter1_reg <= icmp_ln36_reg_1011;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_reg_1015 <= add_ln48_fu_714_p2;
        and_ln11_reg_845 <= and_ln11_fu_330_p2;
        indvars_iv_next320_dup_reg_852 <= indvars_iv_next320_dup_fu_336_p2;
        select_ln11_reg_839 <= select_ln11_fu_316_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        icmp_ln37_reg_1006 <= icmp_ln37_fu_692_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        icmp_ln38_reg_950 <= icmp_ln38_fu_542_p2;
        orig_load_5_reg_930 <= orig_q1;
        orig_load_8_reg_935 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln48_1_reg_1045 <= grp_fu_259_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln48_2_reg_986 <= grp_fu_259_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_263 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_274 <= grp_fu_259_p2;
    end
end
always @ (*) begin
    if (((icmp_ln36_fu_698_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln36_reg_1011_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_708)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_241_p4 = icmp_ln37_reg_1006;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3725_phi_fu_241_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3725_phi_fu_241_p4 = icmp_ln37_reg_1006;
        end
    end else begin
        ap_phi_mux_icmp_ln3725_phi_fu_241_p4 = icmp_ln37_reg_1006;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_708)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_252_p4 = icmp_ln38_reg_950;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln3824_phi_fu_252_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln3824_phi_fu_252_p4 = icmp_ln38_reg_950;
        end
    end else begin
        ap_phi_mux_icmp_ln3824_phi_fu_252_p4 = icmp_ln38_reg_950;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j20_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j20_load = j20_fu_84;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_259_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_259_p0 = reg_263;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_259_p0 = reg_268;
    end else begin
        grp_fu_259_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_259_p1 = add_ln48_10_reg_1040;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_259_p1 = add_ln48_4_reg_1030;
    end else if ((((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        grp_fu_259_p1 = C_load;
    end else begin
        grp_fu_259_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_address0_local = zext_ln41_1_fu_737_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_address0_local = zext_ln42_fu_656_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_address0_local = zext_ln40_fu_606_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_address0_local = zext_ln44_2_fu_537_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_address0_local = zext_ln42_1_fu_489_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_address0_local = zext_ln44_fu_414_p1;
    end else begin
        orig_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_address1_local = zext_ln40_1_fu_726_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_address1_local = zext_ln41_fu_644_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_address1_local = zext_ln39_fu_594_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_address1_local = zext_ln43_1_fu_512_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_address1_local = zext_ln45_fu_476_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_address1_local = zext_ln43_fu_393_p1;
    end else begin
        orig_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        orig_ce0_local = 1'b1;
    end else begin
        orig_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        orig_ce1_local = 1'b1;
    end else begin
        orig_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_address0_local = zext_ln44_reg_905_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_address0_local = zext_ln39_reg_966;
    end else begin
        sol_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_ce0_local = 1'b1;
    end else begin
        sol_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_d0_local = add_ln48_11_fu_774_p2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_d0_local = add_ln48_5_fu_768_p2;
    end else begin
        sol_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        sol_we0_local = 1'b1;
    end else begin
        sol_we0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage2;
            end
        end
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        ap_ST_fsm_pp0_stage4 : begin
            if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        ap_ST_fsm_pp0_stage5 : begin
            if ((1'b0 == ap_block_pp0_stage5_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln1_fu_599_p3 = {{empty_4_fu_571_p2}, {k_mid2_reg_868}};
assign add_ln2_fu_638_p3 = {{empty_5_reg_960}, {k_mid2_reg_868}};
assign add_ln36_fu_686_p2 = (indvar_flatten1417_fu_72 + 13'd1);
assign add_ln37_fu_672_p2 = (indvar_flatten19_fu_80 + 8'd1);
assign add_ln3_fu_649_p4 = {{{i_reg_857}, {indvars_iv_next320_mid2_reg_915}}, {k_mid2_reg_868}};
assign add_ln40_1_fu_720_p3 = {{empty_4_reg_955}, {add_ln44_reg_897}};
assign add_ln41_1_fu_731_p3 = {{empty_5_reg_960}, {add_ln44_reg_897}};
assign add_ln42_1_fu_481_p4 = {{{i_reg_857}, {indvars_iv_next320_mid2_fu_456_p3}}, {add_ln44_reg_897}};
assign add_ln43_1_fu_505_p4 = {{{i_reg_857}, {tmp2_reg_887}}, {add_ln44_reg_897}};
assign add_ln44_1_fu_404_p4 = {{{i_fu_351_p3}, {j_fu_372_p3}}, {add_ln44_fu_398_p2}};
assign add_ln44_2_fu_517_p2 = (zext_ln38_fu_502_p1 + 5'd2);
assign add_ln44_3_fu_531_p2 = (zext_ln44_1_fu_527_p1 + tmp_1_fu_494_p4);
assign add_ln44_fu_398_p2 = (k_mid2_fu_364_p3 + 4'd1);
assign add_ln45_1_fu_468_p4 = {{{i_reg_857}, {j_reg_878}}, {add_ln45_fu_463_p2}};
assign add_ln45_fu_463_p2 = ($signed(k_mid2_reg_868) + $signed(4'd15));
assign add_ln48_10_fu_763_p2 = (add_ln48_9_reg_1001 + add_ln48_7_fu_758_p2);
assign add_ln48_11_fu_774_p2 = (reg_274 + mul_ln48_2_reg_986_pp0_iter1_reg);
assign add_ln48_1_fu_742_p1 = reg_268;
assign add_ln48_1_fu_742_p2 = (add_ln48_reg_1015 + add_ln48_1_fu_742_p1);
assign add_ln48_2_fu_611_p2 = ($signed(reg_268) + $signed(orig_load_5_reg_930));
assign add_ln48_3_fu_616_p2 = (add_ln48_2_fu_611_p2 + reg_263);
assign add_ln48_4_fu_747_p2 = (add_ln48_3_reg_981 + add_ln48_1_fu_742_p2);
assign add_ln48_5_fu_768_p2 = (mul_ln48_1_reg_1045 + reg_274);
assign add_ln48_6_fu_752_p0 = reg_263;
assign add_ln48_6_fu_752_p2 = ($signed(add_ln48_6_fu_752_p0) + $signed(orig_q0));
assign add_ln48_7_fu_758_p2 = (add_ln48_6_reg_1035 + reg_263);
assign add_ln48_8_fu_661_p1 = reg_268;
assign add_ln48_8_fu_661_p2 = (reg_263 + add_ln48_8_fu_661_p1);
assign add_ln48_9_fu_667_p2 = (add_ln48_8_fu_661_p2 + orig_load_8_reg_935);
assign add_ln48_fu_714_p0 = reg_268;
assign add_ln48_fu_714_p2 = (add_ln48_fu_714_p0 + orig_q0);
assign add_ln4_fu_383_p4 = {{{i_fu_351_p3}, {tmp2_fu_377_p2}}, {k_mid2_fu_364_p3}};
assign add_ln_fu_587_p4 = {{{i_reg_857}, {j_reg_878}}, {k_mid2_reg_868}};
assign and_ln11_fu_330_p2 = (xor_ln11_fu_324_p2 & ap_phi_mux_icmp_ln3824_phi_fu_252_p4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
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
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_708 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln36_reg_1011 == 1'd0));
end
always @ (*) begin
    ap_condition_713 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln36_reg_1011 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign empty_4_fu_571_p2 = (tmp_cast_cast_cast_fu_567_p1 + tmp_fu_553_p3);
assign empty_5_fu_581_p2 = ($signed(tmp1_cast_fu_577_p1) + $signed(tmp_fu_553_p3));
assign empty_fu_359_p2 = (icmp_ln3725_reg_238 | and_ln11_reg_845);
assign i_fu_351_p3 = ((icmp_ln3725_reg_238[0:0] == 1'b1) ? indvars_iv_next33322_fu_92 : i18_fu_76);
assign icmp_ln36_fu_698_p2 = ((indvar_flatten1417_fu_72 == 13'd6299) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_692_p2 = ((select_ln37_1_fu_678_p3 == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_542_p2 = ((k_fu_523_p1 == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next320_dup_fu_336_p2 = (select_ln11_fu_316_p3 + 5'd1);
assign indvars_iv_next320_fu_622_p2 = (j_reg_878 + 5'd1);
assign indvars_iv_next320_mid1_fu_451_p2 = (select_ln11_reg_839 + 5'd2);
assign indvars_iv_next320_mid2_fu_456_p3 = ((and_ln11_reg_845[0:0] == 1'b1) ? indvars_iv_next320_mid1_fu_451_p2 : select_ln11_1_fu_443_p3);
assign indvars_iv_next333_fu_419_p2 = (i_fu_351_p3 + 5'd1);
assign j_fu_372_p3 = ((and_ln11_reg_845[0:0] == 1'b1) ? indvars_iv_next320_dup_reg_852 : select_ln11_reg_839);
assign k_fu_523_p1 = add_ln44_2_fu_517_p2[3:0];
assign k_mid2_fu_364_p3 = ((empty_fu_359_p2[0:0] == 1'b1) ? 4'd1 : k21_fu_88);
assign orig_address0 = orig_address0_local;
assign orig_address1 = orig_address1_local;
assign orig_ce0 = orig_ce0_local;
assign orig_ce1 = orig_ce1_local;
assign select_ln11_1_fu_443_p3 = ((icmp_ln3725_reg_238[0:0] == 1'b1) ? 5'd2 : indvars_iv_next32023_fu_96);
assign select_ln11_fu_316_p3 = ((ap_phi_mux_icmp_ln3725_phi_fu_241_p4[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j20_load);
assign select_ln37_1_fu_678_p3 = ((icmp_ln3725_reg_238[0:0] == 1'b1) ? 8'd1 : add_ln37_fu_672_p2);
assign sol_address0 = sol_address0_local;
assign sol_ce0 = sol_ce0_local;
assign sol_d0 = sol_d0_local;
assign sol_we0 = sol_we0_local;
assign tmp1_cast_fu_577_p1 = tmp_cast_cast_fu_560_p3;
assign tmp2_fu_377_p2 = ($signed(j_fu_372_p3) + $signed(5'd31));
assign tmp_1_fu_494_p4 = {{{i_reg_857}, {j_reg_878}}, {4'd0}};
assign tmp_cast_cast_cast_fu_567_p1 = $unsigned(tmp_cast_cast_fu_560_p3);
assign tmp_cast_cast_fu_560_p3 = {{1'd1}, {j_reg_878}};
assign tmp_fu_553_p3 = {{i_reg_857}, {5'd0}};
assign xor_ln11_fu_324_p2 = (ap_phi_mux_icmp_ln3725_phi_fu_241_p4 ^ 1'd1);
assign zext_ln38_fu_502_p1 = k_mid2_reg_868;
assign zext_ln39_fu_594_p1 = add_ln_fu_587_p4;
assign zext_ln40_1_fu_726_p1 = add_ln40_1_fu_720_p3;
assign zext_ln40_fu_606_p1 = add_ln1_fu_599_p3;
assign zext_ln41_1_fu_737_p1 = add_ln41_1_fu_731_p3;
assign zext_ln41_fu_644_p1 = add_ln2_fu_638_p3;
assign zext_ln42_1_fu_489_p1 = add_ln42_1_fu_481_p4;
assign zext_ln42_fu_656_p1 = add_ln3_fu_649_p4;
assign zext_ln43_1_fu_512_p1 = add_ln43_1_fu_505_p4;
assign zext_ln43_fu_393_p1 = add_ln4_fu_383_p4;
assign zext_ln44_1_fu_527_p1 = add_ln44_2_fu_517_p2;
assign zext_ln44_2_fu_537_p1 = add_ln44_3_fu_531_p2;
assign zext_ln44_fu_414_p1 = add_ln44_1_fu_404_p4;
assign zext_ln45_fu_476_p1 = add_ln45_1_fu_468_p4;
always @ (posedge ap_clk) begin
    zext_ln44_reg_905[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln44_reg_905_pp0_iter1_reg[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln39_reg_966[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 
