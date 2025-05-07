module stencil_stencil_Pipeline_stencil_label3_stencil_label4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,r,filter_address0,filter_ce0,filter_q0,filter_address1,filter_ce1,filter_q1,indvars_iv18_udiv5,orig_0_address0,orig_0_ce0,orig_0_q0,orig_1_address0,orig_1_ce0,orig_1_q0,empty,c,temp_out,temp_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [6:0] r;
output  [3:0] filter_address0;
output   filter_ce0;
input  [31:0] filter_q0;
output  [3:0] filter_address1;
output   filter_ce1;
input  [31:0] filter_q1;
input  [4:0] indvars_iv18_udiv5;
output  [11:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [11:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
input  [0:0] empty;
input  [5:0] c;
output  [31:0] temp_out;
output   temp_out_ap_vld;
reg ap_idle;
reg temp_out_ap_vld;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] icmp_ln10_reg_664;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_212_p2;
reg   [31:0] reg_220;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
wire   [0:0] tmp_reg_603;
reg   [1:0] k2_1_reg_620;
reg   [1:0] k1_1_reg_627;
wire   [6:0] empty_10_fu_257_p2;
reg   [6:0] empty_10_reg_634;
wire   [1:0] or_ln_fu_295_p3;
reg   [1:0] or_ln_reg_649;
wire   [0:0] icmp_ln11_fu_303_p2;
reg   [0:0] icmp_ln11_reg_654;
reg   [0:0] icmp_ln11_reg_654_pp0_iter1_reg;
reg   [0:0] icmp_ln11_reg_654_pp0_iter2_reg;
wire   [0:0] icmp_ln10_fu_309_p2;
reg   [0:0] icmp_ln10_reg_664_pp0_iter1_reg;
reg   [0:0] icmp_ln10_reg_664_pp0_iter2_reg;
wire   [1:0] add_ln10_1_fu_321_p2;
reg   [1:0] add_ln10_1_reg_668;
wire   [3:0] p_mid1_fu_339_p2;
reg   [3:0] p_mid1_reg_674;
wire  signed [31:0] select_ln12_fu_385_p3;
reg  signed [31:0] select_ln12_reg_689;
reg  signed [31:0] filter_load_2_reg_694;
reg  signed [31:0] filter_load_reg_724;
wire  signed [31:0] select_ln12_2_fu_525_p3;
reg  signed [31:0] select_ln12_2_reg_729;
reg  signed [31:0] filter_load_1_reg_734;
wire  signed [31:0] select_ln12_1_fu_532_p3;
reg  signed [31:0] select_ln12_1_reg_739;
wire   [31:0] grp_fu_216_p2;
reg   [31:0] mul_ln12_1_reg_744;
wire   [31:0] temp_fu_542_p2;
reg   [31:0] temp_reg_749;
wire   [31:0] add_ln13_fu_549_p2;
reg   [31:0] add_ln13_reg_754;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln12_2_fu_289_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_5_fu_345_p1;
wire   [63:0] zext_ln12_fu_380_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_6_fu_419_p1;
wire   [63:0] zext_ln12_3_fu_450_p1;
wire   [63:0] zext_ln12_4_fu_478_p1;
reg   [31:0] temp_1_fu_74;
wire   [31:0] temp_4_fu_559_p2;
wire    ap_loop_init;
reg   [1:0] k2_fu_78;
wire   [1:0] select_ln11_fu_508_p3;
reg   [1:0] ap_sig_allocacmp_k2_1;
reg   [1:0] k1_fu_82;
wire   [1:0] select_ln10_4_fu_431_p3;
reg   [1:0] ap_sig_allocacmp_k1_1;
reg   [1:0] indvar_flatten_fu_86;
wire   [1:0] add_ln10_fu_315_p2;
reg   [1:0] ap_sig_allocacmp_indvar_flatten_load;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_block_pp0_stage1_01001;
reg    orig_0_ce0_local;
reg   [11:0] orig_0_address0_local;
reg    orig_1_ce0_local;
reg   [11:0] orig_1_address0_local;
reg    filter_ce0_local;
reg   [3:0] filter_address0_local;
reg    filter_ce1_local;
reg  signed [31:0] grp_fu_212_p0;
reg  signed [31:0] grp_fu_212_p1;
wire   [6:0] zext_ln10_fu_253_p1;
wire   [0:0] tmp_2_fu_263_p3;
wire   [4:0] zext_ln12_1_fu_271_p1;
wire   [4:0] add_ln12_3_fu_275_p2;
wire   [11:0] add_ln12_1_fu_281_p3;
wire   [3:0] p_shl_fu_331_p3;
wire   [3:0] zext_ln10_3_fu_327_p1;
wire   [3:0] p_shl7_fu_358_p3;
wire   [3:0] zext_ln10_1_fu_355_p1;
wire   [3:0] zext_ln8_fu_371_p1;
wire   [3:0] empty_9_fu_365_p2;
wire   [3:0] add_ln12_fu_374_p2;
wire   [6:0] zext_ln10_2_fu_392_p1;
wire   [6:0] p_mid16_fu_401_p2;
wire   [11:0] add_ln12_1_mid1_fu_412_p3;
wire   [1:0] select_ln10_3_fu_425_p3;
wire   [3:0] zext_ln5_1_fu_440_p1;
wire   [3:0] select_ln10_fu_395_p3;
wire   [3:0] add_ln12_2_fu_444_p2;
wire   [5:0] zext_ln5_fu_436_p1;
wire   [5:0] add_ln12_4_fu_455_p2;
wire   [6:0] select_ln10_1_fu_406_p3;
wire   [4:0] tmp_1_fu_460_p4;
wire   [11:0] lshr_ln12_1_fu_470_p3;
wire   [0:0] bit_sel_fu_484_p3;
wire   [0:0] xor_ln11_fu_491_p2;
wire   [0:0] trunc_ln11_fu_497_p1;
wire   [1:0] k2_op_fu_500_p3;
wire   [31:0] select_ln10_2_fu_554_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_527;
reg    ap_condition_530;
reg    ap_condition_533;
reg    ap_condition_536;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 temp_1_fu_74 = 32'd0;
#0 k2_fu_78 = 2'd0;
#0 k1_fu_82 = 2'd0;
#0 indvar_flatten_fu_86 = 2'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_212_p0),.din1(grp_fu_212_p1),.ce(1'b1),.dout(grp_fu_212_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(filter_load_2_reg_694),.din1(select_ln12_2_reg_729),.ce(1'b1),.dout(grp_fu_216_p2));
stencil_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b1 == ap_condition_exit_pp0_iter2_stage1) | ((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln10_fu_309_p2 == 1'd0))) begin
            indvar_flatten_fu_86 <= add_ln10_fu_315_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_86 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k1_fu_82 <= 2'd0;
    end else if (((icmp_ln10_reg_664 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k1_fu_82 <= select_ln10_4_fu_431_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k2_fu_78 <= 2'd0;
    end else if (((icmp_ln10_reg_664 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k2_fu_78 <= select_ln11_fu_508_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            temp_1_fu_74 <= 32'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            temp_1_fu_74 <= temp_4_fu_559_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln10_1_reg_668 <= add_ln10_1_fu_321_p2;
        empty_10_reg_634 <= empty_10_fu_257_p2;
        icmp_ln10_reg_664 <= icmp_ln10_fu_309_p2;
        icmp_ln10_reg_664_pp0_iter1_reg <= icmp_ln10_reg_664;
        icmp_ln10_reg_664_pp0_iter2_reg <= icmp_ln10_reg_664_pp0_iter1_reg;
        icmp_ln11_reg_654 <= icmp_ln11_fu_303_p2;
        icmp_ln11_reg_654_pp0_iter1_reg <= icmp_ln11_reg_654;
        icmp_ln11_reg_654_pp0_iter2_reg <= icmp_ln11_reg_654_pp0_iter1_reg;
        k1_1_reg_627 <= ap_sig_allocacmp_k1_1;
        k2_1_reg_620 <= ap_sig_allocacmp_k2_1;
        mul_ln12_1_reg_744 <= grp_fu_216_p2;
        or_ln_reg_649[1] <= or_ln_fu_295_p3[1];
        p_mid1_reg_674 <= p_mid1_fu_339_p2;
        select_ln12_1_reg_739 <= select_ln12_1_fu_532_p3;
        select_ln12_2_reg_729 <= select_ln12_2_fu_525_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_reg_754 <= add_ln13_fu_549_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        select_ln12_reg_689 <= select_ln12_fu_385_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        filter_load_1_reg_734 <= filter_q0;
        filter_load_reg_724 <= filter_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        filter_load_2_reg_694 <= filter_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_220 <= grp_fu_212_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_reg_749 <= temp_fu_542_p2;
    end
end
always @ (*) begin
    if (((icmp_ln10_reg_664 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_reg_664_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to3 = 1'b1;
    end else begin
        ap_idle_pp0_1to3 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 2'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_86;
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k2_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_k2_1 = k2_fu_78;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            filter_address0_local = zext_ln12_3_fu_450_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            filter_address0_local = zext_ln12_5_fu_345_p1;
        end else begin
            filter_address0_local = 'bx;
        end
    end else begin
        filter_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        filter_ce0_local = 1'b1;
    end else begin
        filter_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        filter_ce1_local = 1'b1;
    end else begin
        filter_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_212_p0 = filter_load_1_reg_734;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_212_p0 = filter_load_reg_724;
    end else begin
        grp_fu_212_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_212_p1 = select_ln12_1_reg_739;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_212_p1 = select_ln12_reg_689;
    end else begin
        grp_fu_212_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_530)) begin
            orig_0_address0_local = zext_ln12_4_fu_478_p1;
        end else if ((1'b1 == ap_condition_527)) begin
            orig_0_address0_local = zext_ln12_6_fu_419_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address0_local = zext_ln12_2_fu_289_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln10_reg_664 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_603 == 1'd1)) | ((icmp_ln10_reg_664 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_reg_654 == 1'd1) & (tmp_reg_603 == 1'd0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if ((1'b1 == ap_condition_536)) begin
            orig_1_address0_local = zext_ln12_4_fu_478_p1;
        end else if ((1'b1 == ap_condition_533)) begin
            orig_1_address0_local = zext_ln12_6_fu_419_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address0_local = zext_ln12_2_fu_289_p1;
        end else begin
            orig_1_address0_local = 'bx;
        end
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((icmp_ln10_reg_664 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_603 == 1'd0)) | ((icmp_ln10_reg_664 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_reg_654 == 1'd1) & (tmp_reg_603 == 1'd1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_reg_664_pp0_iter2_reg == 1'd1))) begin
        temp_out_ap_vld = 1'b1;
    end else begin
        temp_out_ap_vld = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln10_1_fu_321_p2 = (ap_sig_allocacmp_k1_1 + 2'd1);
assign add_ln10_fu_315_p2 = (ap_sig_allocacmp_indvar_flatten_load + 2'd1);
assign add_ln12_1_fu_281_p3 = {{empty_10_fu_257_p2}, {add_ln12_3_fu_275_p2}};
assign add_ln12_1_mid1_fu_412_p3 = {{p_mid16_fu_401_p2}, {indvars_iv18_udiv5}};
assign add_ln12_2_fu_444_p2 = (zext_ln5_1_fu_440_p1 + select_ln10_fu_395_p3);
assign add_ln12_3_fu_275_p2 = (indvars_iv18_udiv5 + zext_ln12_1_fu_271_p1);
assign add_ln12_4_fu_455_p2 = (c + zext_ln5_fu_436_p1);
assign add_ln12_fu_374_p2 = (zext_ln8_fu_371_p1 + empty_9_fu_365_p2);
assign add_ln13_fu_549_p2 = (mul_ln12_1_reg_744 + temp_fu_542_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_527 = ((icmp_ln10_reg_664 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_reg_654 == 1'd1) & (tmp_reg_603 == 1'd0));
end
always @ (*) begin
    ap_condition_530 = ((icmp_ln10_reg_664 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_603 == 1'd1));
end
always @ (*) begin
    ap_condition_533 = ((icmp_ln10_reg_664 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln11_reg_654 == 1'd1) & (tmp_reg_603 == 1'd1));
end
always @ (*) begin
    ap_condition_536 = ((icmp_ln10_reg_664 == 1'd0) & (1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_reg_603 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bit_sel_fu_484_p3 = k2_1_reg_620[2'd1];
assign empty_10_fu_257_p2 = (zext_ln10_fu_253_p1 + r);
assign empty_9_fu_365_p2 = (p_shl7_fu_358_p3 - zext_ln10_1_fu_355_p1);
assign filter_address0 = filter_address0_local;
assign filter_address1 = zext_ln12_fu_380_p1;
assign filter_ce0 = filter_ce0_local;
assign filter_ce1 = filter_ce1_local;
assign icmp_ln10_fu_309_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_303_p2 = ((or_ln_fu_295_p3 == 2'd3) ? 1'b1 : 1'b0);
assign k2_op_fu_500_p3 = {{xor_ln11_fu_491_p2}, {trunc_ln11_fu_497_p1}};
assign lshr_ln12_1_fu_470_p3 = {{select_ln10_1_fu_406_p3}, {tmp_1_fu_460_p4}};
assign or_ln_fu_295_p3 = {{tmp_2_fu_263_p3}, {1'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign p_mid16_fu_401_p2 = (zext_ln10_2_fu_392_p1 + r);
assign p_mid1_fu_339_p2 = (p_shl_fu_331_p3 - zext_ln10_3_fu_327_p1);
assign p_shl7_fu_358_p3 = {{k1_1_reg_627}, {2'd0}};
assign p_shl_fu_331_p3 = {{add_ln10_1_fu_321_p2}, {2'd0}};
assign select_ln10_1_fu_406_p3 = ((icmp_ln11_reg_654[0:0] == 1'b1) ? p_mid16_fu_401_p2 : empty_10_reg_634);
assign select_ln10_2_fu_554_p3 = ((icmp_ln11_reg_654_pp0_iter2_reg[0:0] == 1'b1) ? add_ln13_reg_754 : temp_reg_749);
assign select_ln10_3_fu_425_p3 = ((icmp_ln11_reg_654[0:0] == 1'b1) ? 2'd1 : or_ln_reg_649);
assign select_ln10_4_fu_431_p3 = ((icmp_ln11_reg_654[0:0] == 1'b1) ? add_ln10_1_reg_668 : k1_1_reg_627);
assign select_ln10_fu_395_p3 = ((icmp_ln11_reg_654[0:0] == 1'b1) ? p_mid1_reg_674 : empty_9_fu_365_p2);
assign select_ln11_fu_508_p3 = ((icmp_ln11_reg_654[0:0] == 1'b1) ? 2'd2 : k2_op_fu_500_p3);
assign select_ln12_1_fu_532_p3 = ((empty[0:0] == 1'b1) ? orig_0_q0 : orig_1_q0);
assign select_ln12_2_fu_525_p3 = ((empty[0:0] == 1'b1) ? orig_1_q0 : orig_0_q0);
assign select_ln12_fu_385_p3 = ((empty[0:0] == 1'b1) ? orig_1_q0 : orig_0_q0);
assign temp_4_fu_559_p2 = (reg_220 + select_ln10_2_fu_554_p3);
assign temp_fu_542_p2 = (reg_220 + temp_1_fu_74);
assign temp_out = temp_fu_542_p2;
assign tmp_1_fu_460_p4 = {{add_ln12_4_fu_455_p2[5:1]}};
assign tmp_2_fu_263_p3 = ap_sig_allocacmp_k2_1[32'd1];
assign tmp_reg_603 = empty;
assign trunc_ln11_fu_497_p1 = k2_1_reg_620[0:0];
assign xor_ln11_fu_491_p2 = (bit_sel_fu_484_p3 ^ 1'd1);
assign zext_ln10_1_fu_355_p1 = k1_1_reg_627;
assign zext_ln10_2_fu_392_p1 = add_ln10_1_reg_668;
assign zext_ln10_3_fu_327_p1 = add_ln10_1_fu_321_p2;
assign zext_ln10_fu_253_p1 = ap_sig_allocacmp_k1_1;
assign zext_ln12_1_fu_271_p1 = tmp_2_fu_263_p3;
assign zext_ln12_2_fu_289_p1 = add_ln12_1_fu_281_p3;
assign zext_ln12_3_fu_450_p1 = add_ln12_2_fu_444_p2;
assign zext_ln12_4_fu_478_p1 = lshr_ln12_1_fu_470_p3;
assign zext_ln12_5_fu_345_p1 = p_mid1_fu_339_p2;
assign zext_ln12_6_fu_419_p1 = add_ln12_1_mid1_fu_412_p3;
assign zext_ln12_fu_380_p1 = add_ln12_fu_374_p2;
assign zext_ln5_1_fu_440_p1 = select_ln10_3_fu_425_p3;
assign zext_ln5_fu_436_p1 = select_ln10_3_fu_425_p3;
assign zext_ln8_fu_371_p1 = k2_1_reg_620;
always @ (posedge ap_clk) begin
    or_ln_reg_649[0] <= 1'b1;
end
endmodule 