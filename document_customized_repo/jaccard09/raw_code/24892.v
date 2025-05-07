module stencil_stencil_Pipeline_stencil_label1_stencil_label2 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sol_1_address0,sol_1_ce0,sol_1_we0,sol_1_d0,sol_0_address0,sol_0_ce0,sol_0_we0,sol_0_d0,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,filter_load_2,filter_load_5,filter_load_1,filter_load_8,filter_load,filter_load_6,filter_load_4,filter_load_3,filter_load_7); 
parameter    ap_ST_fsm_pp0_stage0 = 3'd1;
parameter    ap_ST_fsm_pp0_stage1 = 3'd2;
parameter    ap_ST_fsm_pp0_stage2 = 3'd4;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] sol_1_address0;
output   sol_1_ce0;
output   sol_1_we0;
output  [31:0] sol_1_d0;
output  [11:0] sol_0_address0;
output   sol_0_ce0;
output   sol_0_we0;
output  [31:0] sol_0_d0;
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
input  [31:0] filter_load_2;
input  [31:0] filter_load_5;
input  [31:0] filter_load_1;
input  [31:0] filter_load_8;
input  [31:0] filter_load;
input  [31:0] filter_load_6;
input  [31:0] filter_load_4;
input  [31:0] filter_load_3;
input  [31:0] filter_load_7;
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
wire   [0:0] icmp_ln7_fu_534_p2;
reg    ap_condition_exit_pp0_iter0_stage2;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_304_p2;
reg   [31:0] reg_328;
wire    ap_block_pp0_stage0_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] grp_fu_308_p2;
reg   [31:0] reg_332;
wire   [31:0] grp_fu_312_p2;
reg   [31:0] reg_336;
wire    ap_block_pp0_stage2_11001;
wire   [31:0] grp_fu_316_p2;
reg   [31:0] reg_340;
wire   [31:0] grp_fu_320_p2;
reg   [31:0] reg_344;
wire   [5:0] select_ln4_fu_377_p3;
reg   [5:0] select_ln4_reg_722;
wire   [6:0] r_fu_391_p3;
reg   [6:0] r_reg_727;
wire   [4:0] lshr_ln_fu_407_p4;
reg   [4:0] lshr_ln_reg_732;
wire   [11:0] add_ln_fu_421_p3;
reg   [11:0] add_ln_reg_737;
wire   [63:0] zext_ln12_1_fu_429_p1;
reg   [63:0] zext_ln12_1_reg_742;
reg   [63:0] zext_ln12_1_reg_742_pp0_iter1_reg;
reg   [63:0] zext_ln12_1_reg_742_pp0_iter2_reg;
wire   [6:0] select_ln4_1_fu_435_p3;
reg   [6:0] select_ln4_1_reg_758;
wire   [11:0] add_ln5_1_fu_455_p2;
reg   [11:0] add_ln5_1_reg_763;
reg  signed [31:0] orig_0_load_reg_769;
reg  signed [31:0] orig_1_load_reg_774;
wire   [63:0] zext_ln12_2_fu_471_p1;
reg   [63:0] zext_ln12_2_reg_780;
wire   [63:0] zext_ln12_6_fu_486_p1;
reg   [63:0] zext_ln12_6_reg_795;
wire   [11:0] add_ln5_fu_494_p3;
reg   [11:0] add_ln5_reg_815;
reg  signed [31:0] orig_0_load_4_reg_825;
reg  signed [31:0] orig_1_load_2_reg_830;
reg  signed [31:0] orig_0_load_5_reg_836;
reg  signed [31:0] orig_1_load_3_reg_842;
wire   [0:0] icmp_ln8_fu_528_p2;
reg   [0:0] icmp_ln8_reg_857;
reg   [0:0] icmp_ln7_reg_862;
reg   [0:0] icmp_ln7_reg_862_pp0_iter1_reg;
reg   [0:0] icmp_ln7_reg_862_pp0_iter2_reg;
reg  signed [31:0] orig_0_load_1_reg_866;
reg  signed [31:0] orig_0_load_3_reg_882;
reg  signed [31:0] orig_1_load_4_reg_888;
reg  signed [31:0] orig_1_load_5_reg_893;
reg   [31:0] mul_ln13_13_reg_898;
reg  signed [31:0] orig_0_load_2_reg_903;
reg  signed [31:0] orig_1_load_1_reg_908;
wire   [31:0] add_ln13_fu_560_p2;
reg   [31:0] add_ln13_reg_914;
reg   [31:0] add_ln13_reg_914_pp0_iter2_reg;
reg   [31:0] mul_ln13_14_reg_919;
wire   [31:0] grp_fu_324_p2;
reg   [31:0] mul_ln13_17_reg_924;
reg   [31:0] mul_ln13_reg_929;
reg   [31:0] mul_ln13_1_reg_934;
wire   [31:0] add_ln13_5_fu_572_p2;
reg   [31:0] add_ln13_5_reg_939;
reg   [31:0] mul_ln13_11_reg_944;
reg   [31:0] mul_ln13_15_reg_949;
reg   [31:0] mul_ln13_16_reg_954;
wire   [31:0] add_ln13_8_fu_578_p2;
reg   [31:0] add_ln13_8_reg_959;
wire   [31:0] add_ln13_13_fu_588_p2;
reg   [31:0] add_ln13_13_reg_964;
wire   [31:0] add_ln13_1_fu_594_p2;
reg   [31:0] add_ln13_1_reg_969;
wire   [31:0] add_ln13_6_fu_604_p2;
reg   [31:0] add_ln13_6_reg_974;
wire   [31:0] add_ln13_9_fu_609_p2;
reg   [31:0] add_ln13_9_reg_979;
wire   [31:0] add_ln13_14_fu_617_p2;
reg   [31:0] add_ln13_14_reg_984;
wire   [31:0] temp_fu_626_p2;
reg   [31:0] temp_reg_989;
wire   [31:0] temp_1_fu_635_p2;
reg   [31:0] temp_1_reg_994;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage0_subdone;
reg   [0:0] ap_phi_mux_icmp_ln86_phi_fu_297_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_5_fu_476_p1;
wire    ap_block_pp0_stage1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln12_4_fu_506_p1;
wire   [63:0] zext_ln12_3_fu_555_p1;
reg   [11:0] indvar_flatten2_fu_84;
wire   [11:0] add_ln7_fu_517_p2;
reg   [6:0] r3_fu_88;
reg   [6:0] ap_sig_allocacmp_r3_load;
reg   [5:0] c4_fu_92;
wire   [5:0] c_fu_512_p2;
reg   [5:0] ap_sig_allocacmp_c4_load;
reg   [6:0] indvars_iv_next805_fu_96;
wire   [6:0] indvars_iv_next80_fu_523_p2;
reg   [6:0] ap_sig_allocacmp_indvars_iv_next805_load;
reg    orig_0_ce1_local;
reg   [11:0] orig_0_address1_local;
reg    orig_0_ce0_local;
reg   [11:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg   [11:0] orig_1_address1_local;
reg    orig_1_ce0_local;
reg   [11:0] orig_1_address0_local;
reg    sol_0_we0_local;
reg    sol_0_ce0_local;
reg    sol_1_we0_local;
reg    sol_1_ce0_local;
reg  signed [31:0] grp_fu_304_p0;
reg  signed [31:0] grp_fu_304_p1;
reg  signed [31:0] grp_fu_308_p0;
reg  signed [31:0] grp_fu_308_p1;
reg  signed [31:0] grp_fu_312_p0;
reg  signed [31:0] grp_fu_312_p1;
reg  signed [31:0] grp_fu_316_p0;
reg  signed [31:0] grp_fu_316_p1;
reg  signed [31:0] grp_fu_320_p0;
reg  signed [31:0] grp_fu_320_p1;
reg  signed [31:0] grp_fu_324_p0;
reg  signed [31:0] grp_fu_324_p1;
wire   [6:0] indvars_iv_next80_mid1_fu_385_p2;
wire   [5:0] zext_ln12_fu_417_p1;
wire   [6:0] zext_ln5_cast_fu_443_p3;
wire   [11:0] zext_ln5_fu_451_p1;
wire   [11:0] tmp_fu_399_p3;
wire   [11:0] add_ln12_fu_466_p2;
wire   [11:0] add_ln12_2_fu_481_p2;
wire   [11:0] add_ln12_1_fu_500_p2;
wire   [31:0] add_ln13_4_fu_566_p2;
wire   [31:0] add_ln13_12_fu_582_p2;
wire   [31:0] add_ln13_3_fu_599_p2;
wire   [31:0] add_ln13_11_fu_613_p2;
wire   [31:0] add_ln13_2_fu_622_p2;
wire   [31:0] add_ln13_10_fu_631_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter3_stage0;
reg    ap_idle_pp0_0to2;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg   [2:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_598;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 3'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten2_fu_84 = 12'd0;
#0 r3_fu_88 = 7'd0;
#0 c4_fu_92 = 6'd0;
#0 indvars_iv_next805_fu_96 = 7'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_304_p0),.din1(grp_fu_304_p1),.ce(1'b1),.dout(grp_fu_304_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_308_p0),.din1(grp_fu_308_p1),.ce(1'b1),.dout(grp_fu_308_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U3(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_312_p0),.din1(grp_fu_312_p1),.ce(1'b1),.dout(grp_fu_312_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U4(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_316_p0),.din1(grp_fu_316_p1),.ce(1'b1),.dout(grp_fu_316_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U5(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_320_p0),.din1(grp_fu_320_p1),.ce(1'b1),.dout(grp_fu_320_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U6(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_324_p0),.din1(grp_fu_324_p1),.ce(1'b1),.dout(grp_fu_324_p2));
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
        end else if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((((ap_loop_exit_ready_pp0_iter2_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0)))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        c4_fu_92 <= 6'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        c4_fu_92 <= c_fu_512_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten2_fu_84 <= 12'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten2_fu_84 <= add_ln7_fu_517_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvars_iv_next805_fu_96 <= 7'd1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvars_iv_next805_fu_96 <= indvars_iv_next80_fu_523_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
            r3_fu_88 <= r_fu_391_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            r3_fu_88 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln13_13_reg_964 <= add_ln13_13_fu_588_p2;
        add_ln13_8_reg_959 <= add_ln13_8_fu_578_p2;
        add_ln5_1_reg_763 <= add_ln5_1_fu_455_p2;
        add_ln_reg_737 <= add_ln_fu_421_p3;
        lshr_ln_reg_732 <= {{select_ln4_fu_377_p3[5:1]}};
        r_reg_727 <= r_fu_391_p3;
        select_ln4_1_reg_758 <= select_ln4_1_fu_435_p3;
        select_ln4_reg_722 <= select_ln4_fu_377_p3;
        zext_ln12_1_reg_742[11 : 0] <= zext_ln12_1_fu_429_p1[11 : 0];
        zext_ln12_1_reg_742_pp0_iter1_reg[11 : 0] <= zext_ln12_1_reg_742[11 : 0];
        zext_ln12_1_reg_742_pp0_iter2_reg[11 : 0] <= zext_ln12_1_reg_742_pp0_iter1_reg[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_14_reg_984 <= add_ln13_14_fu_617_p2;
        add_ln13_1_reg_969 <= add_ln13_1_fu_594_p2;
        add_ln13_6_reg_974 <= add_ln13_6_fu_604_p2;
        add_ln13_9_reg_979 <= add_ln13_9_fu_609_p2;
        add_ln13_reg_914 <= add_ln13_fu_560_p2;
        add_ln13_reg_914_pp0_iter2_reg <= add_ln13_reg_914;
        zext_ln12_2_reg_780[11 : 0] <= zext_ln12_2_fu_471_p1[11 : 0];
        zext_ln12_6_reg_795[11 : 0] <= zext_ln12_6_fu_486_p1[11 : 0];
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        add_ln13_5_reg_939 <= add_ln13_5_fu_572_p2;
        add_ln5_reg_815 <= add_ln5_fu_494_p3;
        icmp_ln7_reg_862 <= icmp_ln7_fu_534_p2;
        icmp_ln7_reg_862_pp0_iter1_reg <= icmp_ln7_reg_862;
        icmp_ln7_reg_862_pp0_iter2_reg <= icmp_ln7_reg_862_pp0_iter1_reg;
        temp_1_reg_994 <= temp_1_fu_635_p2;
        temp_reg_989 <= temp_fu_626_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        icmp_ln8_reg_857 <= icmp_ln8_fu_528_p2;
        orig_0_load_4_reg_825 <= orig_0_q1;
        orig_0_load_5_reg_836 <= orig_0_q0;
        orig_1_load_2_reg_830 <= orig_1_q1;
        orig_1_load_3_reg_842 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        mul_ln13_11_reg_944 <= grp_fu_316_p2;
        mul_ln13_15_reg_949 <= grp_fu_324_p2;
        mul_ln13_1_reg_934 <= grp_fu_308_p2;
        mul_ln13_reg_929 <= grp_fu_304_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_13_reg_898 <= grp_fu_312_p2;
        orig_0_load_1_reg_866 <= orig_0_q1;
        orig_0_load_3_reg_882 <= orig_0_q0;
        orig_1_load_4_reg_888 <= orig_1_q1;
        orig_1_load_5_reg_893 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        mul_ln13_14_reg_919 <= grp_fu_320_p2;
        mul_ln13_17_reg_924 <= grp_fu_324_p2;
        orig_0_load_2_reg_903 <= orig_0_q0;
        orig_1_load_1_reg_908 <= orig_1_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        mul_ln13_16_reg_954 <= grp_fu_324_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_load_reg_769 <= orig_0_q1;
        orig_1_load_reg_774 <= orig_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_328 <= grp_fu_304_p2;
        reg_332 <= grp_fu_308_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        reg_336 <= grp_fu_312_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_340 <= grp_fu_316_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_344 <= grp_fu_320_p2;
    end
end
always @ (*) begin
    if (((icmp_ln7_fu_534_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln7_reg_862_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter3_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter3_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to2 = 1'b1;
    end else begin
        ap_idle_pp0_0to2 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_598)) begin
            ap_phi_mux_icmp_ln86_phi_fu_297_p4 = icmp_ln8_reg_857;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln86_phi_fu_297_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln86_phi_fu_297_p4 = icmp_ln8_reg_857;
        end
    end else begin
        ap_phi_mux_icmp_ln86_phi_fu_297_p4 = icmp_ln8_reg_857;
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
        ap_sig_allocacmp_c4_load = 6'd0;
    end else begin
        ap_sig_allocacmp_c4_load = c4_fu_92;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvars_iv_next805_load = 7'd1;
    end else begin
        ap_sig_allocacmp_indvars_iv_next805_load = indvars_iv_next805_fu_96;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_r3_load = 7'd0;
    end else begin
        ap_sig_allocacmp_r3_load = r3_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_304_p0 = orig_0_load_1_reg_866;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_304_p0 = orig_0_load_5_reg_836;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_304_p0 = orig_1_load_reg_774;
    end else begin
        grp_fu_304_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_304_p1 = filter_load_2;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_304_p1 = filter_load_8;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_304_p1 = filter_load_1;
    end else begin
        grp_fu_304_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_308_p0 = orig_0_load_3_reg_882;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_308_p0 = orig_0_load_4_reg_825;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_308_p0 = orig_0_load_reg_769;
    end else begin
        grp_fu_308_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_308_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_308_p1 = filter_load_6;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_308_p1 = filter_load;
    end else begin
        grp_fu_308_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_312_p0 = orig_1_load_4_reg_888;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_312_p0 = orig_1_load_2_reg_830;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_312_p0 = orig_1_load_reg_774;
    end else begin
        grp_fu_312_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_312_p1 = filter_load_5;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_312_p1 = filter_load_7;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_312_p1 = filter_load;
    end else begin
        grp_fu_312_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_316_p0 = orig_1_load_1_reg_908;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_316_p0 = orig_0_load_1_reg_866;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_316_p0 = orig_1_load_3_reg_842;
        end else begin
            grp_fu_316_p0 = 'bx;
        end
    end else begin
        grp_fu_316_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_316_p1 = filter_load_4;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_316_p1 = filter_load_1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_316_p1 = filter_load_2;
        end else begin
            grp_fu_316_p1 = 'bx;
        end
    end else begin
        grp_fu_316_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_320_p0 = orig_0_load_2_reg_903;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_320_p0 = orig_1_load_5_reg_893;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_320_p0 = orig_1_load_2_reg_830;
        end else begin
            grp_fu_320_p0 = 'bx;
        end
    end else begin
        grp_fu_320_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_320_p1 = filter_load_3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_320_p1 = filter_load_8;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_320_p1 = filter_load_6;
        end else begin
            grp_fu_320_p1 = 'bx;
        end
    end else begin
        grp_fu_320_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_324_p0 = orig_1_load_1_reg_908;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_324_p0 = orig_0_load_3_reg_882;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_324_p0 = orig_0_load_5_reg_836;
        end else begin
            grp_fu_324_p0 = 'bx;
        end
    end else begin
        grp_fu_324_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            grp_fu_324_p1 = filter_load_3;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_324_p1 = filter_load_4;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_324_p1 = filter_load_7;
        end else begin
            grp_fu_324_p1 = 'bx;
        end
    end else begin
        grp_fu_324_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_3_fu_555_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_0_address0_local = zext_ln12_4_fu_506_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_6_fu_486_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_0_address1_local = zext_ln12_2_reg_780;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_0_address1_local = zext_ln12_5_fu_476_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_0_address1_local = zext_ln12_1_fu_429_p1;
        end else begin
            orig_0_address1_local = 'bx;
        end
    end else begin
        orig_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_3_fu_555_p1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        orig_1_address0_local = zext_ln12_6_reg_795;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_2_fu_471_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            orig_1_address1_local = zext_ln12_4_fu_506_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            orig_1_address1_local = zext_ln12_5_fu_476_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            orig_1_address1_local = zext_ln12_1_fu_429_p1;
        end else begin
            orig_1_address1_local = 'bx;
        end
    end else begin
        orig_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        sol_0_ce0_local = 1'b1;
    end else begin
        sol_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
            if (((ap_idle_pp0_0to2 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter3_stage0))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to3 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
assign add_ln12_1_fu_500_p2 = (add_ln5_fu_494_p3 + 12'd1);
assign add_ln12_2_fu_481_p2 = (add_ln5_1_reg_763 + 12'd1);
assign add_ln12_fu_466_p2 = (add_ln_reg_737 + 12'd1);
assign add_ln13_10_fu_631_p2 = (add_ln13_9_reg_979 + add_ln13_8_reg_959);
assign add_ln13_11_fu_613_p2 = (mul_ln13_14_reg_919 + mul_ln13_17_reg_924);
assign add_ln13_12_fu_582_p2 = (reg_336 + reg_344);
assign add_ln13_13_fu_588_p2 = (add_ln13_12_fu_582_p2 + reg_340);
assign add_ln13_14_fu_617_p2 = (add_ln13_13_reg_964 + add_ln13_11_fu_613_p2);
assign add_ln13_1_fu_594_p2 = (mul_ln13_reg_929 + reg_344);
assign add_ln13_2_fu_622_p2 = (add_ln13_1_reg_969 + add_ln13_reg_914_pp0_iter2_reg);
assign add_ln13_3_fu_599_p2 = (reg_340 + mul_ln13_1_reg_934);
assign add_ln13_4_fu_566_p2 = (reg_336 + reg_328);
assign add_ln13_5_fu_572_p2 = (add_ln13_4_fu_566_p2 + reg_332);
assign add_ln13_6_fu_604_p2 = (add_ln13_5_reg_939 + add_ln13_3_fu_599_p2);
assign add_ln13_8_fu_578_p2 = (mul_ln13_11_reg_944 + mul_ln13_13_reg_898);
assign add_ln13_9_fu_609_p2 = (mul_ln13_16_reg_954 + mul_ln13_15_reg_949);
assign add_ln13_fu_560_p2 = (reg_328 + reg_332);
assign add_ln5_1_fu_455_p2 = (zext_ln5_fu_451_p1 + tmp_fu_399_p3);
assign add_ln5_fu_494_p3 = {{select_ln4_1_reg_758}, {lshr_ln_reg_732}};
assign add_ln7_fu_517_p2 = (indvar_flatten2_fu_84 + 12'd1);
assign add_ln_fu_421_p3 = {{r_fu_391_p3}, {lshr_ln_fu_407_p4}};
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
always @ (*) begin
    ap_condition_598 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln7_reg_862 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage2;
assign ap_ready = ap_ready_sig;
assign c_fu_512_p2 = (select_ln4_reg_722 + 6'd2);
assign icmp_ln7_fu_534_p2 = ((indvar_flatten2_fu_84 == 12'd3905) ? 1'b1 : 1'b0);
assign icmp_ln8_fu_528_p2 = ((c_fu_512_p2 == 6'd62) ? 1'b1 : 1'b0);
assign indvars_iv_next80_fu_523_p2 = (r_reg_727 + 7'd1);
assign indvars_iv_next80_mid1_fu_385_p2 = (ap_sig_allocacmp_r3_load + 7'd2);
assign lshr_ln_fu_407_p4 = {{select_ln4_fu_377_p3[5:1]}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = orig_0_address1_local;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = orig_1_address1_local;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign r_fu_391_p3 = ((ap_phi_mux_icmp_ln86_phi_fu_297_p4[0:0] == 1'b1) ? ap_sig_allocacmp_indvars_iv_next805_load : ap_sig_allocacmp_r3_load);
assign select_ln4_1_fu_435_p3 = ((ap_phi_mux_icmp_ln86_phi_fu_297_p4[0:0] == 1'b1) ? indvars_iv_next80_mid1_fu_385_p2 : ap_sig_allocacmp_indvars_iv_next805_load);
assign select_ln4_fu_377_p3 = ((ap_phi_mux_icmp_ln86_phi_fu_297_p4[0:0] == 1'b1) ? 6'd0 : ap_sig_allocacmp_c4_load);
assign sol_0_address0 = zext_ln12_1_reg_742_pp0_iter2_reg;
assign sol_0_ce0 = sol_0_ce0_local;
assign sol_0_d0 = temp_reg_989;
assign sol_0_we0 = sol_0_we0_local;
assign sol_1_address0 = zext_ln12_1_reg_742_pp0_iter2_reg;
assign sol_1_ce0 = sol_1_ce0_local;
assign sol_1_d0 = temp_1_reg_994;
assign sol_1_we0 = sol_1_we0_local;
assign temp_1_fu_635_p2 = (add_ln13_14_reg_984 + add_ln13_10_fu_631_p2);
assign temp_fu_626_p2 = (add_ln13_6_reg_974 + add_ln13_2_fu_622_p2);
assign tmp_fu_399_p3 = {{r_fu_391_p3}, {5'd0}};
assign zext_ln12_1_fu_429_p1 = add_ln_fu_421_p3;
assign zext_ln12_2_fu_471_p1 = add_ln12_fu_466_p2;
assign zext_ln12_3_fu_555_p1 = add_ln5_reg_815;
assign zext_ln12_4_fu_506_p1 = add_ln12_1_fu_500_p2;
assign zext_ln12_5_fu_476_p1 = add_ln5_1_reg_763;
assign zext_ln12_6_fu_486_p1 = add_ln12_2_fu_481_p2;
assign zext_ln12_fu_417_p1 = lshr_ln_fu_407_p4;
assign zext_ln5_cast_fu_443_p3 = {{1'd1}, {zext_ln12_fu_417_p1}};
assign zext_ln5_fu_451_p1 = zext_ln5_cast_fu_443_p3;
always @ (posedge ap_clk) begin
    zext_ln12_1_reg_742[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_742_pp0_iter1_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_1_reg_742_pp0_iter2_reg[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_2_reg_780[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
    zext_ln12_6_reg_795[63:12] <= 52'b0000000000000000000000000000000000000000000000000000;
end
endmodule 