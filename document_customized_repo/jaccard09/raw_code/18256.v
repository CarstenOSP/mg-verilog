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
reg   [0:0] icmp_ln36_reg_763;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [31:0] reg_232;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire    ap_block_pp0_stage5_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg  signed [31:0] reg_237;
wire    ap_block_pp0_stage0_11001;
wire   [31:0] grp_fu_228_p2;
reg   [31:0] reg_243;
wire   [0:0] icmp_ln36_fu_275_p2;
reg   [3:0] k_load_reg_767;
reg   [4:0] j_load_reg_772;
wire   [0:0] icmp_ln37_fu_296_p2;
reg   [0:0] icmp_ln37_reg_777;
wire   [4:0] select_ln11_fu_302_p3;
reg   [4:0] select_ln11_reg_784;
wire   [0:0] and_ln11_fu_322_p2;
reg   [0:0] and_ln11_reg_790;
wire   [4:0] indvars_iv_next25_dup_fu_328_p2;
reg   [4:0] indvars_iv_next25_dup_reg_797;
wire   [4:0] select_ln36_fu_379_p3;
reg   [4:0] select_ln36_reg_802;
wire   [3:0] k_2_mid2_fu_390_p3;
reg   [3:0] k_2_mid2_reg_813;
wire   [4:0] indvars_iv_next25_mid2_fu_402_p3;
reg   [4:0] indvars_iv_next25_mid2_reg_823;
wire   [4:0] select_ln37_fu_409_p3;
reg   [4:0] select_ln37_reg_829;
wire   [4:0] tmp3_fu_414_p2;
reg   [4:0] tmp3_reg_837;
wire   [3:0] add_ln44_fu_435_p2;
reg   [3:0] add_ln44_reg_847;
wire   [63:0] zext_ln44_fu_451_p1;
reg   [63:0] zext_ln44_reg_855;
reg   [63:0] zext_ln44_reg_855_pp0_iter1_reg;
reg   [31:0] orig_load_6_reg_875;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [31:0] orig_load_9_reg_880;
wire   [9:0] empty_5_fu_567_p2;
reg   [9:0] empty_5_reg_895;
wire   [9:0] empty_6_fu_577_p2;
reg   [9:0] empty_6_reg_900;
wire   [63:0] zext_ln39_fu_590_p1;
reg   [63:0] zext_ln39_reg_906;
wire   [31:0] add_ln48_3_fu_612_p2;
reg   [31:0] add_ln48_3_reg_921;
reg   [31:0] mul_ln48_2_reg_926;
reg   [31:0] mul_ln48_2_reg_926_pp0_iter1_reg;
wire   [31:0] add_ln48_9_fu_647_p2;
reg   [31:0] add_ln48_9_reg_941;
wire   [31:0] add_ln48_fu_652_p2;
reg   [31:0] add_ln48_reg_946;
wire  signed [31:0] add_ln48_4_fu_685_p2;
reg  signed [31:0] add_ln48_4_reg_961;
wire   [31:0] add_ln48_6_fu_690_p2;
reg   [31:0] add_ln48_6_reg_966;
wire  signed [31:0] add_ln48_10_fu_701_p2;
reg  signed [31:0] add_ln48_10_reg_971;
reg   [31:0] mul_ln48_1_reg_976;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln43_fu_430_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln45_fu_479_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln42_1_fu_491_p1;
wire   [63:0] zext_ln43_1_fu_514_p1;
wire    ap_block_pp0_stage3;
wire   [63:0] zext_ln44_2_fu_539_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] zext_ln40_fu_602_p1;
wire   [63:0] zext_ln41_fu_624_p1;
wire    ap_block_pp0_stage5;
wire   [63:0] zext_ln42_fu_636_p1;
wire   [63:0] zext_ln40_1_fu_664_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln41_1_fu_675_p1;
reg   [3:0] k_fu_70;
wire   [3:0] trunc_ln44_fu_525_p1;
wire    ap_loop_init;
reg   [3:0] ap_sig_allocacmp_k_load;
reg   [4:0] j_fu_74;
reg   [4:0] ap_sig_allocacmp_j_load;
reg   [7:0] indvar_flatten20_fu_78;
wire   [7:0] select_ln37_1_fu_340_p3;
reg   [7:0] ap_sig_allocacmp_indvar_flatten20_load;
reg   [4:0] i_fu_82;
reg   [12:0] indvar_flatten35_fu_86;
wire   [12:0] add_ln36_fu_281_p2;
reg   [12:0] ap_sig_allocacmp_indvar_flatten35_load;
reg    orig_ce1_local;
reg   [13:0] orig_address1_local;
reg    orig_ce0_local;
reg   [13:0] orig_address0_local;
reg    sol_we0_local;
reg   [31:0] sol_d0_local;
wire   [31:0] add_ln48_5_fu_706_p2;
reg    sol_ce0_local;
reg   [13:0] sol_address0_local;
wire   [31:0] add_ln48_11_fu_712_p2;
reg  signed [31:0] grp_fu_228_p0;
reg  signed [31:0] grp_fu_228_p1;
wire   [0:0] icmp_ln38_fu_316_p2;
wire   [0:0] xor_ln11_fu_310_p2;
wire   [7:0] add_ln37_fu_334_p2;
wire   [4:0] indvars_iv_next2554_fu_361_p2;
wire   [4:0] indvars_iv_next3847_fu_373_p2;
wire   [0:0] empty_fu_386_p2;
wire   [4:0] indvars_iv_next25_mid1_fu_397_p2;
wire   [4:0] select_ln11_1_fu_366_p3;
wire   [13:0] add_ln6_fu_420_p4;
wire   [13:0] add_ln44_1_fu_441_p4;
wire   [3:0] add_ln45_fu_466_p2;
wire   [13:0] add_ln45_1_fu_471_p4;
wire   [13:0] add_ln42_1_fu_484_p4;
wire   [13:0] add_ln43_1_fu_507_p4;
wire   [4:0] zext_ln38_fu_504_p1;
wire   [4:0] add_ln44_2_fu_519_p2;
wire   [13:0] zext_ln44_1_fu_529_p1;
wire   [13:0] tmp_4_fu_496_p4;
wire   [13:0] add_ln44_3_fu_533_p2;
wire  signed [5:0] tmp1_cast_cast_fu_556_p3;
wire   [9:0] tmp1_cast_cast_cast_fu_563_p1;
wire   [9:0] tmp_3_fu_549_p3;
wire  signed [9:0] tmp2_cast_fu_573_p1;
wire   [13:0] add_ln2_fu_583_p4;
wire   [13:0] add_ln3_fu_595_p3;
wire   [31:0] add_ln48_2_fu_607_p2;
wire   [13:0] add_ln4_fu_618_p3;
wire   [13:0] add_ln5_fu_629_p4;
wire   [31:0] add_ln48_8_fu_641_p1;
wire   [31:0] add_ln48_8_fu_641_p2;
wire   [31:0] add_ln48_fu_652_p0;
wire   [13:0] add_ln40_1_fu_658_p3;
wire   [13:0] add_ln41_1_fu_669_p3;
wire   [31:0] add_ln48_1_fu_680_p1;
wire   [31:0] add_ln48_1_fu_680_p2;
wire  signed [31:0] add_ln48_6_fu_690_p0;
wire   [31:0] add_ln48_7_fu_696_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage0;
reg    ap_idle_pp0_0to0;
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
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 6'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 k_fu_70 = 4'd0;
#0 j_fu_74 = 5'd0;
#0 indvar_flatten20_fu_78 = 8'd0;
#0 i_fu_82 = 5'd0;
#0 indvar_flatten35_fu_86 = 13'd0;
#0 ap_done_reg = 1'b0;
end
stencil3d_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U7(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_228_p0),.din1(grp_fu_228_p1),.ce(1'b1),.dout(grp_fu_228_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage5)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
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
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        i_fu_82 <= 5'd1;
    end else if (((icmp_ln36_reg_763 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        i_fu_82 <= select_ln36_fu_379_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln36_fu_275_p2 == 1'd0))) begin
            indvar_flatten20_fu_78 <= select_ln37_1_fu_340_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten20_fu_78 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln36_fu_275_p2 == 1'd0))) begin
            indvar_flatten35_fu_86 <= add_ln36_fu_281_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten35_fu_86 <= 13'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        j_fu_74 <= 5'd1;
    end else if (((icmp_ln36_reg_763 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        j_fu_74 <= select_ln37_fu_409_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k_fu_70 <= 4'd1;
    end else if (((icmp_ln36_reg_763 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        k_fu_70 <= trunc_ln44_fu_525_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reg_237 <= orig_q1;
    end else if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_237 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln44_reg_847 <= add_ln44_fu_435_p2;
        add_ln48_4_reg_961 <= add_ln48_4_fu_685_p2;
        add_ln48_6_reg_966 <= add_ln48_6_fu_690_p2;
        indvars_iv_next25_mid2_reg_823 <= indvars_iv_next25_mid2_fu_402_p3;
        k_2_mid2_reg_813 <= k_2_mid2_fu_390_p3;
        select_ln36_reg_802 <= select_ln36_fu_379_p3;
        select_ln37_reg_829 <= select_ln37_fu_409_p3;
        tmp3_reg_837 <= tmp3_fu_414_p2;
        zext_ln44_reg_855[13 : 0] <= zext_ln44_fu_451_p1[13 : 0];
        zext_ln44_reg_855_pp0_iter1_reg[13 : 0] <= zext_ln44_reg_855[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln48_10_reg_971 <= add_ln48_10_fu_701_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        add_ln48_3_reg_921 <= add_ln48_3_fu_612_p2;
        empty_5_reg_895 <= empty_5_fu_567_p2;
        empty_6_reg_900 <= empty_6_fu_577_p2;
        mul_ln48_2_reg_926_pp0_iter1_reg <= mul_ln48_2_reg_926;
        zext_ln39_reg_906[13 : 0] <= zext_ln39_fu_590_p1[13 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        add_ln48_9_reg_941 <= add_ln48_9_fu_647_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln48_reg_946 <= add_ln48_fu_652_p2;
        and_ln11_reg_790 <= and_ln11_fu_322_p2;
        icmp_ln36_reg_763 <= icmp_ln36_fu_275_p2;
        icmp_ln37_reg_777 <= icmp_ln37_fu_296_p2;
        indvars_iv_next25_dup_reg_797 <= indvars_iv_next25_dup_fu_328_p2;
        j_load_reg_772 <= ap_sig_allocacmp_j_load;
        k_load_reg_767 <= ap_sig_allocacmp_k_load;
        select_ln11_reg_784 <= select_ln11_fu_302_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        mul_ln48_1_reg_976 <= grp_fu_228_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        mul_ln48_2_reg_926 <= grp_fu_228_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_load_6_reg_875 <= orig_q1;
        orig_load_9_reg_880 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_232 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5)))) begin
        reg_243 <= grp_fu_228_p2;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_763 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln36_reg_763 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten20_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten20_load = indvar_flatten20_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten35_load = 13'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten35_load = indvar_flatten35_fu_86;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j_load = 5'd1;
    end else begin
        ap_sig_allocacmp_j_load = j_fu_74;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k_load = 4'd1;
    end else begin
        ap_sig_allocacmp_k_load = k_fu_70;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_228_p0 = C_load_1;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_228_p0 = reg_232;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_228_p0 = reg_237;
    end else begin
        grp_fu_228_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_228_p1 = add_ln48_10_reg_971;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_228_p1 = add_ln48_4_reg_961;
    end else if ((((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)))) begin
        grp_fu_228_p1 = C_load;
    end else begin
        grp_fu_228_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_address0_local = zext_ln41_1_fu_675_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_address0_local = zext_ln42_fu_636_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_address0_local = zext_ln40_fu_602_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_address0_local = zext_ln44_2_fu_539_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_address0_local = zext_ln42_1_fu_491_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_address0_local = zext_ln44_fu_451_p1;
    end else begin
        orig_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_address1_local = zext_ln40_1_fu_664_p1;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        orig_address1_local = zext_ln41_fu_624_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        orig_address1_local = zext_ln39_fu_590_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        orig_address1_local = zext_ln43_1_fu_514_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_address1_local = zext_ln45_fu_479_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_address1_local = zext_ln43_fu_430_p1;
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
        sol_address0_local = zext_ln44_reg_855_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_address0_local = zext_ln39_reg_906;
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
        sol_d0_local = add_ln48_11_fu_712_p2;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        sol_d0_local = add_ln48_5_fu_706_p2;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage0))) begin
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
assign add_ln2_fu_583_p4 = {{{select_ln36_reg_802}, {select_ln37_reg_829}}, {k_2_mid2_reg_813}};
assign add_ln36_fu_281_p2 = (ap_sig_allocacmp_indvar_flatten35_load + 13'd1);
assign add_ln37_fu_334_p2 = (ap_sig_allocacmp_indvar_flatten20_load + 8'd1);
assign add_ln3_fu_595_p3 = {{empty_5_fu_567_p2}, {k_2_mid2_reg_813}};
assign add_ln40_1_fu_658_p3 = {{empty_5_reg_895}, {add_ln44_reg_847}};
assign add_ln41_1_fu_669_p3 = {{empty_6_reg_900}, {add_ln44_reg_847}};
assign add_ln42_1_fu_484_p4 = {{{select_ln36_reg_802}, {indvars_iv_next25_mid2_reg_823}}, {add_ln44_reg_847}};
assign add_ln43_1_fu_507_p4 = {{{select_ln36_reg_802}, {tmp3_reg_837}}, {add_ln44_reg_847}};
assign add_ln44_1_fu_441_p4 = {{{select_ln36_fu_379_p3}, {select_ln37_fu_409_p3}}, {add_ln44_fu_435_p2}};
assign add_ln44_2_fu_519_p2 = (zext_ln38_fu_504_p1 + 5'd2);
assign add_ln44_3_fu_533_p2 = (zext_ln44_1_fu_529_p1 + tmp_4_fu_496_p4);
assign add_ln44_fu_435_p2 = (k_2_mid2_fu_390_p3 + 4'd1);
assign add_ln45_1_fu_471_p4 = {{{select_ln36_reg_802}, {select_ln37_reg_829}}, {add_ln45_fu_466_p2}};
assign add_ln45_fu_466_p2 = ($signed(k_2_mid2_reg_813) + $signed(4'd15));
assign add_ln48_10_fu_701_p2 = (add_ln48_9_reg_941 + add_ln48_7_fu_696_p2);
assign add_ln48_11_fu_712_p2 = (reg_243 + mul_ln48_2_reg_926_pp0_iter1_reg);
assign add_ln48_1_fu_680_p1 = reg_237;
assign add_ln48_1_fu_680_p2 = (add_ln48_reg_946 + add_ln48_1_fu_680_p1);
assign add_ln48_2_fu_607_p2 = ($signed(reg_237) + $signed(orig_load_6_reg_875));
assign add_ln48_3_fu_612_p2 = (add_ln48_2_fu_607_p2 + reg_232);
assign add_ln48_4_fu_685_p2 = (add_ln48_3_reg_921 + add_ln48_1_fu_680_p2);
assign add_ln48_5_fu_706_p2 = (mul_ln48_1_reg_976 + reg_243);
assign add_ln48_6_fu_690_p0 = reg_232;
assign add_ln48_6_fu_690_p2 = ($signed(add_ln48_6_fu_690_p0) + $signed(orig_q0));
assign add_ln48_7_fu_696_p2 = (add_ln48_6_reg_966 + reg_232);
assign add_ln48_8_fu_641_p1 = reg_237;
assign add_ln48_8_fu_641_p2 = (reg_232 + add_ln48_8_fu_641_p1);
assign add_ln48_9_fu_647_p2 = (add_ln48_8_fu_641_p2 + orig_load_9_reg_880);
assign add_ln48_fu_652_p0 = reg_237;
assign add_ln48_fu_652_p2 = (add_ln48_fu_652_p0 + orig_q0);
assign add_ln4_fu_618_p3 = {{empty_6_reg_900}, {k_2_mid2_reg_813}};
assign add_ln5_fu_629_p4 = {{{select_ln36_reg_802}, {indvars_iv_next25_mid2_reg_823}}, {k_2_mid2_reg_813}};
assign add_ln6_fu_420_p4 = {{{select_ln36_fu_379_p3}, {tmp3_fu_414_p2}}, {k_2_mid2_fu_390_p3}};
assign and_ln11_fu_322_p2 = (xor_ln11_fu_310_p2 & icmp_ln38_fu_316_p2);
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
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage5;
assign ap_ready = ap_ready_sig;
assign empty_5_fu_567_p2 = (tmp1_cast_cast_cast_fu_563_p1 + tmp_3_fu_549_p3);
assign empty_6_fu_577_p2 = ($signed(tmp2_cast_fu_573_p1) + $signed(tmp_3_fu_549_p3));
assign empty_fu_386_p2 = (icmp_ln37_reg_777 | and_ln11_reg_790);
assign icmp_ln36_fu_275_p2 = ((ap_sig_allocacmp_indvar_flatten35_load == 13'd6300) ? 1'b1 : 1'b0);
assign icmp_ln37_fu_296_p2 = ((ap_sig_allocacmp_indvar_flatten20_load == 8'd210) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_316_p2 = ((ap_sig_allocacmp_k_load == 4'd15) ? 1'b1 : 1'b0);
assign indvars_iv_next2554_fu_361_p2 = (j_load_reg_772 + 5'd1);
assign indvars_iv_next25_dup_fu_328_p2 = (select_ln11_fu_302_p3 + 5'd1);
assign indvars_iv_next25_mid1_fu_397_p2 = (select_ln11_reg_784 + 5'd2);
assign indvars_iv_next25_mid2_fu_402_p3 = ((and_ln11_reg_790[0:0] == 1'b1) ? indvars_iv_next25_mid1_fu_397_p2 : select_ln11_1_fu_366_p3);
assign indvars_iv_next3847_fu_373_p2 = (i_fu_82 + 5'd1);
assign k_2_mid2_fu_390_p3 = ((empty_fu_386_p2[0:0] == 1'b1) ? 4'd1 : k_load_reg_767);
assign orig_address0 = orig_address0_local;
assign orig_address1 = orig_address1_local;
assign orig_ce0 = orig_ce0_local;
assign orig_ce1 = orig_ce1_local;
assign select_ln11_1_fu_366_p3 = ((icmp_ln37_reg_777[0:0] == 1'b1) ? 5'd2 : indvars_iv_next2554_fu_361_p2);
assign select_ln11_fu_302_p3 = ((icmp_ln37_fu_296_p2[0:0] == 1'b1) ? 5'd1 : ap_sig_allocacmp_j_load);
assign select_ln36_fu_379_p3 = ((icmp_ln37_reg_777[0:0] == 1'b1) ? indvars_iv_next3847_fu_373_p2 : i_fu_82);
assign select_ln37_1_fu_340_p3 = ((icmp_ln37_fu_296_p2[0:0] == 1'b1) ? 8'd1 : add_ln37_fu_334_p2);
assign select_ln37_fu_409_p3 = ((and_ln11_reg_790[0:0] == 1'b1) ? indvars_iv_next25_dup_reg_797 : select_ln11_reg_784);
assign sol_address0 = sol_address0_local;
assign sol_ce0 = sol_ce0_local;
assign sol_d0 = sol_d0_local;
assign sol_we0 = sol_we0_local;
assign tmp1_cast_cast_cast_fu_563_p1 = $unsigned(tmp1_cast_cast_fu_556_p3);
assign tmp1_cast_cast_fu_556_p3 = {{1'd1}, {select_ln37_reg_829}};
assign tmp2_cast_fu_573_p1 = tmp1_cast_cast_fu_556_p3;
assign tmp3_fu_414_p2 = ($signed(select_ln37_fu_409_p3) + $signed(5'd31));
assign tmp_3_fu_549_p3 = {{select_ln36_reg_802}, {5'd0}};
assign tmp_4_fu_496_p4 = {{{select_ln36_reg_802}, {select_ln37_reg_829}}, {4'd0}};
assign trunc_ln44_fu_525_p1 = add_ln44_2_fu_519_p2[3:0];
assign xor_ln11_fu_310_p2 = (icmp_ln37_fu_296_p2 ^ 1'd1);
assign zext_ln38_fu_504_p1 = k_2_mid2_reg_813;
assign zext_ln39_fu_590_p1 = add_ln2_fu_583_p4;
assign zext_ln40_1_fu_664_p1 = add_ln40_1_fu_658_p3;
assign zext_ln40_fu_602_p1 = add_ln3_fu_595_p3;
assign zext_ln41_1_fu_675_p1 = add_ln41_1_fu_669_p3;
assign zext_ln41_fu_624_p1 = add_ln4_fu_618_p3;
assign zext_ln42_1_fu_491_p1 = add_ln42_1_fu_484_p4;
assign zext_ln42_fu_636_p1 = add_ln5_fu_629_p4;
assign zext_ln43_1_fu_514_p1 = add_ln43_1_fu_507_p4;
assign zext_ln43_fu_430_p1 = add_ln6_fu_420_p4;
assign zext_ln44_1_fu_529_p1 = add_ln44_2_fu_519_p2;
assign zext_ln44_2_fu_539_p1 = add_ln44_3_fu_533_p2;
assign zext_ln44_fu_451_p1 = add_ln44_1_fu_441_p4;
assign zext_ln45_fu_479_p1 = add_ln45_1_fu_471_p4;
always @ (posedge ap_clk) begin
    zext_ln44_reg_855[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln44_reg_855_pp0_iter1_reg[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
    zext_ln39_reg_906[63:14] <= 50'b00000000000000000000000000000000000000000000000000;
end
endmodule 