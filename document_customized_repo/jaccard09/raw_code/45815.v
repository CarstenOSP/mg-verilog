module stencil_stencil_Pipeline_stencil_label3_stencil_label4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,r,c,filter_address0,filter_ce0,filter_q0,filter_address1,filter_ce1,filter_q1,orig_address0,orig_ce0,orig_q0,orig_address1,orig_ce1,orig_q1,temp_out,temp_out_ap_vld); 
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
reg   [0:0] icmp_ln10_reg_533;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_161_p2;
reg   [31:0] reg_169;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] k1_1_reg_521;
wire   [6:0] empty_7_fu_203_p2;
reg   [6:0] empty_7_reg_528;
wire   [0:0] icmp_ln10_fu_209_p2;
reg   [0:0] icmp_ln10_reg_533_pp0_iter1_reg;
reg   [0:0] icmp_ln10_reg_533_pp0_iter2_reg;
wire   [1:0] add_ln10_1_fu_221_p2;
reg   [1:0] add_ln10_1_reg_537;
wire   [3:0] p_mid1_fu_239_p2;
reg   [3:0] p_mid1_reg_543;
reg   [1:0] k2_1_reg_553;
wire   [0:0] icmp_ln11_fu_326_p2;
reg   [0:0] icmp_ln11_reg_569;
reg   [0:0] icmp_ln11_reg_569_pp0_iter1_reg;
reg   [0:0] icmp_ln11_reg_569_pp0_iter2_reg;
reg  signed [31:0] filter_load_2_reg_575;
wire   [12:0] add_ln12_3_fu_400_p2;
reg   [12:0] add_ln12_3_reg_590;
reg  signed [31:0] filter_load_reg_595;
reg  signed [31:0] orig_load_reg_600;
reg  signed [31:0] orig_load_2_reg_605;
reg  signed [31:0] filter_load_1_reg_610;
reg  signed [31:0] orig_load_1_reg_620;
wire   [31:0] grp_fu_165_p2;
reg   [31:0] mul_ln12_1_reg_625;
wire   [31:0] temp_fu_454_p2;
reg   [31:0] temp_reg_630;
wire   [31:0] add_ln13_fu_461_p2;
reg   [31:0] add_ln13_reg_635;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln12_4_fu_245_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_fu_294_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_305_p1;
wire   [63:0] zext_ln12_5_fu_362_p1;
wire   [63:0] zext_ln12_2_fu_395_p1;
wire   [63:0] zext_ln12_3_fu_411_p1;
reg   [31:0] temp_1_fu_60;
wire   [31:0] temp_4_fu_471_p2;
wire    ap_loop_init;
reg   [1:0] k2_fu_64;
wire   [1:0] select_ln11_fu_439_p3;
reg   [1:0] k1_fu_68;
wire   [1:0] select_ln10_4_fu_375_p3;
reg   [1:0] ap_sig_allocacmp_k1_1;
reg   [1:0] indvar_flatten_fu_72;
wire   [1:0] add_ln10_fu_215_p2;
reg   [1:0] ap_sig_allocacmp_indvar_flatten_load;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_block_pp0_stage1_01001;
reg    filter_ce0_local;
reg   [3:0] filter_address0_local;
reg    filter_ce1_local;
reg    orig_ce1_local;
reg    orig_ce0_local;
reg   [12:0] orig_address0_local;
reg  signed [31:0] grp_fu_161_p0;
reg  signed [31:0] grp_fu_161_p1;
wire   [6:0] k1_cast1_fu_199_p1;
wire   [3:0] p_shl_fu_231_p3;
wire   [3:0] zext_ln10_1_fu_227_p1;
wire   [3:0] p_shl8_fu_261_p3;
wire   [3:0] zext_ln10_fu_258_p1;
wire   [3:0] zext_ln6_1_fu_284_p1;
wire   [3:0] empty_fu_268_p2;
wire   [3:0] add_ln12_fu_288_p2;
wire   [12:0] zext_ln6_fu_280_p1;
wire   [12:0] tmp_fu_274_p3;
wire   [12:0] add_ln12_1_fu_299_p2;
wire   [0:0] tmp_1_fu_310_p3;
wire   [1:0] or_ln_fu_318_p3;
wire   [6:0] k1_cast1_mid1_fu_339_p1;
wire   [6:0] p_mid15_fu_342_p2;
wire   [12:0] tmp_mid1_fu_347_p3;
wire   [1:0] select_ln10_3_fu_367_p3;
wire   [3:0] zext_ln5_1_fu_385_p1;
wire   [3:0] select_ln10_fu_332_p3;
wire   [3:0] add_ln12_2_fu_389_p2;
wire   [12:0] zext_ln5_fu_381_p1;
wire   [12:0] select_ln10_1_fu_354_p3;
wire   [0:0] bit_sel_fu_415_p3;
wire   [0:0] xor_ln11_fu_422_p2;
wire   [0:0] trunc_ln11_fu_428_p1;
wire   [1:0] k2_op_fu_431_p3;
wire   [31:0] select_ln10_2_fu_466_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 temp_1_fu_60 = 32'd0;
#0 k2_fu_64 = 2'd0;
#0 k1_fu_68 = 2'd0;
#0 indvar_flatten_fu_72 = 2'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_161_p0),.din1(grp_fu_161_p1),.ce(1'b1),.dout(grp_fu_161_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(orig_load_2_reg_605),.din1(filter_load_2_reg_575),.ce(1'b1),.dout(grp_fu_165_p2));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln10_fu_209_p2 == 1'd0))) begin
            indvar_flatten_fu_72 <= add_ln10_fu_215_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_72 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k1_fu_68 <= 2'd0;
    end else if (((icmp_ln10_reg_533 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k1_fu_68 <= select_ln10_4_fu_375_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k2_fu_64 <= 2'd0;
        end else if (((icmp_ln10_reg_533 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            k2_fu_64 <= select_ln11_fu_439_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            temp_1_fu_60 <= 32'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            temp_1_fu_60 <= temp_4_fu_471_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln10_1_reg_537 <= add_ln10_1_fu_221_p2;
        empty_7_reg_528 <= empty_7_fu_203_p2;
        icmp_ln10_reg_533 <= icmp_ln10_fu_209_p2;
        icmp_ln10_reg_533_pp0_iter1_reg <= icmp_ln10_reg_533;
        icmp_ln10_reg_533_pp0_iter2_reg <= icmp_ln10_reg_533_pp0_iter1_reg;
        k1_1_reg_521 <= ap_sig_allocacmp_k1_1;
        mul_ln12_1_reg_625 <= grp_fu_165_p2;
        p_mid1_reg_543 <= p_mid1_fu_239_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln12_3_reg_590 <= add_ln12_3_fu_400_p2;
        add_ln13_reg_635 <= add_ln13_fu_461_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln11_reg_569 <= icmp_ln11_fu_326_p2;
        icmp_ln11_reg_569_pp0_iter1_reg <= icmp_ln11_reg_569;
        icmp_ln11_reg_569_pp0_iter2_reg <= icmp_ln11_reg_569_pp0_iter1_reg;
        k2_1_reg_553 <= k2_fu_64;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        filter_load_1_reg_610 <= filter_q0;
        filter_load_reg_595 <= filter_q1;
        orig_load_2_reg_605 <= orig_q0;
        orig_load_reg_600 <= orig_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        filter_load_2_reg_575 <= filter_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_load_1_reg_620 <= orig_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_169 <= grp_fu_161_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_reg_630 <= temp_fu_454_p2;
    end
end
always @ (*) begin
    if (((icmp_ln10_reg_533 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_reg_533_pp0_iter2_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_72;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k1_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_k1_1 = k1_fu_68;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            filter_address0_local = zext_ln12_2_fu_395_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            filter_address0_local = zext_ln12_4_fu_245_p1;
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
        grp_fu_161_p0 = orig_load_1_reg_620;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_161_p0 = orig_load_reg_600;
    end else begin
        grp_fu_161_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_161_p1 = filter_load_1_reg_610;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_161_p1 = filter_load_reg_595;
    end else begin
        grp_fu_161_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_address0_local = zext_ln12_3_fu_411_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_address0_local = zext_ln12_5_fu_362_p1;
    end else begin
        orig_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_ce0_local = 1'b1;
    end else begin
        orig_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_ce1_local = 1'b1;
    end else begin
        orig_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_reg_533_pp0_iter2_reg == 1'd1))) begin
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
assign add_ln10_1_fu_221_p2 = (ap_sig_allocacmp_k1_1 + 2'd1);
assign add_ln10_fu_215_p2 = (ap_sig_allocacmp_indvar_flatten_load + 2'd1);
assign add_ln12_1_fu_299_p2 = (zext_ln6_fu_280_p1 + tmp_fu_274_p3);
assign add_ln12_2_fu_389_p2 = (zext_ln5_1_fu_385_p1 + select_ln10_fu_332_p3);
assign add_ln12_3_fu_400_p2 = (zext_ln5_fu_381_p1 + select_ln10_1_fu_354_p3);
assign add_ln12_fu_288_p2 = (zext_ln6_1_fu_284_p1 + empty_fu_268_p2);
assign add_ln13_fu_461_p2 = (mul_ln12_1_reg_625 + temp_fu_454_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bit_sel_fu_415_p3 = k2_1_reg_553[2'd1];
assign empty_7_fu_203_p2 = (k1_cast1_fu_199_p1 + r);
assign empty_fu_268_p2 = (p_shl8_fu_261_p3 - zext_ln10_fu_258_p1);
assign filter_address0 = filter_address0_local;
assign filter_address1 = zext_ln12_fu_294_p1;
assign filter_ce0 = filter_ce0_local;
assign filter_ce1 = filter_ce1_local;
assign icmp_ln10_fu_209_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_326_p2 = ((or_ln_fu_318_p3 == 2'd3) ? 1'b1 : 1'b0);
assign k1_cast1_fu_199_p1 = ap_sig_allocacmp_k1_1;
assign k1_cast1_mid1_fu_339_p1 = add_ln10_1_reg_537;
assign k2_op_fu_431_p3 = {{xor_ln11_fu_422_p2}, {trunc_ln11_fu_428_p1}};
assign or_ln_fu_318_p3 = {{tmp_1_fu_310_p3}, {1'd1}};
assign orig_address0 = orig_address0_local;
assign orig_address1 = zext_ln12_1_fu_305_p1;
assign orig_ce0 = orig_ce0_local;
assign orig_ce1 = orig_ce1_local;
assign p_mid15_fu_342_p2 = (k1_cast1_mid1_fu_339_p1 + r);
assign p_mid1_fu_239_p2 = (p_shl_fu_231_p3 - zext_ln10_1_fu_227_p1);
assign p_shl8_fu_261_p3 = {{k1_1_reg_521}, {2'd0}};
assign p_shl_fu_231_p3 = {{add_ln10_1_fu_221_p2}, {2'd0}};
assign select_ln10_1_fu_354_p3 = ((icmp_ln11_fu_326_p2[0:0] == 1'b1) ? tmp_mid1_fu_347_p3 : tmp_fu_274_p3);
assign select_ln10_2_fu_466_p3 = ((icmp_ln11_reg_569_pp0_iter2_reg[0:0] == 1'b1) ? add_ln13_reg_635 : temp_reg_630);
assign select_ln10_3_fu_367_p3 = ((icmp_ln11_fu_326_p2[0:0] == 1'b1) ? 2'd1 : or_ln_fu_318_p3);
assign select_ln10_4_fu_375_p3 = ((icmp_ln11_fu_326_p2[0:0] == 1'b1) ? add_ln10_1_reg_537 : k1_1_reg_521);
assign select_ln10_fu_332_p3 = ((icmp_ln11_fu_326_p2[0:0] == 1'b1) ? p_mid1_reg_543 : empty_fu_268_p2);
assign select_ln11_fu_439_p3 = ((icmp_ln11_reg_569[0:0] == 1'b1) ? 2'd2 : k2_op_fu_431_p3);
assign temp_4_fu_471_p2 = (reg_169 + select_ln10_2_fu_466_p3);
assign temp_fu_454_p2 = (reg_169 + temp_1_fu_60);
assign temp_out = temp_fu_454_p2;
assign tmp_1_fu_310_p3 = k2_fu_64[32'd1];
assign tmp_fu_274_p3 = {{empty_7_reg_528}, {c}};
assign tmp_mid1_fu_347_p3 = {{p_mid15_fu_342_p2}, {c}};
assign trunc_ln11_fu_428_p1 = k2_1_reg_553[0:0];
assign xor_ln11_fu_422_p2 = (bit_sel_fu_415_p3 ^ 1'd1);
assign zext_ln10_1_fu_227_p1 = add_ln10_1_fu_221_p2;
assign zext_ln10_fu_258_p1 = k1_1_reg_521;
assign zext_ln12_1_fu_305_p1 = add_ln12_1_fu_299_p2;
assign zext_ln12_2_fu_395_p1 = add_ln12_2_fu_389_p2;
assign zext_ln12_3_fu_411_p1 = add_ln12_3_reg_590;
assign zext_ln12_4_fu_245_p1 = p_mid1_fu_239_p2;
assign zext_ln12_5_fu_362_p1 = tmp_mid1_fu_347_p3;
assign zext_ln12_fu_294_p1 = add_ln12_fu_288_p2;
assign zext_ln5_1_fu_385_p1 = select_ln10_3_fu_367_p3;
assign zext_ln5_fu_381_p1 = select_ln10_3_fu_367_p3;
assign zext_ln6_1_fu_284_p1 = k2_fu_64;
assign zext_ln6_fu_280_p1 = k2_fu_64;
endmodule 