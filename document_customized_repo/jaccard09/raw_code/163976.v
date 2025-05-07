module syr2k_4096_syr2k_4096_Pipeline_VITIS_LOOP_43_2_VITIS_LOOP_47_3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,zext_ln42,zext_ln44,v3_Addr_A,v3_EN_A,v3_WEN_A,v3_Din_A,v3_Dout_A,v3_Addr_B,v3_EN_B,v3_WEN_B,v3_Din_B,v3_Dout_B,v4_Addr_A,v4_EN_A,v4_WEN_A,v4_Din_A,v4_Dout_A,v4_Addr_B,v4_EN_B,v4_WEN_B,v4_Din_B,v4_Dout_B,v0,v2_Addr_A,v2_EN_A,v2_WEN_A,v2_Din_A,v2_Dout_A,v1); 
parameter    ap_ST_fsm_pp0_stage0 = 6'd1;
parameter    ap_ST_fsm_pp0_stage1 = 6'd2;
parameter    ap_ST_fsm_pp0_stage2 = 6'd4;
parameter    ap_ST_fsm_pp0_stage5 = 6'd8;
parameter    ap_ST_fsm_pp0_stage3 = 6'd16;
parameter    ap_ST_fsm_pp0_stage4 = 6'd32;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [24:0] zext_ln42;
input  [23:0] zext_ln44;
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
output  [31:0] v4_Addr_A;
output   v4_EN_A;
output  [3:0] v4_WEN_A;
output  [31:0] v4_Din_A;
input  [31:0] v4_Dout_A;
output  [31:0] v4_Addr_B;
output   v4_EN_B;
output  [3:0] v4_WEN_B;
output  [31:0] v4_Din_B;
input  [31:0] v4_Dout_B;
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
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_subdone;
reg   [0:0] icmp_ln43_reg_403;
reg    ap_condition_exit_pp0_iter0_stage5;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln43_fu_191_p2;
reg   [0:0] icmp_ln43_reg_403_pp0_iter1_reg;
reg   [0:0] icmp_ln43_reg_403_pp0_iter2_reg;
wire   [0:0] first_iter_0_fu_246_p2;
reg   [0:0] first_iter_0_reg_407;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] first_iter_0_reg_407_pp0_iter1_reg;
reg   [0:0] first_iter_0_reg_407_pp0_iter2_reg;
reg   [23:0] v2_addr_reg_411;
reg   [23:0] v2_addr_reg_411_pp0_iter1_reg;
reg   [23:0] v2_addr_reg_411_pp0_iter2_reg;
reg   [23:0] v2_addr_reg_411_pp0_iter3_reg;
wire   [0:0] icmp_ln47_1_fu_307_p2;
reg   [0:0] icmp_ln47_1_reg_436;
reg   [0:0] icmp_ln47_1_reg_436_pp0_iter1_reg;
reg   [0:0] icmp_ln47_1_reg_436_pp0_iter2_reg;
reg   [0:0] icmp_ln47_1_reg_436_pp0_iter3_reg;
wire   [31:0] v7_fu_323_p1;
reg   [31:0] v7_reg_440;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [31:0] v3_load_reg_445;
reg   [31:0] v4_load_reg_450;
reg   [31:0] v4_load_1_reg_455;
reg   [31:0] v3_load_1_reg_460;
wire   [31:0] grp_fu_169_p2;
reg   [31:0] v15_reg_465;
reg   [31:0] v16_reg_470;
reg   [31:0] v8_reg_475;
reg   [31:0] v8_reg_475_pp0_iter2_reg;
wire   [31:0] grp_fu_165_p2;
reg   [31:0] v17_reg_480;
reg   [31:0] v18_reg_485;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [31:0] v10_fu_331_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [31:0] v11_fu_335_p1;
wire   [31:0] v12_fu_339_p1;
wire   [31:0] v13_fu_343_p1;
wire    ap_block_pp0_stage5_11001;
reg   [31:0] v19_reg_515;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln44_2_fu_261_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln48_1_fu_283_p1;
wire   [63:0] zext_ln51_fu_295_p1;
reg   [12:0] v9_fu_62;
wire   [12:0] add_ln47_fu_301_p2;
wire    ap_loop_init;
reg   [12:0] v6_fu_66;
wire   [12:0] select_ln43_1_fu_234_p3;
reg   [24:0] indvar_flatten_fu_70;
wire   [24:0] add_ln43_1_fu_197_p2;
reg   [24:0] ap_sig_allocacmp_indvar_flatten_load;
wire    ap_block_pp0_stage0;
reg   [31:0] v14_fu_74;
wire    ap_block_pp0_stage5;
reg    v2_EN_A_local;
reg   [31:0] v2_Addr_A_orig;
reg   [3:0] v2_WEN_A_local;
wire   [31:0] bitcast_ln52_fu_351_p1;
wire    ap_block_pp0_stage4;
reg    v3_EN_B_local;
wire   [31:0] v3_Addr_B_orig;
reg    v3_EN_A_local;
wire   [31:0] v3_Addr_A_orig;
reg    v4_EN_B_local;
wire   [31:0] v4_Addr_B_orig;
reg    v4_EN_A_local;
wire   [31:0] v4_Addr_A_orig;
reg   [31:0] grp_fu_165_p0;
reg   [31:0] grp_fu_165_p1;
wire    ap_block_pp0_stage2;
reg   [31:0] grp_fu_169_p0;
reg   [31:0] grp_fu_169_p1;
wire    ap_block_pp0_stage3;
wire   [0:0] icmp_ln47_fu_220_p2;
wire   [12:0] add_ln43_fu_214_p2;
wire   [12:0] select_ln43_fu_226_p3;
wire   [23:0] zext_ln44_1_fu_252_p1;
wire   [23:0] add_ln44_fu_256_p2;
wire   [11:0] empty_fu_242_p1;
wire   [23:0] zext_ln48_fu_274_p1;
wire   [23:0] add_ln48_fu_278_p2;
wire   [23:0] tmp_2_fu_266_p3;
wire   [23:0] add_ln51_fu_289_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter2_stage4;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [5:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
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
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v9_fu_62 = 13'd0;
#0 v6_fu_66 = 13'd0;
#0 indvar_flatten_fu_70 = 25'd0;
#0 v14_fu_74 = 32'd0;
#0 ap_done_reg = 1'b0;
end
syr2k_4096_fadd_32ns_32ns_32_5_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 5 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fadd_32ns_32ns_32_5_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_165_p0),.din1(grp_fu_165_p1),.ce(1'b1),.dout(grp_fu_165_p2));
syr2k_4096_fmul_32ns_32ns_32_4_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 4 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
fmul_32ns_32ns_32_4_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_169_p0),.din1(grp_fu_169_p1),.ce(1'b1),.dout(grp_fu_169_p2));
syr2k_4096_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage5),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage5_subdone) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln43_fu_191_p2 == 1'd0))) begin
            indvar_flatten_fu_70 <= add_ln43_1_fu_197_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_70 <= 25'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        if (((ap_enable_reg_pp0_iter2 == 1'b1) & (first_iter_0_reg_407_pp0_iter2_reg == 1'd1))) begin
            v14_fu_74 <= v8_reg_475_pp0_iter2_reg;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            v14_fu_74 <= v19_reg_515;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_fu_66 <= 13'd0;
    end else if (((icmp_ln43_reg_403 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v6_fu_66 <= select_ln43_1_fu_234_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_fu_62 <= 13'd0;
    end else if (((icmp_ln43_reg_403 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v9_fu_62 <= add_ln47_fu_301_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        first_iter_0_reg_407 <= first_iter_0_fu_246_p2;
        first_iter_0_reg_407_pp0_iter1_reg <= first_iter_0_reg_407;
        first_iter_0_reg_407_pp0_iter2_reg <= first_iter_0_reg_407_pp0_iter1_reg;
        icmp_ln47_1_reg_436 <= icmp_ln47_1_fu_307_p2;
        icmp_ln47_1_reg_436_pp0_iter1_reg <= icmp_ln47_1_reg_436;
        icmp_ln47_1_reg_436_pp0_iter2_reg <= icmp_ln47_1_reg_436_pp0_iter1_reg;
        icmp_ln47_1_reg_436_pp0_iter3_reg <= icmp_ln47_1_reg_436_pp0_iter2_reg;
        v2_addr_reg_411 <= zext_ln44_2_fu_261_p1;
        v2_addr_reg_411_pp0_iter1_reg <= v2_addr_reg_411;
        v2_addr_reg_411_pp0_iter2_reg <= v2_addr_reg_411_pp0_iter1_reg;
        v2_addr_reg_411_pp0_iter3_reg <= v2_addr_reg_411_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln43_reg_403 <= icmp_ln43_fu_191_p2;
        icmp_ln43_reg_403_pp0_iter1_reg <= icmp_ln43_reg_403;
        icmp_ln43_reg_403_pp0_iter2_reg <= icmp_ln43_reg_403_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v15_reg_465 <= grp_fu_169_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v16_reg_470 <= grp_fu_169_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v17_reg_480 <= grp_fu_165_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v18_reg_485 <= grp_fu_169_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v19_reg_515 <= grp_fu_165_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v3_load_1_reg_460 <= v3_Dout_A;
        v3_load_reg_445 <= v3_Dout_B;
        v4_load_1_reg_455 <= v4_Dout_A;
        v4_load_reg_450 <= v4_Dout_B;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v7_reg_440 <= v7_fu_323_p1;
        v8_reg_475_pp0_iter2_reg <= v8_reg_475;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v8_reg_475 <= grp_fu_169_p2;
    end
end
always @ (*) begin
    if (((icmp_ln43_reg_403 == 1'd1) & (1'b0 == ap_block_pp0_stage5_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln43_reg_403_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (~((ap_loop_exit_ready == 1'b0) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_165_p0 = v14_fu_74;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_165_p0 = v15_reg_465;
    end else begin
        grp_fu_165_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_165_p1 = v18_reg_485;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_165_p1 = v16_reg_470;
    end else begin
        grp_fu_165_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_169_p0 = v12_fu_339_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_169_p0 = v10_fu_331_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_169_p0 = v17_reg_480;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_169_p0 = v7_reg_440;
    end else begin
        grp_fu_169_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_169_p1 = v13_fu_343_p1;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_169_p1 = v11_fu_335_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_169_p1 = v0;
    end else if (((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        grp_fu_169_p1 = v1;
    end else begin
        grp_fu_169_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_Addr_A_orig = v2_addr_reg_411_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_Addr_A_orig = zext_ln44_2_fu_261_p1;
    end else begin
        v2_Addr_A_orig = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        v2_EN_A_local = 1'b1;
    end else begin
        v2_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln47_1_reg_436_pp0_iter3_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_EN_A_local = 1'b1;
    end else begin
        v4_EN_A_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v4_EN_B_local = 1'b1;
    end else begin
        v4_EN_B_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_done_pending_pp0 == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
        ap_ST_fsm_pp0_stage4 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln43_1_fu_197_p2 = (ap_sig_allocacmp_indvar_flatten_load + 25'd1);
assign add_ln43_fu_214_p2 = (v6_fu_66 + 13'd1);
assign add_ln44_fu_256_p2 = (zext_ln44 + zext_ln44_1_fu_252_p1);
assign add_ln47_fu_301_p2 = (select_ln43_fu_226_p3 + 13'd1);
assign add_ln48_fu_278_p2 = (zext_ln44 + zext_ln48_fu_274_p1);
assign add_ln51_fu_289_p2 = (tmp_2_fu_266_p3 + zext_ln48_fu_274_p1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd3];
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
assign bitcast_ln52_fu_351_p1 = v19_reg_515;
assign empty_fu_242_p1 = select_ln43_1_fu_234_p3[11:0];
assign first_iter_0_fu_246_p2 = ((select_ln43_fu_226_p3 == 13'd0) ? 1'b1 : 1'b0);
assign icmp_ln43_fu_191_p2 = ((ap_sig_allocacmp_indvar_flatten_load == zext_ln42) ? 1'b1 : 1'b0);
assign icmp_ln47_1_fu_307_p2 = ((add_ln47_fu_301_p2 == 13'd4096) ? 1'b1 : 1'b0);
assign icmp_ln47_fu_220_p2 = ((v9_fu_62 == 13'd4096) ? 1'b1 : 1'b0);
assign select_ln43_1_fu_234_p3 = ((icmp_ln47_fu_220_p2[0:0] == 1'b1) ? add_ln43_fu_214_p2 : v6_fu_66);
assign select_ln43_fu_226_p3 = ((icmp_ln47_fu_220_p2[0:0] == 1'b1) ? 13'd0 : v9_fu_62);
assign tmp_2_fu_266_p3 = {{empty_fu_242_p1}, {12'd0}};
assign v10_fu_331_p1 = v3_load_reg_445;
assign v11_fu_335_p1 = v4_load_reg_450;
assign v12_fu_339_p1 = v4_load_1_reg_455;
assign v13_fu_343_p1 = v3_load_1_reg_460;
assign v2_Addr_A = v2_Addr_A_orig << 32'd2;
assign v2_Din_A = bitcast_ln52_fu_351_p1;
assign v2_EN_A = v2_EN_A_local;
assign v2_WEN_A = v2_WEN_A_local;
assign v3_Addr_A = v3_Addr_A_orig << 32'd2;
assign v3_Addr_A_orig = zext_ln51_fu_295_p1;
assign v3_Addr_B = v3_Addr_B_orig << 32'd2;
assign v3_Addr_B_orig = zext_ln48_1_fu_283_p1;
assign v3_Din_A = 32'd0;
assign v3_Din_B = 32'd0;
assign v3_EN_A = v3_EN_A_local;
assign v3_EN_B = v3_EN_B_local;
assign v3_WEN_A = 4'd0;
assign v3_WEN_B = 4'd0;
assign v4_Addr_A = v4_Addr_A_orig << 32'd2;
assign v4_Addr_A_orig = zext_ln48_1_fu_283_p1;
assign v4_Addr_B = v4_Addr_B_orig << 32'd2;
assign v4_Addr_B_orig = zext_ln51_fu_295_p1;
assign v4_Din_A = 32'd0;
assign v4_Din_B = 32'd0;
assign v4_EN_A = v4_EN_A_local;
assign v4_EN_B = v4_EN_B_local;
assign v4_WEN_A = 4'd0;
assign v4_WEN_B = 4'd0;
assign v7_fu_323_p1 = v2_Dout_A;
assign zext_ln44_1_fu_252_p1 = select_ln43_1_fu_234_p3;
assign zext_ln44_2_fu_261_p1 = add_ln44_fu_256_p2;
assign zext_ln48_1_fu_283_p1 = add_ln48_fu_278_p2;
assign zext_ln48_fu_274_p1 = select_ln43_fu_226_p3;
assign zext_ln51_fu_295_p1 = add_ln51_fu_289_p2;
endmodule 