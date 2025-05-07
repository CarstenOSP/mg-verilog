module stencil_stencil_Pipeline_stencil_label3 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,r,lshr_ln5,filter_address0,filter_ce0,filter_q0,filter_address1,filter_ce1,filter_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,empty,add_ln10,temp_1_out,temp_1_out_ap_vld); 
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
input  [4:0] lshr_ln5;
output  [3:0] filter_address0;
output   filter_ce0;
input  [31:0] filter_q0;
output  [3:0] filter_address1;
output   filter_ce1;
input  [31:0] filter_q1;
output  [11:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [11:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [11:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [11:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
input  [0:0] empty;
input  [5:0] add_ln10;
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
reg   [0:0] icmp_ln10_reg_763;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_298_p2;
reg   [31:0] reg_320;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_302_p2;
reg   [31:0] reg_324;
wire   [0:0] tmp_2_read_fu_102_p2;
wire   [0:0] tmp_2_reg_651;
reg   [1:0] k1_1_reg_669;
wire   [3:0] empty_12_fu_357_p2;
reg   [3:0] empty_12_reg_675;
wire   [11:0] add_ln5_fu_374_p3;
reg   [11:0] add_ln5_reg_683;
wire   [4:0] tmp_1_fu_411_p4;
reg   [4:0] tmp_1_reg_708;
reg   [0:0] tmp_3_reg_723;
reg  signed [31:0] filter_load_reg_728;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire  signed [31:0] grp_fu_306_p3;
reg  signed [31:0] select_ln12_reg_733;
reg  signed [31:0] filter_load_1_reg_738;
wire  signed [31:0] grp_fu_313_p3;
reg  signed [31:0] select_ln12_1_reg_743;
wire   [0:0] icmp_ln10_fu_471_p2;
reg   [0:0] icmp_ln10_reg_763_pp0_iter1_reg;
wire   [6:0] empty_15_fu_481_p2;
reg   [6:0] empty_15_reg_767;
reg  signed [31:0] filter_load_2_reg_787;
reg  signed [31:0] select_ln12_2_reg_792;
reg  signed [31:0] filter_load_4_reg_812;
reg  signed [31:0] select_ln12_4_reg_817;
reg  signed [31:0] filter_load_3_reg_837;
wire  signed [31:0] select_ln12_3_fu_582_p3;
reg  signed [31:0] select_ln12_3_reg_842;
reg  signed [31:0] filter_load_5_reg_847;
wire  signed [31:0] select_ln12_5_fu_589_p3;
reg  signed [31:0] select_ln12_5_reg_852;
reg   [31:0] mul_ln13_reg_857;
reg   [31:0] mul_ln13_5_reg_862;
wire   [31:0] temp_3_fu_610_p2;
reg   [31:0] temp_3_reg_867;
wire   [31:0] temp_4_fu_628_p2;
reg   [31:0] temp_4_reg_872;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter1_stage2;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] p_cast11_fu_363_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_fu_382_p1;
wire   [63:0] zext_ln12_1_fu_406_p1;
wire   [63:0] zext_ln12_2_fu_429_p1;
wire   [63:0] zext_ln12_3_fu_448_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_4_fu_458_p1;
wire   [63:0] zext_ln12_6_fu_491_p1;
wire   [63:0] zext_ln12_7_fu_503_p1;
wire   [63:0] p_cast12_fu_543_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_5_fu_554_p1;
wire   [63:0] zext_ln12_8_fu_565_p1;
wire   [63:0] zext_ln12_9_fu_576_p1;
reg   [31:0] temp_fu_88;
wire    ap_loop_init;
reg   [1:0] k1_fu_92;
wire   [1:0] xor_ln_fu_525_p3;
reg   [1:0] ap_sig_allocacmp_k1_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage2_01001;
reg    filter_ce1_local;
reg   [3:0] filter_address1_local;
reg    filter_ce0_local;
reg   [3:0] filter_address0_local;
reg    orig_0_ce0_local;
reg   [11:0] orig_0_address0_local;
reg    orig_0_ce1_local;
reg    orig_1_ce0_local;
reg   [11:0] orig_1_address0_local;
reg    orig_1_ce1_local;
reg  signed [31:0] grp_fu_298_p0;
reg  signed [31:0] grp_fu_298_p1;
reg  signed [31:0] grp_fu_302_p0;
reg  signed [31:0] grp_fu_302_p1;
wire   [3:0] p_shl_fu_349_p3;
wire   [3:0] zext_ln8_1_fu_345_p1;
wire   [6:0] zext_ln8_fu_341_p1;
wire   [6:0] empty_13_fu_368_p2;
wire   [1:0] tmp_fu_388_p4;
wire   [2:0] or_ln_fu_398_p3;
wire   [11:0] lshr_ln_fu_421_p3;
wire   [3:0] add_ln12_fu_443_p2;
wire   [11:0] add_ln12_1_fu_453_p2;
wire   [1:0] or_ln1_fu_464_p3;
wire   [6:0] zext_ln10_fu_477_p1;
wire   [3:0] add_ln12_2_fu_486_p2;
wire   [11:0] lshr_ln12_1_fu_496_p3;
wire   [0:0] bit_sel_fu_509_p3;
wire   [0:0] xor_ln10_fu_516_p2;
wire   [0:0] trunc_ln10_fu_522_p1;
wire   [3:0] empty_14_fu_538_p2;
wire   [11:0] add_ln5_1_fu_548_p3;
wire   [3:0] add_ln12_3_fu_560_p2;
wire   [11:0] add_ln12_4_fu_570_p2;
wire   [31:0] add_ln13_1_fu_599_p2;
wire   [31:0] add_ln13_fu_604_p2;
wire   [31:0] add_ln13_4_fu_617_p2;
wire   [31:0] add_ln13_3_fu_622_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [2:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_562;
reg    ap_condition_565;
reg    ap_condition_568;
reg    ap_condition_572;
reg    ap_condition_575;
reg    ap_condition_578;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 temp_fu_88 = 32'd0;
#0 k1_fu_92 = 2'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_298_p0),.din1(grp_fu_298_p1),.ce(1'b1),.dout(grp_fu_298_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_302_p0),.din1(grp_fu_302_p1),.ce(1'b1),.dout(grp_fu_302_p2));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b1 == ap_condition_exit_pp0_iter1_stage2) | ((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k1_fu_92 <= 2'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_fu_471_p2 == 1'd0))) begin
        k1_fu_92 <= xor_ln_fu_525_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        temp_fu_88 <= 32'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_fu_88 <= temp_4_reg_872;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln5_reg_683 <= add_ln5_fu_374_p3;
        empty_12_reg_675 <= empty_12_fu_357_p2;
        k1_1_reg_669 <= ap_sig_allocacmp_k1_1;
        select_ln12_3_reg_842 <= select_ln12_3_fu_582_p3;
        select_ln12_5_reg_852 <= select_ln12_5_fu_589_p3;
        temp_4_reg_872 <= temp_4_fu_628_p2;
        tmp_1_reg_708 <= {{add_ln10[5:1]}};
        tmp_3_reg_723 <= ap_sig_allocacmp_k1_1[32'd1];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        empty_15_reg_767 <= empty_15_fu_481_p2;
        icmp_ln10_reg_763 <= icmp_ln10_fu_471_p2;
        icmp_ln10_reg_763_pp0_iter1_reg <= icmp_ln10_reg_763;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        filter_load_1_reg_738 <= filter_q0;
        filter_load_reg_728 <= filter_q1;
        select_ln12_1_reg_743 <= grp_fu_313_p3;
        select_ln12_reg_733 <= grp_fu_306_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        filter_load_2_reg_787 <= filter_q1;
        filter_load_4_reg_812 <= filter_q0;
        select_ln12_2_reg_792 <= grp_fu_306_p3;
        select_ln12_4_reg_817 <= grp_fu_313_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        filter_load_3_reg_837 <= filter_q1;
        filter_load_5_reg_847 <= filter_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_5_reg_862 <= grp_fu_302_p2;
        mul_ln13_reg_857 <= grp_fu_298_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_320 <= grp_fu_298_p2;
        reg_324 <= grp_fu_302_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        temp_3_reg_867 <= temp_3_fu_610_p2;
    end
end
always @ (*) begin
    if (((icmp_ln10_reg_763 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln10_reg_763_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        ap_sig_allocacmp_k1_1 = k1_fu_92;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            filter_address0_local = zext_ln12_8_fu_565_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            filter_address0_local = zext_ln12_6_fu_491_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            filter_address0_local = zext_ln12_1_fu_406_p1;
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
            filter_address1_local = p_cast12_fu_543_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            filter_address1_local = zext_ln12_3_fu_448_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            filter_address1_local = p_cast11_fu_363_p1;
        end else begin
            filter_address1_local = 'bx;
        end
    end else begin
        filter_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        filter_ce0_local = 1'b1;
    end else begin
        filter_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        filter_ce1_local = 1'b1;
    end else begin
        filter_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_298_p0 = filter_load_5_reg_847;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_298_p0 = filter_load_2_reg_787;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_298_p0 = filter_load_reg_728;
    end else begin
        grp_fu_298_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_298_p1 = select_ln12_5_reg_852;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_298_p1 = select_ln12_2_reg_792;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_298_p1 = select_ln12_reg_733;
    end else begin
        grp_fu_298_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_302_p0 = filter_load_3_reg_837;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_302_p0 = filter_load_4_reg_812;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_302_p0 = filter_load_1_reg_738;
    end else begin
        grp_fu_302_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_302_p1 = select_ln12_3_reg_842;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_302_p1 = select_ln12_4_reg_817;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_302_p1 = select_ln12_1_reg_743;
    end else begin
        grp_fu_302_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address0_local = zext_ln12_9_fu_576_p1;
        end else if ((1'b1 == ap_condition_572)) begin
            orig_0_address0_local = zext_ln12_7_fu_503_p1;
        end else if ((1'b1 == ap_condition_568)) begin
            orig_0_address0_local = zext_ln12_4_fu_458_p1;
        end else if ((1'b1 == ap_condition_565)) begin
            orig_0_address0_local = zext_ln12_2_fu_429_p1;
        end else if ((1'b1 == ap_condition_562)) begin
            orig_0_address0_local = zext_ln12_fu_382_p1;
        end else begin
            orig_0_address0_local = 'bx;
        end
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_2_read_fu_102_p2 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_2_read_fu_102_p2 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_fu_471_p2 == 1'd0) & (tmp_2_reg_651 == 1'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_2_reg_651 == 1'd0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address0_local = zext_ln12_9_fu_576_p1;
        end else if ((1'b1 == ap_condition_578)) begin
            orig_1_address0_local = zext_ln12_7_fu_503_p1;
        end else if ((1'b1 == ap_condition_575)) begin
            orig_1_address0_local = zext_ln12_4_fu_458_p1;
        end else if ((1'b1 == ap_condition_562)) begin
            orig_1_address0_local = zext_ln12_2_fu_429_p1;
        end else if ((1'b1 == ap_condition_565)) begin
            orig_1_address0_local = zext_ln12_fu_382_p1;
        end else begin
            orig_1_address0_local = 'bx;
        end
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_2_read_fu_102_p2 == 1'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_2_read_fu_102_p2 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_fu_471_p2 == 1'd0) & (tmp_2_reg_651 == 1'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_2_reg_651 == 1'd1)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln10_reg_763_pp0_iter1_reg == 1'd1))) begin
        temp_1_out_ap_vld = 1'b1;
    end else begin
        temp_1_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to2 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln12_1_fu_453_p2 = (add_ln5_reg_683 + 12'd1);
assign add_ln12_2_fu_486_p2 = (empty_12_reg_675 + 4'd4);
assign add_ln12_3_fu_560_p2 = (empty_12_reg_675 + 4'd5);
assign add_ln12_4_fu_570_p2 = (add_ln5_1_fu_548_p3 + 12'd1);
assign add_ln12_fu_443_p2 = (empty_12_reg_675 + 4'd2);
assign add_ln13_1_fu_599_p2 = (reg_320 + mul_ln13_reg_857);
assign add_ln13_3_fu_622_p2 = (add_ln13_4_fu_617_p2 + reg_324);
assign add_ln13_4_fu_617_p2 = (mul_ln13_5_reg_862 + reg_320);
assign add_ln13_fu_604_p2 = (add_ln13_1_fu_599_p2 + reg_324);
assign add_ln5_1_fu_548_p3 = {{empty_15_reg_767}, {lshr_ln5}};
assign add_ln5_fu_374_p3 = {{empty_13_fu_368_p2}, {lshr_ln5}};
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
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_562 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_2_read_fu_102_p2 == 1'd0));
end
always @ (*) begin
    ap_condition_565 = ((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0) & (tmp_2_read_fu_102_p2 == 1'd1));
end
always @ (*) begin
    ap_condition_568 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_2_reg_651 == 1'd0));
end
always @ (*) begin
    ap_condition_572 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_fu_471_p2 == 1'd0) & (tmp_2_reg_651 == 1'd1));
end
always @ (*) begin
    ap_condition_575 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (tmp_2_reg_651 == 1'd1));
end
always @ (*) begin
    ap_condition_578 = ((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_fu_471_p2 == 1'd0) & (tmp_2_reg_651 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign bit_sel_fu_509_p3 = k1_1_reg_669[2'd1];
assign empty_12_fu_357_p2 = (p_shl_fu_349_p3 - zext_ln8_1_fu_345_p1);
assign empty_13_fu_368_p2 = (zext_ln8_fu_341_p1 + r);
assign empty_14_fu_538_p2 = (empty_12_reg_675 + 4'd3);
assign empty_15_fu_481_p2 = (zext_ln10_fu_477_p1 + r);
assign filter_address0 = filter_address0_local;
assign filter_address1 = filter_address1_local;
assign filter_ce0 = filter_ce0_local;
assign filter_ce1 = filter_ce1_local;
assign grp_fu_306_p3 = ((empty[0:0] == 1'b1) ? orig_1_q0 : orig_0_q0);
assign grp_fu_313_p3 = ((empty[0:0] == 1'b1) ? orig_0_q0 : orig_1_q0);
assign icmp_ln10_fu_471_p2 = ((or_ln1_fu_464_p3 == 2'd3) ? 1'b1 : 1'b0);
assign lshr_ln12_1_fu_496_p3 = {{empty_15_fu_481_p2}, {tmp_1_reg_708}};
assign lshr_ln_fu_421_p3 = {{empty_13_fu_368_p2}, {tmp_1_fu_411_p4}};
assign or_ln1_fu_464_p3 = {{tmp_3_reg_723}, {1'd1}};
assign or_ln_fu_398_p3 = {{tmp_fu_388_p4}, {1'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = zext_ln12_5_fu_554_p1;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = zext_ln12_5_fu_554_p1;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign p_cast11_fu_363_p1 = empty_12_fu_357_p2;
assign p_cast12_fu_543_p1 = empty_14_fu_538_p2;
assign p_shl_fu_349_p3 = {{ap_sig_allocacmp_k1_1}, {2'd0}};
assign select_ln12_3_fu_582_p3 = ((empty[0:0] == 1'b1) ? orig_1_q1 : orig_0_q1);
assign select_ln12_5_fu_589_p3 = ((empty[0:0] == 1'b1) ? orig_1_q0 : orig_0_q0);
assign temp_1_out = (add_ln13_fu_604_p2 + temp_fu_88);
assign temp_3_fu_610_p2 = (add_ln13_fu_604_p2 + temp_fu_88);
assign temp_4_fu_628_p2 = (add_ln13_3_fu_622_p2 + temp_3_reg_867);
assign tmp_1_fu_411_p4 = {{add_ln10[5:1]}};
assign tmp_2_read_fu_102_p2 = empty;
assign tmp_2_reg_651 = empty;
assign tmp_fu_388_p4 = {{empty_12_fu_357_p2[2:1]}};
assign trunc_ln10_fu_522_p1 = k1_1_reg_669[0:0];
assign xor_ln10_fu_516_p2 = (bit_sel_fu_509_p3 ^ 1'd1);
assign xor_ln_fu_525_p3 = {{xor_ln10_fu_516_p2}, {trunc_ln10_fu_522_p1}};
assign zext_ln10_fu_477_p1 = or_ln1_fu_464_p3;
assign zext_ln12_1_fu_406_p1 = or_ln_fu_398_p3;
assign zext_ln12_2_fu_429_p1 = lshr_ln_fu_421_p3;
assign zext_ln12_3_fu_448_p1 = add_ln12_fu_443_p2;
assign zext_ln12_4_fu_458_p1 = add_ln12_1_fu_453_p2;
assign zext_ln12_5_fu_554_p1 = add_ln5_1_fu_548_p3;
assign zext_ln12_6_fu_491_p1 = add_ln12_2_fu_486_p2;
assign zext_ln12_7_fu_503_p1 = lshr_ln12_1_fu_496_p3;
assign zext_ln12_8_fu_565_p1 = add_ln12_3_fu_560_p2;
assign zext_ln12_9_fu_576_p1 = add_ln12_4_fu_570_p2;
assign zext_ln12_fu_382_p1 = add_ln5_fu_374_p3;
assign zext_ln8_1_fu_345_p1 = ap_sig_allocacmp_k1_1;
assign zext_ln8_fu_341_p1 = ap_sig_allocacmp_k1_1;
endmodule 