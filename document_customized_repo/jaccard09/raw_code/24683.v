module stencil_stencil_Pipeline_stencil_label3_stencil_label4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,r,c,filter_address0,filter_ce0,filter_q0,filter_address1,filter_ce1,filter_q1,orig_0_address0,orig_0_ce0,orig_0_q0,orig_0_address1,orig_0_ce1,orig_0_q1,orig_1_address0,orig_1_ce0,orig_1_q0,orig_1_address1,orig_1_ce1,orig_1_q1,orig_2_address0,orig_2_ce0,orig_2_q0,orig_2_address1,orig_2_ce1,orig_2_q1,orig_3_address0,orig_3_ce0,orig_3_q0,orig_3_address1,orig_3_ce1,orig_3_q1,empty,temp_out,temp_out_ap_vld); 
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
output  [10:0] orig_0_address0;
output   orig_0_ce0;
input  [31:0] orig_0_q0;
output  [10:0] orig_0_address1;
output   orig_0_ce1;
input  [31:0] orig_0_q1;
output  [10:0] orig_1_address0;
output   orig_1_ce0;
input  [31:0] orig_1_q0;
output  [10:0] orig_1_address1;
output   orig_1_ce1;
input  [31:0] orig_1_q1;
output  [10:0] orig_2_address0;
output   orig_2_ce0;
input  [31:0] orig_2_q0;
output  [10:0] orig_2_address1;
output   orig_2_ce1;
input  [31:0] orig_2_q1;
output  [10:0] orig_3_address0;
output   orig_3_ce0;
input  [31:0] orig_3_q0;
output  [10:0] orig_3_address1;
output   orig_3_ce1;
input  [31:0] orig_3_q1;
input  [1:0] empty;
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
reg   [0:0] icmp_ln10_reg_797;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire   [31:0] grp_fu_292_p2;
reg   [31:0] reg_300;
wire    ap_block_pp0_stage0_11001;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] k1_1_reg_785;
wire   [6:0] empty_12_fu_334_p2;
reg   [6:0] empty_12_reg_792;
wire   [0:0] icmp_ln10_fu_340_p2;
reg   [0:0] icmp_ln10_reg_797_pp0_iter1_reg;
reg   [0:0] icmp_ln10_reg_797_pp0_iter2_reg;
wire   [1:0] add_ln10_1_fu_352_p2;
reg   [1:0] add_ln10_1_reg_801;
wire   [3:0] p_mid1_fu_370_p2;
reg   [3:0] p_mid1_reg_807;
reg   [1:0] k2_1_reg_817;
wire   [1:0] trunc_ln12_fu_436_p1;
reg   [1:0] trunc_ln12_reg_828;
wire   [0:0] icmp_ln11_fu_474_p2;
reg   [0:0] icmp_ln11_reg_853;
reg   [0:0] icmp_ln11_reg_853_pp0_iter1_reg;
reg   [0:0] icmp_ln11_reg_853_pp0_iter2_reg;
reg  signed [31:0] filter_load_2_reg_859;
wire   [1:0] select_ln10_2_fu_510_p3;
reg   [1:0] select_ln10_2_reg_864;
reg   [10:0] lshr_ln12_1_reg_894;
reg  signed [31:0] filter_load_reg_899;
wire  signed [31:0] tmp_fu_596_p11;
reg  signed [31:0] tmp_reg_904;
wire  signed [31:0] tmp_mid1_fu_619_p11;
reg  signed [31:0] tmp_mid1_reg_909;
reg  signed [31:0] filter_load_1_reg_914;
wire  signed [31:0] tmp_1_fu_685_p11;
reg  signed [31:0] tmp_1_reg_939;
wire   [31:0] grp_fu_296_p2;
reg   [31:0] mul_ln12_1_reg_944;
wire   [31:0] temp_fu_711_p2;
reg   [31:0] temp_reg_949;
wire   [31:0] add_ln13_fu_718_p2;
reg   [31:0] add_ln13_reg_954;
reg    ap_enable_reg_pp0_iter0_reg;
reg    ap_condition_exit_pp0_iter2_stage1;
wire    ap_block_pp0_stage0_subdone;
wire   [63:0] zext_ln12_4_fu_376_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln12_fu_425_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln12_1_fu_450_p1;
wire   [63:0] zext_ln12_5_fu_534_p1;
wire   [63:0] zext_ln12_2_fu_570_p1;
wire   [63:0] zext_ln12_3_fu_642_p1;
reg   [31:0] temp_1_fu_86;
wire   [31:0] temp_4_fu_728_p2;
wire    ap_loop_init;
reg   [1:0] k2_fu_90;
wire   [1:0] select_ln11_fu_673_p3;
reg   [1:0] k1_fu_94;
wire   [1:0] select_ln10_5_fu_550_p3;
reg   [1:0] ap_sig_allocacmp_k1_1;
reg   [1:0] indvar_flatten_fu_98;
wire   [1:0] add_ln10_fu_346_p2;
reg   [1:0] ap_sig_allocacmp_indvar_flatten_load;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_block_pp0_stage1_01001;
reg    filter_ce0_local;
reg   [3:0] filter_address0_local;
reg    filter_ce1_local;
reg    orig_0_ce1_local;
reg    orig_0_ce0_local;
reg   [10:0] orig_0_address0_local;
reg    orig_1_ce1_local;
reg    orig_1_ce0_local;
reg   [10:0] orig_1_address0_local;
reg    orig_2_ce1_local;
reg    orig_2_ce0_local;
reg   [10:0] orig_2_address0_local;
reg    orig_3_ce1_local;
reg    orig_3_ce0_local;
reg   [10:0] orig_3_address0_local;
reg  signed [31:0] grp_fu_292_p0;
reg  signed [31:0] grp_fu_292_p1;
wire   [6:0] k1_cast1_fu_330_p1;
wire   [3:0] p_shl_fu_362_p3;
wire   [3:0] zext_ln10_1_fu_358_p1;
wire   [3:0] p_shl9_fu_392_p3;
wire   [3:0] zext_ln10_fu_389_p1;
wire   [3:0] zext_ln8_1_fu_415_p1;
wire   [3:0] empty_11_fu_399_p2;
wire   [3:0] add_ln12_fu_419_p2;
wire   [12:0] zext_ln8_fu_411_p1;
wire   [12:0] tmp_3_fu_405_p3;
wire   [12:0] add_ln12_1_fu_430_p2;
wire   [10:0] lshr_ln_fu_440_p4;
wire   [0:0] tmp_5_fu_458_p3;
wire   [1:0] or_ln_fu_466_p3;
wire   [6:0] k1_cast1_mid1_fu_487_p1;
wire   [6:0] p_mid18_fu_490_p2;
wire   [12:0] tmp_3_mid1_fu_495_p3;
wire   [3:0] tmp_4_fu_517_p4;
wire   [10:0] lshr_ln12_mid1_fu_526_p3;
wire   [1:0] select_ln10_4_fu_542_p3;
wire   [3:0] zext_ln5_1_fu_560_p1;
wire   [3:0] select_ln10_fu_480_p3;
wire   [3:0] add_ln12_2_fu_564_p2;
wire   [12:0] zext_ln5_fu_556_p1;
wire   [12:0] select_ln10_1_fu_502_p3;
wire   [12:0] add_ln12_3_fu_575_p2;
wire   [31:0] tmp_fu_596_p9;
wire   [31:0] tmp_mid1_fu_619_p9;
wire   [0:0] bit_sel_fu_649_p3;
wire   [0:0] xor_ln11_fu_656_p2;
wire   [0:0] trunc_ln11_fu_662_p1;
wire   [1:0] k2_op_fu_665_p3;
wire   [31:0] tmp_1_fu_685_p9;
wire   [31:0] select_ln10_3_fu_723_p3;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [1:0] ap_NS_fsm;
reg    ap_idle_pp0_1to3;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] tmp_fu_596_p1;
wire   [1:0] tmp_fu_596_p3;
wire  signed [1:0] tmp_fu_596_p5;
wire  signed [1:0] tmp_fu_596_p7;
wire   [1:0] tmp_mid1_fu_619_p1;
wire   [1:0] tmp_mid1_fu_619_p3;
wire  signed [1:0] tmp_mid1_fu_619_p5;
wire  signed [1:0] tmp_mid1_fu_619_p7;
wire  signed [1:0] tmp_1_fu_685_p1;
wire   [1:0] tmp_1_fu_685_p3;
wire   [1:0] tmp_1_fu_685_p5;
wire  signed [1:0] tmp_1_fu_685_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 temp_1_fu_86 = 32'd0;
#0 k2_fu_90 = 2'd0;
#0 k1_fu_94 = 2'd0;
#0 indvar_flatten_fu_98 = 2'd0;
#0 ap_done_reg = 1'b0;
end
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_292_p0),.din1(grp_fu_292_p1),.ce(1'b1),.dout(grp_fu_292_p2));
stencil_mul_32s_32s_32_2_1 #(.ID( 1 ),.NUM_STAGE( 2 ),.din0_WIDTH( 32 ),.din1_WIDTH( 32 ),.dout_WIDTH( 32 ))
mul_32s_32s_32_2_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(filter_load_2_reg_859),.din1(tmp_mid1_reg_909),.ce(1'b1),.dout(grp_fu_296_p2));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U3(.din0(orig_0_q1),.din1(orig_1_q1),.din2(orig_2_q1),.din3(orig_3_q1),.def(tmp_fu_596_p9),.sel(trunc_ln12_reg_828),.dout(tmp_fu_596_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U4(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(tmp_mid1_fu_619_p9),.sel(empty),.dout(tmp_mid1_fu_619_p11));
(* dissolve_hierarchy = "yes" *) stencil_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U5(.din0(orig_0_q0),.din1(orig_1_q0),.din2(orig_2_q0),.din3(orig_3_q0),.def(tmp_1_fu_685_p9),.sel(select_ln10_2_reg_864),.dout(tmp_1_fu_685_p11));
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
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln10_fu_340_p2 == 1'd0))) begin
            indvar_flatten_fu_98 <= add_ln10_fu_346_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_98 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        k1_fu_94 <= 2'd0;
    end else if (((icmp_ln10_reg_797 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k1_fu_94 <= select_ln10_5_fu_550_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            k2_fu_90 <= 2'd0;
        end else if (((icmp_ln10_reg_797 == 1'd0) & (ap_enable_reg_pp0_iter1 == 1'b1))) begin
            k2_fu_90 <= select_ln11_fu_673_p3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if ((ap_loop_init == 1'b1)) begin
            temp_1_fu_86 <= 32'd0;
        end else if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
            temp_1_fu_86 <= temp_4_fu_728_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln10_1_reg_801 <= add_ln10_1_fu_352_p2;
        empty_12_reg_792 <= empty_12_fu_334_p2;
        icmp_ln10_reg_797 <= icmp_ln10_fu_340_p2;
        icmp_ln10_reg_797_pp0_iter1_reg <= icmp_ln10_reg_797;
        icmp_ln10_reg_797_pp0_iter2_reg <= icmp_ln10_reg_797_pp0_iter1_reg;
        k1_1_reg_785 <= ap_sig_allocacmp_k1_1;
        mul_ln12_1_reg_944 <= grp_fu_296_p2;
        p_mid1_reg_807 <= p_mid1_fu_370_p2;
        tmp_mid1_reg_909 <= tmp_mid1_fu_619_p11;
        tmp_reg_904 <= tmp_fu_596_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln13_reg_954 <= add_ln13_fu_718_p2;
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        icmp_ln11_reg_853 <= icmp_ln11_fu_474_p2;
        icmp_ln11_reg_853_pp0_iter1_reg <= icmp_ln11_reg_853;
        icmp_ln11_reg_853_pp0_iter2_reg <= icmp_ln11_reg_853_pp0_iter1_reg;
        k2_1_reg_817 <= k2_fu_90;
        lshr_ln12_1_reg_894 <= {{add_ln12_3_fu_575_p2[12:2]}};
        select_ln10_2_reg_864 <= select_ln10_2_fu_510_p3;
        tmp_1_reg_939 <= tmp_1_fu_685_p11;
        trunc_ln12_reg_828 <= trunc_ln12_fu_436_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        filter_load_1_reg_914 <= filter_q0;
        filter_load_reg_899 <= filter_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        filter_load_2_reg_859 <= filter_q0;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        reg_300 <= grp_fu_292_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        temp_reg_949 <= temp_fu_711_p2;
    end
end
always @ (*) begin
    if (((icmp_ln10_reg_797 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_reg_797_pp0_iter2_reg == 1'd1))) begin
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
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k1_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_k1_1 = k1_fu_94;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            filter_address0_local = zext_ln12_2_fu_570_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            filter_address0_local = zext_ln12_4_fu_376_p1;
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
        grp_fu_292_p0 = filter_load_1_reg_914;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_292_p0 = filter_load_reg_899;
    end else begin
        grp_fu_292_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        grp_fu_292_p1 = tmp_1_reg_939;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_292_p1 = tmp_reg_904;
    end else begin
        grp_fu_292_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_0_address0_local = zext_ln12_3_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_address0_local = zext_ln12_5_fu_534_p1;
    end else begin
        orig_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_0_ce0_local = 1'b1;
    end else begin
        orig_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_0_ce1_local = 1'b1;
    end else begin
        orig_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_1_address0_local = zext_ln12_3_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_address0_local = zext_ln12_5_fu_534_p1;
    end else begin
        orig_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_1_ce0_local = 1'b1;
    end else begin
        orig_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_1_ce1_local = 1'b1;
    end else begin
        orig_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_2_address0_local = zext_ln12_3_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_address0_local = zext_ln12_5_fu_534_p1;
    end else begin
        orig_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_2_ce0_local = 1'b1;
    end else begin
        orig_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_2_ce1_local = 1'b1;
    end else begin
        orig_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        orig_3_address0_local = zext_ln12_3_fu_642_p1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_address0_local = zext_ln12_5_fu_534_p1;
    end else begin
        orig_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        orig_3_ce0_local = 1'b1;
    end else begin
        orig_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        orig_3_ce1_local = 1'b1;
    end else begin
        orig_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln10_reg_797_pp0_iter2_reg == 1'd1))) begin
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
assign add_ln10_1_fu_352_p2 = (ap_sig_allocacmp_k1_1 + 2'd1);
assign add_ln10_fu_346_p2 = (ap_sig_allocacmp_indvar_flatten_load + 2'd1);
assign add_ln12_1_fu_430_p2 = (zext_ln8_fu_411_p1 + tmp_3_fu_405_p3);
assign add_ln12_2_fu_564_p2 = (zext_ln5_1_fu_560_p1 + select_ln10_fu_480_p3);
assign add_ln12_3_fu_575_p2 = (zext_ln5_fu_556_p1 + select_ln10_1_fu_502_p3);
assign add_ln12_fu_419_p2 = (zext_ln8_1_fu_415_p1 + empty_11_fu_399_p2);
assign add_ln13_fu_718_p2 = (mul_ln12_1_reg_944 + temp_fu_711_p2);
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
assign bit_sel_fu_649_p3 = k2_1_reg_817[2'd1];
assign empty_11_fu_399_p2 = (p_shl9_fu_392_p3 - zext_ln10_fu_389_p1);
assign empty_12_fu_334_p2 = (k1_cast1_fu_330_p1 + r);
assign filter_address0 = filter_address0_local;
assign filter_address1 = zext_ln12_fu_425_p1;
assign filter_ce0 = filter_ce0_local;
assign filter_ce1 = filter_ce1_local;
assign icmp_ln10_fu_340_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln11_fu_474_p2 = ((or_ln_fu_466_p3 == 2'd3) ? 1'b1 : 1'b0);
assign k1_cast1_fu_330_p1 = ap_sig_allocacmp_k1_1;
assign k1_cast1_mid1_fu_487_p1 = add_ln10_1_reg_801;
assign k2_op_fu_665_p3 = {{xor_ln11_fu_656_p2}, {trunc_ln11_fu_662_p1}};
assign lshr_ln12_mid1_fu_526_p3 = {{p_mid18_fu_490_p2}, {tmp_4_fu_517_p4}};
assign lshr_ln_fu_440_p4 = {{add_ln12_1_fu_430_p2[12:2]}};
assign or_ln_fu_466_p3 = {{tmp_5_fu_458_p3}, {1'd1}};
assign orig_0_address0 = orig_0_address0_local;
assign orig_0_address1 = zext_ln12_1_fu_450_p1;
assign orig_0_ce0 = orig_0_ce0_local;
assign orig_0_ce1 = orig_0_ce1_local;
assign orig_1_address0 = orig_1_address0_local;
assign orig_1_address1 = zext_ln12_1_fu_450_p1;
assign orig_1_ce0 = orig_1_ce0_local;
assign orig_1_ce1 = orig_1_ce1_local;
assign orig_2_address0 = orig_2_address0_local;
assign orig_2_address1 = zext_ln12_1_fu_450_p1;
assign orig_2_ce0 = orig_2_ce0_local;
assign orig_2_ce1 = orig_2_ce1_local;
assign orig_3_address0 = orig_3_address0_local;
assign orig_3_address1 = zext_ln12_1_fu_450_p1;
assign orig_3_ce0 = orig_3_ce0_local;
assign orig_3_ce1 = orig_3_ce1_local;
assign p_mid18_fu_490_p2 = (k1_cast1_mid1_fu_487_p1 + r);
assign p_mid1_fu_370_p2 = (p_shl_fu_362_p3 - zext_ln10_1_fu_358_p1);
assign p_shl9_fu_392_p3 = {{k1_1_reg_785}, {2'd0}};
assign p_shl_fu_362_p3 = {{add_ln10_1_fu_352_p2}, {2'd0}};
assign select_ln10_1_fu_502_p3 = ((icmp_ln11_fu_474_p2[0:0] == 1'b1) ? tmp_3_mid1_fu_495_p3 : tmp_3_fu_405_p3);
assign select_ln10_2_fu_510_p3 = ((icmp_ln11_fu_474_p2[0:0] == 1'b1) ? empty : trunc_ln12_fu_436_p1);
assign select_ln10_3_fu_723_p3 = ((icmp_ln11_reg_853_pp0_iter2_reg[0:0] == 1'b1) ? add_ln13_reg_954 : temp_reg_949);
assign select_ln10_4_fu_542_p3 = ((icmp_ln11_fu_474_p2[0:0] == 1'b1) ? 2'd1 : or_ln_fu_466_p3);
assign select_ln10_5_fu_550_p3 = ((icmp_ln11_fu_474_p2[0:0] == 1'b1) ? add_ln10_1_reg_801 : k1_1_reg_785);
assign select_ln10_fu_480_p3 = ((icmp_ln11_fu_474_p2[0:0] == 1'b1) ? p_mid1_reg_807 : empty_11_fu_399_p2);
assign select_ln11_fu_673_p3 = ((icmp_ln11_reg_853[0:0] == 1'b1) ? 2'd2 : k2_op_fu_665_p3);
assign temp_4_fu_728_p2 = (reg_300 + select_ln10_3_fu_723_p3);
assign temp_fu_711_p2 = (reg_300 + temp_1_fu_86);
assign temp_out = temp_fu_711_p2;
assign tmp_1_fu_685_p9 = 'bx;
assign tmp_3_fu_405_p3 = {{empty_12_reg_792}, {c}};
assign tmp_3_mid1_fu_495_p3 = {{p_mid18_fu_490_p2}, {c}};
assign tmp_4_fu_517_p4 = {{c[5:2]}};
assign tmp_5_fu_458_p3 = k2_fu_90[32'd1];
assign tmp_fu_596_p9 = 'bx;
assign tmp_mid1_fu_619_p9 = 'bx;
assign trunc_ln11_fu_662_p1 = k2_1_reg_817[0:0];
assign trunc_ln12_fu_436_p1 = add_ln12_1_fu_430_p2[1:0];
assign xor_ln11_fu_656_p2 = (bit_sel_fu_649_p3 ^ 1'd1);
assign zext_ln10_1_fu_358_p1 = add_ln10_1_fu_352_p2;
assign zext_ln10_fu_389_p1 = k1_1_reg_785;
assign zext_ln12_1_fu_450_p1 = lshr_ln_fu_440_p4;
assign zext_ln12_2_fu_570_p1 = add_ln12_2_fu_564_p2;
assign zext_ln12_3_fu_642_p1 = lshr_ln12_1_reg_894;
assign zext_ln12_4_fu_376_p1 = p_mid1_fu_370_p2;
assign zext_ln12_5_fu_534_p1 = lshr_ln12_mid1_fu_526_p3;
assign zext_ln12_fu_425_p1 = add_ln12_fu_419_p2;
assign zext_ln5_1_fu_560_p1 = select_ln10_4_fu_542_p3;
assign zext_ln5_fu_556_p1 = select_ln10_4_fu_542_p3;
assign zext_ln8_1_fu_415_p1 = k2_fu_90;
assign zext_ln8_fu_411_p1 = k2_fu_90;
endmodule 