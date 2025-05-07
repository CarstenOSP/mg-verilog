module syrk_4096_syrk_4096_Pipeline_VITIS_LOOP_39_2_VITIS_LOOP_43_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln38,zext_ln40,v3_Addr_A,v3_EN_A,v3_WEN_A,v3_Din_A,v3_Dout_A,v3_Addr_B,v3_EN_B,v3_WEN_B,v3_Din_B,v3_Dout_B,v0,v2_Addr_A,v2_EN_A,v2_WEN_A,v2_Din_A,v2_Dout_A,v1); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage4 = 6'd8;
parameter    ap_ST_fsm_pp0_stage5 = 6'd16;
parameter    ap_ST_fsm_pp0_stage3 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [24:0] zext_ln38;
input  [23:0] zext_ln40;
output  [31:0] v3_Addr_A;
output   v3_EN_A;
output  [3:0] v3_WEN_A;
output  [31:0] v3_Din_A;
input  [31:0] v3_Dout_A;
output  [31:0] v3_Addr_B;
output   v3_EN_B;
output  [3:0] v3_WEN_B;
output  [31:0] v3_Din_B;
input  [31:0] v3_Dout_B;
input  [31:0] v0;
output  [31:0] v2_Addr_A;
output   v2_EN_A;
output  [3:0] v2_WEN_A;
output  [31:0] v2_Din_A;
input  [31:0] v2_Dout_A;
input  [31:0] v1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln39_reg_366;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln39_fu_164_p2;
reg   [0:0] icmp_ln39_reg_366_pp0_iter1_reg;
wire   [0:0] first_iter_0_fu_219_p2;
reg   [0:0] first_iter_0_reg_370;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] first_iter_0_reg_370_pp0_iter1_reg;
reg   [23:0] v2_addr_reg_374;
reg   [23:0] v2_addr_reg_374_pp0_iter1_reg;
reg   [23:0] v2_addr_reg_374_pp0_iter2_reg;
wire   [0:0] icmp_ln43_1_fu_278_p2;
reg   [0:0] icmp_ln43_1_reg_389;
reg   [0:0] icmp_ln43_1_reg_389_pp0_iter1_reg;
reg   [0:0] icmp_ln43_1_reg_389_pp0_iter2_reg;
wire   [31:0] v6_fu_294_p1;
reg   [31:0] v6_reg_393;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] v3_load_reg_398;
reg   [31:0] v3_load_1_reg_403;
wire   [31:0] grp_fu_142_p2;
reg   [31:0] v12_reg_408;
reg   [31:0] v7_reg_413;
wire   [31:0] v10_fu_298_p1;
reg   [31:0] v13_reg_423;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] v9_fu_306_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage5_11001;
wire   [31:0] grp_fu_138_p2;
reg   [31:0] v14_reg_438;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln40_2_fu_234_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln44_1_fu_256_p1;
wire   [63:0] zext_ln45_fu_267_p1;
reg   [12:0] v8_fu_60;
wire   [12:0] add_ln43_fu_272_p2;
wire    ap_loop_init;
reg   [12:0] v5_fu_64;
wire   [12:0] select_ln39_1_fu_207_p3;
reg   [24:0] indvar_flatten_fu_68;
wire   [24:0] add_ln39_1_fu_170_p2;
reg   [24:0] ap_sig_allocacmp_indvar_flatten_load;
wire    ap_block_pp0_stage0;
reg   [31:0] v11_fu_72;
wire    ap_block_pp0_stage5;
reg    v2_EN_A_local;
reg   [31:0] v2_Addr_A_orig;
reg   [3:0] v2_WEN_A_local;
wire   [31:0] bitcast_ln46_fu_314_p1;
wire    ap_block_pp0_stage4;
reg    v3_EN_B_local;
wire   [31:0] v3_Addr_B_orig;
reg    v3_EN_A_local;
wire   [31:0] v3_Addr_A_orig;
reg   [31:0] grp_fu_142_p0;
reg   [31:0] grp_fu_142_p1;
wire    ap_block_pp0_stage3;
wire   [0:0] icmp_ln43_fu_193_p2;
wire   [12:0] add_ln39_fu_187_p2;
wire   [12:0] select_ln39_fu_199_p3;
wire   [23:0] zext_ln40_1_fu_225_p1;
wire   [23:0] add_ln40_fu_229_p2;
wire   [11:0] empty_fu_215_p1;
wire   [23:0] zext_ln44_fu_247_p1;
wire   [23:0] add_ln44_fu_251_p2;
wire   [23:0] tmp_2_fu_239_p3;
wire   [23:0] add_ln45_fu_261_p2;
wire    ap_block_pp0_stage2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage4;
reg    ap_idle_pp0_0to0;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
reg    ap_done_pending_pp0;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
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
#0 v8_fu_60 = 13'd0;
#0 v5_fu_64 = 13'd0;
#0 indvar_flatten_fu_68 = 25'd0;
#0 v11_fu_72 = 32'd0;
#0 ap_done_reg = 1'b0;
end
syrk_4096_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(v11_fu_72),.din1(v13_reg_423),.ce(1'b1),.dout(grp_fu_138_p2));
syrk_4096_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_142_p0),.din1(grp_fu_142_p1),.ce(1'b1),.dout(grp_fu_142_p2));
syrk_4096_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln39_fu_164_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten_fu_68 <= add_ln39_1_fu_170_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_68 <= 25'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        if (((ap_enable_reg_pp0_iter1 == 1'b1) & (first_iter_0_reg_370_pp0_iter1_reg == 1'd1))) begin
            v11_fu_72 <= v7_reg_413;
        end else if ((ap_enable_reg_pp0_iter2 == 1'b1)) begin
            v11_fu_72 <= v14_reg_438;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5_fu_64 <= 13'd0;
    end else if (((icmp_ln39_reg_366 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v5_fu_64 <= select_ln39_1_fu_207_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v8_fu_60 <= 13'd0;
    end else if (((icmp_ln39_reg_366 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v8_fu_60 <= add_ln43_fu_272_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        first_iter_0_reg_370 <= first_iter_0_fu_219_p2;
        first_iter_0_reg_370_pp0_iter1_reg <= first_iter_0_reg_370;
        icmp_ln43_1_reg_389 <= icmp_ln43_1_fu_278_p2;
        icmp_ln43_1_reg_389_pp0_iter1_reg <= icmp_ln43_1_reg_389;
        icmp_ln43_1_reg_389_pp0_iter2_reg <= icmp_ln43_1_reg_389_pp0_iter1_reg;
        v2_addr_reg_374 <= zext_ln40_2_fu_234_p1;
        v2_addr_reg_374_pp0_iter1_reg <= v2_addr_reg_374;
        v2_addr_reg_374_pp0_iter2_reg <= v2_addr_reg_374_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln39_reg_366 <= icmp_ln39_fu_164_p2;
        icmp_ln39_reg_366_pp0_iter1_reg <= icmp_ln39_reg_366;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v12_reg_408 <= grp_fu_142_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v13_reg_423 <= grp_fu_142_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v14_reg_438 <= grp_fu_138_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_load_1_reg_403 <= v3_Dout_A;
        v3_load_reg_398 <= v3_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v6_reg_393 <= v6_fu_294_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v7_reg_413 <= grp_fu_142_p2;
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_366 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((icmp_ln39_reg_366_pp0_iter1_reg == 1'd1) & (1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_condition_exit_pp0_iter1_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
        ap_done_pending_pp0 = 1'b1;
    end else begin
        ap_done_pending_pp0 = 1'b0;
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
        ap_sig_allocacmp_indvar_flatten_load = 25'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_68;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_142_p0 = v9_fu_306_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_142_p0 = v12_reg_408;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_142_p0 = v6_reg_393;
    end else begin
        grp_fu_142_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_142_p1 = v0;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_142_p1 = v10_fu_298_p1;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_142_p1 = v1;
    end else begin
        grp_fu_142_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_Addr_A_orig = v2_addr_reg_374_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_Addr_A_orig = zext_ln40_2_fu_234_p1;
    end else begin
        v2_Addr_A_orig = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_EN_A_local = 1'b1;
    end else begin
        v2_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln43_1_reg_389_pp0_iter2_reg == 1'd1))) begin
        v2_WEN_A_local = 4'd15;
    end else begin
        v2_WEN_A_local = 4'd0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_EN_A_local = 1'b1;
    end else begin
        v3_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v3_EN_B_local = 1'b1;
    end else begin
        v3_EN_B_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_ST_fsm_pp0_stage4 : begin
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
        ap_ST_fsm_pp0_stage3 : begin
            if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage3;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln39_1_fu_170_p2 = (ap_sig_allocacmp_indvar_flatten_load + 25'd1);
assign add_ln39_fu_187_p2 = (v5_fu_64 + 13'd1);
assign add_ln40_fu_229_p2 = (zext_ln40 + zext_ln40_1_fu_225_p1);
assign add_ln43_fu_272_p2 = (select_ln39_fu_199_p3 + 13'd1);
assign add_ln44_fu_251_p2 = (zext_ln40 + zext_ln44_fu_247_p1);
assign add_ln45_fu_261_p2 = (tmp_2_fu_239_p3 + zext_ln44_fu_247_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd4];
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
assign bitcast_ln46_fu_314_p1 = v14_reg_438;
assign empty_fu_215_p1 = select_ln39_1_fu_207_p3[11:0];
assign first_iter_0_fu_219_p2 = ((select_ln39_fu_199_p3 == 13'd0) ? 1'b1 : 1'b0);
assign icmp_ln39_fu_164_p2 = ((ap_sig_allocacmp_indvar_flatten_load == zext_ln38) ? 1'b1 : 1'b0);
assign icmp_ln43_1_fu_278_p2 = ((add_ln43_fu_272_p2 == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_193_p2 = ((v8_fu_60 == 13'd4096) ? 1'b1 : 1'b0);
assign select_ln39_1_fu_207_p3 = ((icmp_ln43_fu_193_p2[0:0] == 1'b1) ? add_ln39_fu_187_p2 : v5_fu_64);
assign select_ln39_fu_199_p3 = ((icmp_ln43_fu_193_p2[0:0] == 1'b1) ? 13'd0 : v8_fu_60);
assign tmp_2_fu_239_p3 = {{empty_fu_215_p1}, {12'd0}};
assign v10_fu_298_p1 = v3_load_1_reg_403;
assign v2_Addr_A = v2_Addr_A_orig << 32'd2;
assign v2_Din_A = bitcast_ln46_fu_314_p1;
assign v2_EN_A = v2_EN_A_local;
assign v2_WEN_A = v2_WEN_A_local;
assign v3_Addr_A = v3_Addr_A_orig << 32'd2;
assign v3_Addr_A_orig = zext_ln45_fu_267_p1;
assign v3_Addr_B = v3_Addr_B_orig << 32'd2;
assign v3_Addr_B_orig = zext_ln44_1_fu_256_p1;
assign v3_Din_A = 32'd0;
assign v3_Din_B = 32'd0;
assign v3_EN_A = v3_EN_A_local;
assign v3_EN_B = v3_EN_B_local;
assign v3_WEN_A = 4'd0;
assign v3_WEN_B = 4'd0;
assign v6_fu_294_p1 = v2_Dout_A;
assign v9_fu_306_p1 = v3_load_reg_398;
assign zext_ln40_1_fu_225_p1 = select_ln39_1_fu_207_p3;
assign zext_ln40_2_fu_234_p1 = add_ln40_fu_229_p2;
assign zext_ln44_1_fu_256_p1 = add_ln44_fu_251_p2;
assign zext_ln44_fu_247_p1 = select_ln39_fu_199_p3;
assign zext_ln45_fu_267_p1 = add_ln45_fu_261_p2;
endmodule 