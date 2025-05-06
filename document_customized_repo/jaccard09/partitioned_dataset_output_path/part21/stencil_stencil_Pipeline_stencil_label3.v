
module stencil_stencil_Pipeline_stencil_label3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,r,c,filter_address0,filter_ce0,filter_q0,filter_address1,filter_ce1,filter_q1,orig_address0,orig_ce0,orig_q0,orig_address1,orig_ce1,orig_q1,add_ln7,temp_1_out,temp_1_out_ap_vld);  
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] r;
input  [5:0] c;
output  [3:0] filter_address0;
output   filter_ce0;
input  [31:0] filter_q0;
output  [3:0] filter_address1;
output   filter_ce1;
input  [31:0] filter_q1;
output  [12:0] orig_address0;
output   orig_ce0;
input  [31:0] orig_q0;
output  [12:0] orig_address1;
output   orig_ce1;
input  [31:0] orig_q1;
input  [6:0] add_ln7;
output  [31:0] temp_1_out;
output   temp_1_out_ap_vld;
reg ap_idle;
reg temp_1_out_ap_vld;
(* fsm_encoding = "none" *) reg   [2:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_subdone;
reg   [0:0] icmp_ln10_reg_547;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_229_p2;
reg   [31:0] reg_233;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [3:0] empty_fu_262_p2;
reg   [3:0] empty_reg_518;
wire   [12:0] tmp_fu_283_p3;
reg   [12:0] tmp_reg_526;
wire   [0:0] icmp_ln10_fu_335_p2;
reg   [0:0] icmp_ln10_reg_547_pp0_iter1_reg;
reg   [0:0] icmp_ln10_reg_547_pp0_iter2_reg;
wire   [12:0] tmp_1_fu_341_p3;
reg   [12:0] tmp_1_reg_551;
reg  signed [31:0] filter_load_reg_562;
reg  signed [31:0] orig_load_reg_567;
reg  signed [31:0] filter_load_1_reg_572;
reg  signed [31:0] orig_load_4_reg_592;
reg  signed [31:0] orig_load_1_reg_602;
wire    ap_block_pp0_stage2_11001;
reg  signed [31:0] filter_load_2_reg_607;
reg  signed [31:0] filter_load_4_reg_627;
reg  signed [31:0] orig_load_5_reg_637;
reg  signed [31:0] orig_load_2_reg_642;
wire   [31:0] grp_fu_225_p2;
reg   [31:0] mul_ln13_1_reg_647;
reg  signed [31:0] filter_load_3_reg_652;
reg  signed [31:0] orig_load_3_reg_657;
reg  signed [31:0] filter_load_5_reg_662;
reg   [31:0] mul_ln13_2_reg_667;
reg   [31:0] mul_ln13_reg_672;
reg   [31:0] mul_ln13_3_reg_677;
wire   [31:0] temp_3_fu_477_p2;
reg   [31:0] temp_3_reg_682;
wire   [31:0] add_ln13_4_fu_484_p2;
reg   [31:0] add_ln13_4_reg_687;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg    ap_condition_exit_pp0_iter2_stage0;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] p_cast10_fu_268_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_fu_291_p1;
wire   [63:0] zext_ln12_1_fu_314_p1;
wire   [63:0] zext_ln12_7_fu_355_p1;
wire   [63:0] zext_ln12_2_fu_396_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_3_fu_406_p1;
wire   [63:0] zext_ln12_6_fu_416_p1;
wire   [63:0] zext_ln12_9_fu_426_p1;
wire   [63:0] zext_ln12_4_fu_436_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] p_cast12_fu_446_p1;
wire   [63:0] zext_ln12_5_fu_451_p1;
wire   [63:0] zext_ln12_8_fu_460_p1;
reg   [31:0] temp_fu_78;
wire   [31:0] temp_4_fu_494_p2;
wire    ap_loop_init;
reg   [1:0] k1_fu_82;
wire   [1:0] xor_ln_fu_378_p3;
reg   [1:0] ap_sig_allocacmp_k1_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_block_pp0_stage0_01001;
reg    filter_ce1_local;
reg   [3:0] filter_address1_local;
reg    filter_ce0_local;
reg   [3:0] filter_address0_local;
reg    orig_ce1_local;
reg   [12:0] orig_address1_local;
reg    orig_ce0_local;
reg   [12:0] orig_address0_local;
reg  signed [31:0] grp_fu_225_p0;
reg  signed [31:0] grp_fu_225_p1;
reg  signed [31:0] grp_fu_229_p0;
reg  signed [31:0] grp_fu_229_p1;
wire   [3:0] p_shl_fu_254_p3;
wire   [3:0] zext_ln6_fu_250_p1;
wire   [6:0] k1_cast5_fu_273_p1;
wire   [6:0] empty_10_fu_277_p2;
wire   [1:0] tmp_2_fu_296_p4;
wire   [2:0] or_ln_fu_306_p3;
wire   [0:0] tmp_3_fu_319_p3;
wire   [1:0] or_ln1_fu_327_p3;
wire   [12:0] add_ln12_4_fu_349_p2;
wire   [0:0] bit_sel_fu_360_p3;
wire   [0:0] xor_ln10_fu_368_p2;
wire   [0:0] trunc_ln10_fu_374_p1;
wire   [12:0] add_ln12_fu_391_p2;
wire   [3:0] add_ln12_1_fu_401_p2;
wire   [3:0] add_ln12_3_fu_411_p2;
wire   [12:0] add_ln12_6_fu_421_p2;
wire   [12:0] add_ln12_2_fu_431_p2;
wire   [3:0] empty_11_fu_441_p2;
wire   [3:0] add_ln12_5_fu_455_p2;
wire   [31:0] add_ln13_1_fu_468_p2;
wire   [31:0] add_ln13_fu_472_p2;
wire   [31:0] add_ln13_3_fu_489_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to2;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 temp_fu_78 = 32'd0;
#0 k1_fu_82 = 2'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_225_p0),.din1(grp_fu_225_p1),.ce(1'b1),.dout(grp_fu_225_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_229_p0),.din1(grp_fu_229_p1),.ce(1'b1),.dout(grp_fu_229_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage2),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter2_stage0) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage0)) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln10_fu_335_p2 == 1'd0))) begin
            k1_fu_82 <= xor_ln_fu_378_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            k1_fu_82 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_fu_78 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_reg_547_pp0_iter2_reg == 1'd0))) begin
        temp_fu_78 <= temp_4_fu_494_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_4_reg_687 <= add_ln13_4_fu_484_p2;
        empty_reg_518 <= empty_fu_262_p2;
        icmp_ln10_reg_547 <= icmp_ln10_fu_335_p2;
        icmp_ln10_reg_547_pp0_iter1_reg <= icmp_ln10_reg_547;
        icmp_ln10_reg_547_pp0_iter2_reg <= icmp_ln10_reg_547_pp0_iter1_reg;
        tmp_1_reg_551 <= tmp_1_fu_341_p3;
        tmp_reg_526 <= tmp_fu_283_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        filter_load_1_reg_572 <= filter_q0;
        filter_load_reg_562 <= filter_q1;
        orig_load_4_reg_592 <= orig_q0;
        orig_load_reg_567 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        filter_load_2_reg_607 <= filter_q1;
        filter_load_4_reg_627 <= filter_q0;
        orig_load_1_reg_602 <= orig_q1;
        orig_load_5_reg_637 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        filter_load_3_reg_652 <= filter_q1;
        filter_load_5_reg_662 <= filter_q0;
        mul_ln13_1_reg_647 <= grp_fu_225_p2;
        orig_load_2_reg_642 <= orig_q1;
        orig_load_3_reg_657 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_2_reg_667 <= grp_fu_225_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln13_3_reg_677 <= grp_fu_229_p2;
        mul_ln13_reg_672 <= grp_fu_225_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_233 <= grp_fu_229_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_3_reg_682 <= temp_3_fu_477_p2;
    end
end
always @ (*) begin
    if (((icmp_ln10_reg_547 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln10_reg_547_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k1_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_k1_1 = k1_fu_82;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            filter_address0_local = zext_ln12_8_fu_460_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            filter_address0_local = zext_ln12_6_fu_416_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            filter_address0_local = zext_ln12_1_fu_314_p1;
        end else begin
            filter_address0_local = 'bx;
        end
    end else begin
        filter_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            filter_address1_local = p_cast12_fu_446_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            filter_address1_local = zext_ln12_3_fu_406_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            filter_address1_local = p_cast10_fu_268_p1;
        end else begin
            filter_address1_local = 'bx;
        end
    end else begin
        filter_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        filter_ce0_local = 1'b1;
    end else begin
        filter_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        filter_ce1_local = 1'b1;
    end else begin
        filter_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_225_p0 = orig_load_2_reg_642;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_225_p0 = orig_load_1_reg_602;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_225_p0 = orig_load_reg_567;
    end else begin
        grp_fu_225_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_225_p1 = filter_load_2_reg_607;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_225_p1 = filter_load_1_reg_572;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_225_p1 = filter_load_reg_562;
    end else begin
        grp_fu_225_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_229_p0 = orig_load_3_reg_657;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_229_p0 = orig_load_5_reg_637;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_229_p0 = orig_load_4_reg_592;
        end else begin
            grp_fu_229_p0 = 'bx;
        end
    end else begin
        grp_fu_229_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_229_p1 = filter_load_3_reg_652;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_229_p1 = filter_load_5_reg_662;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_229_p1 = filter_load_4_reg_627;
        end else begin
            grp_fu_229_p1 = 'bx;
        end
    end else begin
        grp_fu_229_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address0_local = zext_ln12_5_fu_451_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address0_local = zext_ln12_9_fu_426_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_address0_local = zext_ln12_7_fu_355_p1;
        end else begin
            orig_address0_local = 'bx;
        end
    end else begin
        orig_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_address1_local = zext_ln12_4_fu_436_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_address1_local = zext_ln12_2_fu_396_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_address1_local = zext_ln12_fu_291_p1;
        end else begin
            orig_address1_local = 'bx;
        end
    end else begin
        orig_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_ce0_local = 1'b1;
    end else begin
        orig_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        orig_ce1_local = 1'b1;
    end else begin
        orig_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (icmp_ln10_reg_547_pp0_iter1_reg == 1'd1))) begin
        temp_1_out_ap_vld = 1'b1;
    end else begin
        temp_1_out_ap_vld = 1'b0;
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
assign add_ln12_1_fu_401_p2 = (empty_reg_518 + 4'd2);
assign add_ln12_2_fu_431_p2 = (tmp_reg_526 + 13'd2);
assign add_ln12_3_fu_411_p2 = (empty_reg_518 + 4'd4);
assign add_ln12_4_fu_349_p2 = (tmp_1_fu_341_p3 + 13'd1);
assign add_ln12_5_fu_455_p2 = (empty_reg_518 + 4'd5);
assign add_ln12_6_fu_421_p2 = (tmp_1_reg_551 + 13'd2);
assign add_ln12_fu_391_p2 = (tmp_reg_526 + 13'd1);
assign add_ln13_1_fu_468_p2 = (mul_ln13_1_reg_647 + mul_ln13_reg_672);
assign add_ln13_3_fu_489_p2 = (add_ln13_4_reg_687 + reg_233);
assign add_ln13_4_fu_484_p2 = (reg_233 + mul_ln13_3_reg_677);
assign add_ln13_fu_472_p2 = (add_ln13_1_fu_468_p2 + mul_ln13_2_reg_667);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_01001 = ~(1'b1 == 1'b1);
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
assign bit_sel_fu_360_p3 = ap_sig_allocacmp_k1_1[2'd1];
assign empty_10_fu_277_p2 = (k1_cast5_fu_273_p1 + r);
assign empty_11_fu_441_p2 = (empty_reg_518 + 4'd3);
assign empty_fu_262_p2 = (p_shl_fu_254_p3 - zext_ln6_fu_250_p1);
assign filter_address0 = filter_address0_local;
assign filter_address1 = filter_address1_local;
assign filter_ce0 = filter_ce0_local;
assign filter_ce1 = filter_ce1_local;
assign icmp_ln10_fu_335_p2 = ((or_ln1_fu_327_p3 == 2'd3) ? 1'b1 : 1'b0);
assign k1_cast5_fu_273_p1 = ap_sig_allocacmp_k1_1;
assign or_ln1_fu_327_p3 = {{tmp_3_fu_319_p3}, {1'd1}};
assign or_ln_fu_306_p3 = {{tmp_2_fu_296_p4}, {1'd1}};
assign orig_address0 = orig_address0_local;
assign orig_address1 = orig_address1_local;
assign orig_ce0 = orig_ce0_local;
assign orig_ce1 = orig_ce1_local;
assign p_cast10_fu_268_p1 = empty_fu_262_p2;
assign p_cast12_fu_446_p1 = empty_11_fu_441_p2;
assign p_shl_fu_254_p3 = {{ap_sig_allocacmp_k1_1}, {2'd0}};
assign temp_1_out = (add_ln13_fu_472_p2 + temp_fu_78);
assign temp_3_fu_477_p2 = (add_ln13_fu_472_p2 + temp_fu_78);
assign temp_4_fu_494_p2 = (add_ln13_3_fu_489_p2 + temp_3_reg_682);
assign tmp_1_fu_341_p3 = {{add_ln7}, {c}};
assign tmp_2_fu_296_p4 = {{empty_fu_262_p2[2:1]}};
assign tmp_3_fu_319_p3 = ap_sig_allocacmp_k1_1[32'd1];
assign tmp_fu_283_p3 = {{empty_10_fu_277_p2}, {c}};
assign trunc_ln10_fu_374_p1 = ap_sig_allocacmp_k1_1[0:0];
assign xor_ln10_fu_368_p2 = (bit_sel_fu_360_p3 ^ 1'd1);
assign xor_ln_fu_378_p3 = {{xor_ln10_fu_368_p2}, {trunc_ln10_fu_374_p1}};
assign zext_ln12_1_fu_314_p1 = or_ln_fu_306_p3;
assign zext_ln12_2_fu_396_p1 = add_ln12_fu_391_p2;
assign zext_ln12_3_fu_406_p1 = add_ln12_1_fu_401_p2;
assign zext_ln12_4_fu_436_p1 = add_ln12_2_fu_431_p2;
assign zext_ln12_5_fu_451_p1 = tmp_1_reg_551;
assign zext_ln12_6_fu_416_p1 = add_ln12_3_fu_411_p2;
assign zext_ln12_7_fu_355_p1 = add_ln12_4_fu_349_p2;
assign zext_ln12_8_fu_460_p1 = add_ln12_5_fu_455_p2;
assign zext_ln12_9_fu_426_p1 = add_ln12_6_fu_421_p2;
assign zext_ln12_fu_291_p1 = tmp_fu_283_p3;
assign zext_ln6_fu_250_p1 = ap_sig_allocacmp_k1_1;
endmodule 
