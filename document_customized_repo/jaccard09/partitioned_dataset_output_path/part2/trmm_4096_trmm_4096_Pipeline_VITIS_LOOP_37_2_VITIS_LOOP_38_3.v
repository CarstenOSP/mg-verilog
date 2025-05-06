
module trmm_4096_trmm_4096_Pipeline_VITIS_LOOP_37_2_VITIS_LOOP_38_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln36,indvars_iv15,zext_ln39,v2_Addr_A,v2_EN_A,v2_WEN_A,v2_Din_A,v2_Dout_A,v2_Addr_B,v2_EN_B,v2_WEN_B,v2_Din_B,v2_Dout_B,v1_Addr_A,v1_EN_A,v1_WEN_A,v1_Din_A,v1_Dout_A,v0);  
parameter    ap_ST_fsm_pp0_stage0 = 13'd1;
parameter    ap_ST_fsm_pp0_stage1 = 13'd2;
parameter    ap_ST_fsm_pp0_stage2 = 13'd4;
parameter    ap_ST_fsm_pp0_stage3 = 13'd8;
parameter    ap_ST_fsm_pp0_stage4 = 13'd16;
parameter    ap_ST_fsm_pp0_stage5 = 13'd32;
parameter    ap_ST_fsm_pp0_stage6 = 13'd64;
parameter    ap_ST_fsm_pp0_stage7 = 13'd128;
parameter    ap_ST_fsm_pp0_stage8 = 13'd256;
parameter    ap_ST_fsm_pp0_stage9 = 13'd512;
parameter    ap_ST_fsm_pp0_stage10 = 13'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 13'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 13'd4096;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [24:0] zext_ln36;
input  [12:0] indvars_iv15;
input  [23:0] zext_ln39;
output  [31:0] v2_Addr_A;
output   v2_EN_A;
output  [3:0] v2_WEN_A;
output  [31:0] v2_Din_A;
input  [31:0] v2_Dout_A;
output  [31:0] v2_Addr_B;
output   v2_EN_B;
output  [3:0] v2_WEN_B;
output  [31:0] v2_Din_B;
input  [31:0] v2_Dout_B;
output  [31:0] v1_Addr_A;
output   v1_EN_A;
output  [3:0] v1_WEN_A;
output  [31:0] v1_Din_A;
input  [31:0] v1_Dout_A;
input  [31:0] v0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [12:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_subdone;
reg   [0:0] icmp_ln37_reg_424;
reg    ap_condition_exit_pp0_iter0_stage3;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln37_fu_180_p2;
wire   [12:0] select_ln37_fu_214_p3;
reg   [12:0] select_ln37_reg_428;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [23:0] v2_addr_reg_433;
reg   [23:0] v2_addr_reg_433_pp0_iter1_reg;
wire   [0:0] addr_cmp_fu_284_p2;
reg   [0:0] addr_cmp_reg_448;
wire   [0:0] addr_cmp14_fu_293_p2;
reg   [0:0] addr_cmp14_reg_453;
reg   [31:0] v1_load_reg_458;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] v2_load_reg_463;
reg   [31:0] v2_load_1_reg_468;
wire   [31:0] v6_fu_309_p1;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v7_fu_322_p1;
wire   [31:0] reuse_select15_fu_330_p3;
reg   [31:0] reuse_select15_reg_483;
wire   [31:0] grp_fu_148_p2;
reg   [31:0] v9_reg_488;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [31:0] grp_fu_144_p2;
reg   [31:0] v11_reg_498;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
wire   [0:0] icmp_ln38_1_fu_345_p2;
reg   [0:0] icmp_ln38_1_reg_504;
wire   [31:0] bitcast_ln44_fu_361_p1;
reg   [31:0] bitcast_ln44_reg_509;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] p_cast_fu_243_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln39_2_fu_257_p1;
wire   [63:0] zext_ln40_fu_276_p1;
reg   [63:0] reuse_addr_reg_fu_62;
wire    ap_loop_init;
reg   [31:0] reuse_reg_fu_66;
wire    ap_block_pp0_stage3;
reg   [12:0] v5_fu_70;
wire   [12:0] add_ln38_fu_340_p2;
reg   [12:0] v4_fu_74;
wire   [12:0] select_ln37_1_fu_226_p3;
reg   [24:0] indvar_flatten_fu_78;
wire   [24:0] add_ln37_1_fu_186_p2;
reg   [24:0] ap_sig_allocacmp_indvar_flatten_load;
wire    ap_block_pp0_stage0;
reg    v1_EN_A_local;
wire   [31:0] v1_Addr_A_orig;
reg    v2_EN_B_local;
wire   [31:0] v2_Addr_B_orig;
reg    v2_EN_A_local;
reg   [31:0] v2_Addr_A_orig;
reg   [3:0] v2_WEN_A_local;
wire   [31:0] grp_fu_144_p0;
wire    ap_block_pp0_stage7;
reg   [31:0] grp_fu_148_p0;
reg   [31:0] grp_fu_148_p1;
wire    ap_block_pp0_stage12;
wire   [0:0] icmp_ln38_fu_209_p2;
wire   [12:0] add_ln37_fu_203_p2;
wire   [23:0] select_ln37_1_cast_fu_234_p1;
wire   [23:0] empty_fu_238_p2;
wire   [23:0] zext_ln39_1_fu_248_p1;
wire   [23:0] add_ln39_fu_252_p2;
wire   [11:0] trunc_ln37_fu_222_p1;
wire   [23:0] tmp_2_fu_262_p3;
wire   [23:0] add_ln40_fu_270_p2;
wire   [31:0] reuse_select_fu_316_p3;
wire    ap_block_pp0_stage11;
wire    ap_block_pp0_stage2;
wire   [31:0] select_ln38_fu_355_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [12:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 13'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 reuse_addr_reg_fu_62 = 64'd0;
#0 reuse_reg_fu_66 = 32'd0;
#0 v5_fu_70 = 13'd0;
#0 v4_fu_74 = 13'd0;
#0 indvar_flatten_fu_78 = 25'd0;
#0 ap_done_reg = 1'b0;
end
trmm_4096_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_144_p0),.din1(v9_reg_488),.ce(1'b1),.dout(grp_fu_144_p2));
trmm_4096_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_148_p0),.din1(grp_fu_148_p1),.ce(1'b1),.dout(grp_fu_148_p2));
trmm_4096_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage3),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter0_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
            ap_enable_reg_pp0_iter0_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
            ap_enable_reg_pp0_iter0_reg <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage12_subdone) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln37_fu_180_p2 == 1'd0))) begin
            indvar_flatten_fu_78 <= add_ln37_1_fu_186_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_78 <= 25'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reuse_addr_reg_fu_62 <= 64'd18446744073709551615;
    end else if (((icmp_ln37_reg_424 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        reuse_addr_reg_fu_62 <= p_cast_fu_243_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        reuse_reg_fu_66 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        reuse_reg_fu_66 <= bitcast_ln44_fu_361_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_fu_74 <= 13'd0;
    end else if (((icmp_ln37_reg_424 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_fu_74 <= select_ln37_1_fu_226_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v5_fu_70 <= 13'd0;
    end else if (((icmp_ln37_reg_424 == 1'd0) & (1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v5_fu_70 <= add_ln38_fu_340_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        addr_cmp14_reg_453 <= addr_cmp14_fu_293_p2;
        addr_cmp_reg_448 <= addr_cmp_fu_284_p2;
        select_ln37_reg_428 <= select_ln37_fu_214_p3;
        v2_addr_reg_433 <= p_cast_fu_243_p1;
        v2_addr_reg_433_pp0_iter1_reg <= v2_addr_reg_433;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        bitcast_ln44_reg_509 <= bitcast_ln44_fu_361_p1;
        v1_load_reg_458 <= v1_Dout_A;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln37_reg_424 <= icmp_ln37_fu_180_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        icmp_ln38_1_reg_504 <= icmp_ln38_1_fu_345_p2;
        v11_reg_498 <= grp_fu_144_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        reuse_select15_reg_483 <= reuse_select15_fu_330_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_load_1_reg_468 <= v2_Dout_A;
        v2_load_reg_463 <= v2_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v9_reg_488 <= grp_fu_148_p2;
    end
end
always @ (*) begin
    if (((icmp_ln37_reg_424 == 1'd1) & (1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready == 1'b1) & (1'b0 == ap_block_pp0_stage3_subdone) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
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
    if (((ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b0)) begin
        ap_idle_pp0_1to1 = 1'b1;
    end else begin
        ap_idle_pp0_1to1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 25'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_78;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_148_p0 = v11_reg_498;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_148_p0 = v6_fu_309_p1;
        end else begin
            grp_fu_148_p0 = 'bx;
        end
    end else begin
        grp_fu_148_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            grp_fu_148_p1 = v0;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_148_p1 = v7_fu_322_p1;
        end else begin
            grp_fu_148_p1 = 'bx;
        end
    end else begin
        grp_fu_148_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v1_EN_A_local = 1'b1;
    end else begin
        v1_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_Addr_A_orig = v2_addr_reg_433_pp0_iter1_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_Addr_A_orig = p_cast_fu_243_p1;
    end else begin
        v2_Addr_A_orig = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_EN_A_local = 1'b1;
    end else begin
        v2_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_EN_B_local = 1'b1;
    end else begin
        v2_EN_B_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v2_WEN_A_local = 4'd15;
    end else begin
        v2_WEN_A_local = 4'd0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to1 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if ((1'b1 == ap_condition_exit_pp0_iter0_stage3)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage3_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end
        end
        ap_ST_fsm_pp0_stage6 : begin
            if ((1'b0 == ap_block_pp0_stage6_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        ap_ST_fsm_pp0_stage7 : begin
            if ((1'b0 == ap_block_pp0_stage7_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        ap_ST_fsm_pp0_stage8 : begin
            if ((1'b0 == ap_block_pp0_stage8_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage8;
            end
        end
        ap_ST_fsm_pp0_stage9 : begin
            if ((1'b0 == ap_block_pp0_stage9_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage9;
            end
        end
        ap_ST_fsm_pp0_stage10 : begin
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end
        end
        ap_ST_fsm_pp0_stage12 : begin
            if ((1'b0 == ap_block_pp0_stage12_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln37_1_fu_186_p2 = (ap_sig_allocacmp_indvar_flatten_load + 25'd1);
assign add_ln37_fu_203_p2 = (v4_fu_74 + 13'd1);
assign add_ln38_fu_340_p2 = (select_ln37_reg_428 + 13'd1);
assign add_ln39_fu_252_p2 = (zext_ln39 + zext_ln39_1_fu_248_p1);
assign add_ln40_fu_270_p2 = (tmp_2_fu_262_p3 + select_ln37_1_cast_fu_234_p1);
assign addr_cmp14_fu_293_p2 = ((reuse_addr_reg_fu_62 == p_cast_fu_243_p1) ? 1'b1 : 1'b0);
assign addr_cmp_fu_284_p2 = ((reuse_addr_reg_fu_62 == zext_ln40_fu_276_p1) ? 1'b1 : 1'b0);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage3;
assign ap_ready = ap_ready_sig;
assign bitcast_ln44_fu_361_p1 = select_ln38_fu_355_p3;
assign empty_fu_238_p2 = (zext_ln39 + select_ln37_1_cast_fu_234_p1);
assign grp_fu_144_p0 = reuse_select15_reg_483;
assign icmp_ln37_fu_180_p2 = ((ap_sig_allocacmp_indvar_flatten_load == zext_ln36) ? 1'b1 : 1'b0);
assign icmp_ln38_1_fu_345_p2 = ((add_ln38_fu_340_p2 == indvars_iv15) ? 1'b1 : 1'b0);
assign icmp_ln38_fu_209_p2 = ((v5_fu_70 == indvars_iv15) ? 1'b1 : 1'b0);
assign p_cast_fu_243_p1 = empty_fu_238_p2;
assign reuse_select15_fu_330_p3 = ((addr_cmp14_reg_453[0:0] == 1'b1) ? reuse_reg_fu_66 : v2_load_1_reg_468);
assign reuse_select_fu_316_p3 = ((addr_cmp_reg_448[0:0] == 1'b1) ? reuse_reg_fu_66 : v2_load_reg_463);
assign select_ln37_1_cast_fu_234_p1 = select_ln37_1_fu_226_p3;
assign select_ln37_1_fu_226_p3 = ((icmp_ln38_fu_209_p2[0:0] == 1'b1) ? add_ln37_fu_203_p2 : v4_fu_74);
assign select_ln37_fu_214_p3 = ((icmp_ln38_fu_209_p2[0:0] == 1'b1) ? 13'd0 : v5_fu_70);
assign select_ln38_fu_355_p3 = ((icmp_ln38_1_reg_504[0:0] == 1'b1) ? grp_fu_148_p2 : v11_reg_498);
assign tmp_2_fu_262_p3 = {{trunc_ln37_fu_222_p1}, {12'd0}};
assign trunc_ln37_fu_222_p1 = select_ln37_fu_214_p3[11:0];
assign v1_Addr_A = v1_Addr_A_orig << 32'd2;
assign v1_Addr_A_orig = zext_ln39_2_fu_257_p1;
assign v1_Din_A = 32'd0;
assign v1_EN_A = v1_EN_A_local;
assign v1_WEN_A = 4'd0;
assign v2_Addr_A = v2_Addr_A_orig << 32'd2;
assign v2_Addr_B = v2_Addr_B_orig << 32'd2;
assign v2_Addr_B_orig = zext_ln40_fu_276_p1;
assign v2_Din_A = bitcast_ln44_reg_509;
assign v2_Din_B = 32'd0;
assign v2_EN_A = v2_EN_A_local;
assign v2_EN_B = v2_EN_B_local;
assign v2_WEN_A = v2_WEN_A_local;
assign v2_WEN_B = 4'd0;
assign v6_fu_309_p1 = v1_load_reg_458;
assign v7_fu_322_p1 = reuse_select_fu_316_p3;
assign zext_ln39_1_fu_248_p1 = select_ln37_fu_214_p3;
assign zext_ln39_2_fu_257_p1 = add_ln39_fu_252_p2;
assign zext_ln40_fu_276_p1 = add_ln40_fu_270_p2;
endmodule 
