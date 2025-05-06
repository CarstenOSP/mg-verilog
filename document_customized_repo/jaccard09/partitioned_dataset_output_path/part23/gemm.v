
module gemm (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,m1_address0,m1_ce0,m1_q0,m1_address1,m1_ce1,m1_q1,m2_address0,m2_ce0,m2_q0,m2_address1,m2_ce1,m2_q1,prod_address0,prod_ce0,prod_we0,prod_d0);  
parameter    ap_ST_fsm_pp0_stage0 = 32'd1;
parameter    ap_ST_fsm_pp0_stage1 = 32'd2;
parameter    ap_ST_fsm_pp0_stage2 = 32'd4;
parameter    ap_ST_fsm_pp0_stage3 = 32'd8;
parameter    ap_ST_fsm_pp0_stage4 = 32'd16;
parameter    ap_ST_fsm_pp0_stage5 = 32'd32;
parameter    ap_ST_fsm_pp0_stage6 = 32'd64;
parameter    ap_ST_fsm_pp0_stage7 = 32'd128;
parameter    ap_ST_fsm_pp0_stage8 = 32'd256;
parameter    ap_ST_fsm_pp0_stage9 = 32'd512;
parameter    ap_ST_fsm_pp0_stage10 = 32'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 32'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 32'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 32'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 32'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 32'd32768;
parameter    ap_ST_fsm_pp0_stage16 = 32'd65536;
parameter    ap_ST_fsm_pp0_stage17 = 32'd131072;
parameter    ap_ST_fsm_pp0_stage18 = 32'd262144;
parameter    ap_ST_fsm_pp0_stage19 = 32'd524288;
parameter    ap_ST_fsm_pp0_stage20 = 32'd1048576;
parameter    ap_ST_fsm_pp0_stage21 = 32'd2097152;
parameter    ap_ST_fsm_pp0_stage22 = 32'd4194304;
parameter    ap_ST_fsm_pp0_stage23 = 32'd8388608;
parameter    ap_ST_fsm_pp0_stage24 = 32'd16777216;
parameter    ap_ST_fsm_pp0_stage25 = 32'd33554432;
parameter    ap_ST_fsm_pp0_stage26 = 32'd67108864;
parameter    ap_ST_fsm_pp0_stage27 = 32'd134217728;
parameter    ap_ST_fsm_pp0_stage28 = 32'd268435456;
parameter    ap_ST_fsm_pp0_stage29 = 32'd536870912;
parameter    ap_ST_fsm_pp0_stage30 = 32'd1073741824;
parameter    ap_ST_fsm_pp0_stage31 = 32'd2147483648;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [11:0] m1_address0;
output   m1_ce0;
input  [63:0] m1_q0;
output  [11:0] m1_address1;
output   m1_ce1;
input  [63:0] m1_q1;
output  [11:0] m2_address0;
output   m2_ce0;
input  [63:0] m2_q0;
output  [11:0] m2_address1;
output   m2_ce1;
input  [63:0] m2_q1;
output  [11:0] prod_address0;
output   prod_ce0;
output   prod_we0;
output  [63:0] prod_d0;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [31:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage31;
wire    ap_block_pp0_stage31_subdone;
wire   [0:0] icmp_ln8_fu_648_p2;
reg    ap_condition_exit_pp0_iter0_stage31;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [0:0] icmp_ln923_reg_216;
reg   [63:0] reg_245;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire   [63:0] grp_fu_237_p2;
reg   [63:0] reg_249;
wire    ap_CS_fsm_pp0_stage17;
wire    ap_block_pp0_stage17_11001;
wire    ap_CS_fsm_pp0_stage25;
wire    ap_block_pp0_stage25_11001;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] or_ln4_fu_317_p2;
reg   [0:0] or_ln4_reg_726;
wire   [6:0] k_mid2_fu_337_p3;
reg   [6:0] k_mid2_reg_731;
wire   [6:0] j_fu_345_p3;
reg   [6:0] j_reg_737;
wire   [5:0] empty_fu_353_p1;
reg   [5:0] empty_reg_743;
wire   [4:0] tmp_1_fu_357_p4;
reg   [4:0] tmp_1_reg_749;
wire   [3:0] tmp_6_fu_382_p4;
reg   [3:0] tmp_6_reg_760;
reg   [63:0] m1_load_1_reg_781;
reg   [63:0] m1_load_2_reg_791;
wire   [11:0] add_ln14_5_fu_493_p2;
reg   [11:0] add_ln14_5_reg_796;
wire   [11:0] add_ln14_7_fu_519_p2;
reg   [11:0] add_ln14_7_reg_806;
wire   [0:0] tmp_fu_530_p3;
reg   [0:0] tmp_reg_811;
reg   [0:0] tmp_reg_811_pp0_iter1_reg;
wire   [0:0] xor_ln12_fu_538_p2;
reg   [0:0] xor_ln12_reg_815;
wire   [11:0] add_ln17_fu_544_p2;
reg   [11:0] add_ln17_reg_820;
reg   [11:0] add_ln17_reg_820_pp0_iter1_reg;
reg   [63:0] m1_load_reg_825;
reg   [63:0] m2_load_1_reg_830;
reg   [63:0] m1_load_3_reg_840;
wire   [63:0] bitcast_ln14_fu_563_p1;
wire   [63:0] bitcast_ln14_1_fu_567_p1;
reg   [63:0] m2_load_3_reg_860;
wire   [63:0] bitcast_ln14_2_fu_572_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] bitcast_ln14_3_fu_576_p1;
wire   [63:0] bitcast_ln14_4_fu_580_p1;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [63:0] bitcast_ln14_5_fu_584_p1;
wire   [63:0] bitcast_ln14_6_fu_589_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [63:0] bitcast_ln14_7_fu_593_p1;
wire   [63:0] grp_fu_241_p2;
reg   [63:0] mult_reg_895;
wire    ap_CS_fsm_pp0_stage9;
wire    ap_block_pp0_stage9_11001;
wire   [63:0] sum_mid2_fu_608_p3;
wire    ap_CS_fsm_pp0_stage10;
wire    ap_block_pp0_stage10_11001;
reg   [63:0] mult_1_reg_905;
reg   [63:0] mult_2_reg_910;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg   [63:0] mult_3_reg_915;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire   [0:0] icmp_ln9_fu_642_p2;
reg   [0:0] icmp_ln9_reg_920;
wire    ap_block_pp0_stage31_11001;
reg   [0:0] icmp_ln8_reg_925;
wire   [63:0] bitcast_ln17_fu_668_p1;
reg   [63:0] bitcast_ln17_reg_929;
reg   [11:0] prod_addr_reg_934;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage10_subdone;
reg   [0:0] ap_phi_mux_icmp_ln923_phi_fu_219_p4;
wire    ap_loop_init;
wire    ap_block_pp0_stage0_subdone;
wire    ap_block_pp0_stage0;
reg   [0:0] ap_phi_mux_icmp_ln1222_phi_fu_230_p4;
wire   [63:0] zext_ln14_2_fu_377_p1;
wire   [63:0] zext_ln14_4_fu_408_p1;
wire   [63:0] zext_ln14_fu_453_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln14_1_fu_464_p1;
wire   [63:0] zext_ln14_3_fu_482_p1;
wire   [63:0] zext_ln14_6_fu_514_p1;
wire   [63:0] zext_ln14_5_fu_555_p1;
wire    ap_block_pp0_stage2;
wire   [63:0] zext_ln14_7_fu_559_p1;
wire   [63:0] zext_ln17_fu_664_p1;
wire    ap_block_pp0_stage9;
reg   [15:0] indvar_flatten1316_fu_94;
wire   [15:0] add_ln8_1_fu_622_p2;
wire    ap_block_pp0_stage31;
reg   [6:0] i17_fu_98;
wire   [6:0] i_fu_323_p3;
reg   [6:0] ap_sig_allocacmp_i17_load;
reg   [11:0] indvar_flatten18_fu_102;
wire   [11:0] select_ln9_1_fu_634_p3;
reg   [6:0] j19_fu_106;
reg   [6:0] ap_sig_allocacmp_j19_load;
reg   [6:0] k20_fu_110;
wire   [6:0] k_fu_525_p2;
reg   [6:0] ap_sig_allocacmp_k20_load;
reg   [63:0] sum21_fu_114;
wire    ap_block_pp0_stage10;
reg   [6:0] add_ln824_fu_118;
wire   [6:0] add_ln8_fu_413_p2;
reg   [6:0] ap_sig_allocacmp_add_ln824_load;
reg    m1_ce1_local;
reg   [11:0] m1_address1_local;
reg    m1_ce0_local;
reg   [11:0] m1_address0_local;
reg    m2_ce1_local;
reg   [11:0] m2_address1_local;
reg    m2_ce0_local;
reg   [11:0] m2_address0_local;
reg    prod_we0_local;
reg    prod_ce0_local;
reg   [63:0] grp_fu_237_p0;
reg   [63:0] grp_fu_237_p1;
wire    ap_CS_fsm_pp0_stage18;
wire    ap_block_pp0_stage18;
wire    ap_CS_fsm_pp0_stage26;
wire    ap_block_pp0_stage26;
reg   [63:0] grp_fu_241_p0;
reg   [63:0] grp_fu_241_p1;
wire    ap_block_pp0_stage3;
wire    ap_block_pp0_stage4;
wire    ap_block_pp0_stage5;
wire    ap_block_pp0_stage6;
wire   [6:0] select_ln4_fu_301_p3;
wire   [6:0] select_ln4_1_fu_309_p3;
wire   [6:0] add_ln9_fu_331_p2;
wire   [11:0] add_ln14_2_fu_367_p4;
wire   [0:0] trunc_ln14_fu_392_p1;
wire   [11:0] add_ln14_4_fu_396_p5;
wire   [11:0] zext_ln12_fu_444_p1;
wire   [11:0] tmp_3_fu_434_p3;
wire   [11:0] add_ln14_fu_447_p2;
wire   [11:0] add_ln14_1_fu_458_p3;
wire   [11:0] or_ln_fu_469_p3;
wire   [11:0] zext_ln9_fu_441_p1;
wire   [11:0] add_ln14_3_fu_476_p2;
wire   [11:0] add_ln14_8_fu_487_p2;
wire   [11:0] add_ln14_6_fu_506_p4;
wire   [11:0] or_ln13_1_fu_499_p3;
wire   [63:0] select_ln4_2_fu_600_p3;
wire   [11:0] add_ln9_1_fu_628_p2;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter1_stage10;
reg    ap_idle_pp0_0to0;
reg   [31:0] ap_NS_fsm;
reg    ap_idle_pp0_1to1;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage7_11001;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage8_11001;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage11_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage13_11001;
wire    ap_block_pp0_stage14_subdone;
wire    ap_block_pp0_stage14_11001;
wire    ap_block_pp0_stage15_subdone;
wire    ap_block_pp0_stage15_11001;
wire    ap_block_pp0_stage16_subdone;
wire    ap_block_pp0_stage16_11001;
wire    ap_block_pp0_stage17_subdone;
wire    ap_block_pp0_stage18_subdone;
wire    ap_block_pp0_stage18_11001;
wire    ap_block_pp0_stage19_subdone;
wire    ap_block_pp0_stage19_11001;
wire    ap_block_pp0_stage20_subdone;
wire    ap_block_pp0_stage20_11001;
wire    ap_block_pp0_stage21_subdone;
wire    ap_block_pp0_stage21_11001;
wire    ap_block_pp0_stage22_subdone;
wire    ap_block_pp0_stage22_11001;
wire    ap_block_pp0_stage23_subdone;
wire    ap_block_pp0_stage23_11001;
wire    ap_block_pp0_stage24_subdone;
wire    ap_block_pp0_stage24_11001;
wire    ap_block_pp0_stage25_subdone;
wire    ap_block_pp0_stage26_subdone;
wire    ap_block_pp0_stage26_11001;
wire    ap_block_pp0_stage27_subdone;
wire    ap_block_pp0_stage27_11001;
wire    ap_block_pp0_stage28_subdone;
wire    ap_block_pp0_stage28_11001;
wire    ap_block_pp0_stage29_subdone;
wire    ap_block_pp0_stage29_11001;
wire    ap_block_pp0_stage30_subdone;
wire    ap_block_pp0_stage30_11001;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_387;
reg    ap_condition_920;
reg    ap_condition_929;
reg    ap_condition_933;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 32'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 indvar_flatten1316_fu_94 = 16'd0;
#0 i17_fu_98 = 7'd0;
#0 indvar_flatten18_fu_102 = 12'd0;
#0 j19_fu_106 = 7'd0;
#0 k20_fu_110 = 7'd0;
#0 sum21_fu_114 = 64'd0;
#0 add_ln824_fu_118 = 7'd0;
#0 ap_done_reg = 1'b0;
end
gemm_dadd_64ns_64ns_64_8_full_dsp_1 #(.ID( 1 ),.NUM_STAGE( 8 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dadd_64ns_64ns_64_8_full_dsp_1_U1(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_237_p0),.din1(grp_fu_237_p1),.ce(1'b1),.dout(grp_fu_237_p2));
gemm_dmul_64ns_64ns_64_7_max_dsp_1 #(.ID( 1 ),.NUM_STAGE( 7 ),.din0_WIDTH( 64 ),.din1_WIDTH( 64 ),.dout_WIDTH( 64 ))
dmul_64ns_64ns_64_7_max_dsp_1_U2(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_241_p0),.din1(grp_fu_241_p1),.ce(1'b1),.dout(grp_fu_241_p2));
gemm_flow_control_loop_pipe flow_control_loop_pipe_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage31),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int),.ap_continue(1'b1));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
        if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage31_subdone) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b1 == ap_condition_387)) begin
        add_ln824_fu_118 <= add_ln8_fu_413_p2;
    end
end
always @ (posedge ap_clk) begin
if ((((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10)) | ((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage10)))) begin
    ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
    ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_387)) begin
    i17_fu_98 <= i_fu_323_p3;
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
    if ((1'b1 == ap_condition_929)) begin
        icmp_ln923_reg_216 <= icmp_ln9_reg_920;
    end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_init == 1'b1))) begin
        icmp_ln923_reg_216 <= 1'd0;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_933)) begin
        indvar_flatten1316_fu_94 <= 16'd0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        indvar_flatten1316_fu_94 <= add_ln8_1_fu_622_p2;
    end
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_933)) begin
        indvar_flatten18_fu_102 <= 12'd0;
    end else if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        indvar_flatten18_fu_102 <= select_ln9_1_fu_634_p3;
    end
end
end
always @ (posedge ap_clk) begin
if ((1'b1 == ap_condition_387)) begin
    j19_fu_106 <= j_fu_345_p3;
end
end
always @ (posedge ap_clk) begin
if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
    if ((1'b1 == ap_condition_933)) begin
        k20_fu_110 <= 7'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        k20_fu_110 <= k_fu_525_p2;
    end
end
end
always @ (posedge ap_clk) begin
if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
    sum21_fu_114 <= 64'd0;
end else if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
    sum21_fu_114 <= grp_fu_237_p2;
end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln14_5_reg_796 <= add_ln14_5_fu_493_p2;
        add_ln14_7_reg_806 <= add_ln14_7_fu_519_p2;
        add_ln17_reg_820 <= add_ln17_fu_544_p2;
        add_ln17_reg_820_pp0_iter1_reg <= add_ln17_reg_820;
        tmp_reg_811 <= k_fu_525_p2[32'd6];
        tmp_reg_811_pp0_iter1_reg <= tmp_reg_811;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        bitcast_ln17_reg_929 <= bitcast_ln17_fu_668_p1;
        prod_addr_reg_934 <= zext_ln17_fu_664_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_reg_743 <= empty_fu_353_p1;
        j_reg_737 <= j_fu_345_p3;
        k_mid2_reg_731 <= k_mid2_fu_337_p3;
        or_ln4_reg_726 <= or_ln4_fu_317_p2;
        tmp_1_reg_749 <= {{k_mid2_fu_337_p3[5:1]}};
        tmp_6_reg_760 <= {{k_mid2_fu_337_p3[5:2]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        icmp_ln8_reg_925 <= icmp_ln8_fu_648_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage31_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        icmp_ln9_reg_920 <= icmp_ln9_fu_642_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        m1_load_1_reg_781 <= m1_q1;
        m1_load_2_reg_791 <= m1_q0;
        xor_ln12_reg_815 <= xor_ln12_fu_538_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        m1_load_3_reg_840 <= m1_q0;
        m1_load_reg_825 <= m1_q1;
        m2_load_1_reg_830 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        m2_load_3_reg_860 <= m2_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        mult_1_reg_905 <= grp_fu_241_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        mult_2_reg_910 <= grp_fu_241_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        mult_3_reg_915 <= grp_fu_241_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage9_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage9))) begin
        mult_reg_895 <= grp_fu_241_p2;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        reg_245 <= m2_q1;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage25_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage25)) | ((1'b0 == ap_block_pp0_stage17_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage17)))) begin
        reg_249 <= grp_fu_237_p2;
    end
end
always @ (*) begin
    if (((icmp_ln8_fu_648_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage31 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8_reg_925 == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        ap_condition_exit_pp0_iter1_stage10 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage10 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage10_subdone) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_920)) begin
            ap_phi_mux_icmp_ln1222_phi_fu_230_p4 = xor_ln12_reg_815;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln1222_phi_fu_230_p4 = 1'd1;
        end else begin
            ap_phi_mux_icmp_ln1222_phi_fu_230_p4 = xor_ln12_reg_815;
        end
    end else begin
        ap_phi_mux_icmp_ln1222_phi_fu_230_p4 = xor_ln12_reg_815;
    end
end
always @ (*) begin
    if ((1'b1 == ap_CS_fsm_pp0_stage0)) begin
        if ((1'b1 == ap_condition_920)) begin
            ap_phi_mux_icmp_ln923_phi_fu_219_p4 = icmp_ln9_reg_920;
        end else if ((ap_loop_init == 1'b1)) begin
            ap_phi_mux_icmp_ln923_phi_fu_219_p4 = 1'd0;
        end else begin
            ap_phi_mux_icmp_ln923_phi_fu_219_p4 = icmp_ln9_reg_920;
        end
    end else begin
        ap_phi_mux_icmp_ln923_phi_fu_219_p4 = icmp_ln9_reg_920;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage31_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage31))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_add_ln824_load = 7'd1;
    end else begin
        ap_sig_allocacmp_add_ln824_load = add_ln824_fu_118;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_i17_load = 7'd0;
    end else begin
        ap_sig_allocacmp_i17_load = i17_fu_98;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_j19_load = 7'd0;
    end else begin
        ap_sig_allocacmp_j19_load = j19_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter0 == 1'b1) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_k20_load = 7'd0;
    end else begin
        ap_sig_allocacmp_k20_load = k20_fu_110;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26)) | ((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        grp_fu_237_p0 = reg_249;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_237_p0 = sum_mid2_fu_608_p3;
    end else begin
        grp_fu_237_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_237_p1 = mult_3_reg_915;
    end else if (((1'b0 == ap_block_pp0_stage26) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage26))) begin
        grp_fu_237_p1 = mult_2_reg_910;
    end else if (((1'b0 == ap_block_pp0_stage18) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage18))) begin
        grp_fu_237_p1 = mult_1_reg_905;
    end else if (((1'b0 == ap_block_pp0_stage10) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        grp_fu_237_p1 = mult_reg_895;
    end else begin
        grp_fu_237_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_241_p0 = bitcast_ln14_6_fu_589_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_241_p0 = bitcast_ln14_4_fu_580_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_241_p0 = bitcast_ln14_2_fu_572_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_241_p0 = bitcast_ln14_fu_563_p1;
        end else begin
            grp_fu_241_p0 = 'bx;
        end
    end else begin
        grp_fu_241_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_241_p1 = bitcast_ln14_7_fu_593_p1;
        end else if (((1'b0 == ap_block_pp0_stage5) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
            grp_fu_241_p1 = bitcast_ln14_5_fu_584_p1;
        end else if (((1'b0 == ap_block_pp0_stage4) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            grp_fu_241_p1 = bitcast_ln14_3_fu_576_p1;
        end else if (((1'b0 == ap_block_pp0_stage3) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            grp_fu_241_p1 = bitcast_ln14_1_fu_567_p1;
        end else begin
            grp_fu_241_p1 = 'bx;
        end
    end else begin
        grp_fu_241_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m1_address0_local = zext_ln14_6_fu_514_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m1_address0_local = zext_ln14_4_fu_408_p1;
        end else begin
            m1_address0_local = 'bx;
        end
    end else begin
        m1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m1_address1_local = zext_ln14_fu_453_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            m1_address1_local = zext_ln14_2_fu_377_p1;
        end else begin
            m1_address1_local = 'bx;
        end
    end else begin
        m1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m1_ce0_local = 1'b1;
    end else begin
        m1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)))) begin
        m1_ce1_local = 1'b1;
    end else begin
        m1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_address0_local = zext_ln14_7_fu_559_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_address0_local = zext_ln14_3_fu_482_p1;
        end else begin
            m2_address0_local = 'bx;
        end
    end else begin
        m2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            m2_address1_local = zext_ln14_5_fu_555_p1;
        end else if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            m2_address1_local = zext_ln14_1_fu_464_p1;
        end else begin
            m2_address1_local = 'bx;
        end
    end else begin
        m2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_ce0_local = 1'b1;
    end else begin
        m2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        m2_ce1_local = 1'b1;
    end else begin
        m2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_ce0_local = 1'b1;
    end else begin
        prod_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage10_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (tmp_reg_811_pp0_iter1_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage10))) begin
        prod_we0_local = 1'b1;
    end else begin
        prod_we0_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage10))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage12;
            end
        end
        ap_ST_fsm_pp0_stage13 : begin
            if ((1'b0 == ap_block_pp0_stage13_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage13;
            end
        end
        ap_ST_fsm_pp0_stage14 : begin
            if ((1'b0 == ap_block_pp0_stage14_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage14;
            end
        end
        ap_ST_fsm_pp0_stage15 : begin
            if ((1'b0 == ap_block_pp0_stage15_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        ap_ST_fsm_pp0_stage16 : begin
            if ((1'b0 == ap_block_pp0_stage16_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage16;
            end
        end
        ap_ST_fsm_pp0_stage17 : begin
            if ((1'b0 == ap_block_pp0_stage17_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage17;
            end
        end
        ap_ST_fsm_pp0_stage18 : begin
            if ((1'b0 == ap_block_pp0_stage18_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage18;
            end
        end
        ap_ST_fsm_pp0_stage19 : begin
            if ((1'b0 == ap_block_pp0_stage19_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage19;
            end
        end
        ap_ST_fsm_pp0_stage20 : begin
            if ((1'b0 == ap_block_pp0_stage20_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage20;
            end
        end
        ap_ST_fsm_pp0_stage21 : begin
            if ((1'b0 == ap_block_pp0_stage21_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage21;
            end
        end
        ap_ST_fsm_pp0_stage22 : begin
            if ((1'b0 == ap_block_pp0_stage22_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage22;
            end
        end
        ap_ST_fsm_pp0_stage23 : begin
            if ((1'b0 == ap_block_pp0_stage23_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage23;
            end
        end
        ap_ST_fsm_pp0_stage24 : begin
            if ((1'b0 == ap_block_pp0_stage24_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage24;
            end
        end
        ap_ST_fsm_pp0_stage25 : begin
            if ((1'b0 == ap_block_pp0_stage25_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage25;
            end
        end
        ap_ST_fsm_pp0_stage26 : begin
            if ((1'b0 == ap_block_pp0_stage26_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage26;
            end
        end
        ap_ST_fsm_pp0_stage27 : begin
            if ((1'b0 == ap_block_pp0_stage27_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage27;
            end
        end
        ap_ST_fsm_pp0_stage28 : begin
            if ((1'b0 == ap_block_pp0_stage28_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage28;
            end
        end
        ap_ST_fsm_pp0_stage29 : begin
            if ((1'b0 == ap_block_pp0_stage29_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage29;
            end
        end
        ap_ST_fsm_pp0_stage30 : begin
            if ((1'b0 == ap_block_pp0_stage30_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage30;
            end
        end
        ap_ST_fsm_pp0_stage31 : begin
            if ((1'b0 == ap_block_pp0_stage31_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage31;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln14_1_fu_458_p3 = {{tmp_1_reg_749}, {j_reg_737}};
assign add_ln14_2_fu_367_p4 = {{{empty_fu_353_p1}, {tmp_1_fu_357_p4}}, {1'd1}};
assign add_ln14_3_fu_476_p2 = (or_ln_fu_469_p3 + zext_ln9_fu_441_p1);
assign add_ln14_4_fu_396_p5 = {{{{empty_fu_353_p1}, {tmp_6_fu_382_p4}}, {1'd1}}, {trunc_ln14_fu_392_p1}};
assign add_ln14_5_fu_493_p2 = (add_ln14_8_fu_487_p2 + zext_ln9_fu_441_p1);
assign add_ln14_6_fu_506_p4 = {{{empty_reg_743}, {tmp_6_reg_760}}, {2'd3}};
assign add_ln14_7_fu_519_p2 = (or_ln13_1_fu_499_p3 + zext_ln9_fu_441_p1);
assign add_ln14_8_fu_487_p2 = (or_ln_fu_469_p3 + 12'd64);
assign add_ln14_fu_447_p2 = (zext_ln12_fu_444_p1 + tmp_3_fu_434_p3);
assign add_ln17_fu_544_p2 = (zext_ln9_fu_441_p1 + tmp_3_fu_434_p3);
assign add_ln8_1_fu_622_p2 = (indvar_flatten1316_fu_94 + 16'd1);
assign add_ln8_fu_413_p2 = (i_fu_323_p3 + 7'd1);
assign add_ln9_1_fu_628_p2 = (indvar_flatten18_fu_102 + 12'd1);
assign add_ln9_fu_331_p2 = (select_ln4_fu_301_p3 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage10 = ap_CS_fsm[32'd10];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage17 = ap_CS_fsm[32'd17];
assign ap_CS_fsm_pp0_stage18 = ap_CS_fsm[32'd18];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage25 = ap_CS_fsm[32'd25];
assign ap_CS_fsm_pp0_stage26 = ap_CS_fsm[32'd26];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage31 = ap_CS_fsm[32'd31];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage9 = ap_CS_fsm[32'd9];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage16_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage17_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage18_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage19_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage20_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage21_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage22_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage23_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage24_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage25_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage26_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage27_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage28_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage29_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage30_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage31_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_387 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
always @ (*) begin
    ap_condition_920 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8_reg_925 == 1'd0));
end
always @ (*) begin
    ap_condition_929 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (icmp_ln8_reg_925 == 1'd0));
end
always @ (*) begin
    ap_condition_933 = ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage31;
assign ap_ready = ap_ready_sig;
assign bitcast_ln14_1_fu_567_p1 = reg_245;
assign bitcast_ln14_2_fu_572_p1 = m1_load_1_reg_781;
assign bitcast_ln14_3_fu_576_p1 = m2_load_1_reg_830;
assign bitcast_ln14_4_fu_580_p1 = m1_load_2_reg_791;
assign bitcast_ln14_5_fu_584_p1 = reg_245;
assign bitcast_ln14_6_fu_589_p1 = m1_load_3_reg_840;
assign bitcast_ln14_7_fu_593_p1 = m2_load_3_reg_860;
assign bitcast_ln14_fu_563_p1 = m1_load_reg_825;
assign bitcast_ln17_fu_668_p1 = grp_fu_237_p2;
assign empty_fu_353_p1 = i_fu_323_p3[5:0];
assign i_fu_323_p3 = ((ap_phi_mux_icmp_ln923_phi_fu_219_p4[0:0] == 1'b1) ? ap_sig_allocacmp_add_ln824_load : ap_sig_allocacmp_i17_load);
assign icmp_ln8_fu_648_p2 = ((indvar_flatten1316_fu_94 == 16'd65535) ? 1'b1 : 1'b0);
assign icmp_ln9_fu_642_p2 = ((select_ln9_1_fu_634_p3 == 12'd1024) ? 1'b1 : 1'b0);
assign j_fu_345_p3 = ((or_ln4_fu_317_p2[0:0] == 1'b1) ? select_ln4_fu_301_p3 : add_ln9_fu_331_p2);
assign k_fu_525_p2 = (k_mid2_reg_731 + 7'd4);
assign k_mid2_fu_337_p3 = ((or_ln4_fu_317_p2[0:0] == 1'b1) ? select_ln4_1_fu_309_p3 : 7'd0);
assign m1_address0 = m1_address0_local;
assign m1_address1 = m1_address1_local;
assign m1_ce0 = m1_ce0_local;
assign m1_ce1 = m1_ce1_local;
assign m2_address0 = m2_address0_local;
assign m2_address1 = m2_address1_local;
assign m2_ce0 = m2_ce0_local;
assign m2_ce1 = m2_ce1_local;
assign or_ln13_1_fu_499_p3 = {{tmp_6_reg_760}, {8'd192}};
assign or_ln4_fu_317_p2 = (ap_phi_mux_icmp_ln923_phi_fu_219_p4 | ap_phi_mux_icmp_ln1222_phi_fu_230_p4);
assign or_ln_fu_469_p3 = {{tmp_1_reg_749}, {7'd64}};
assign prod_address0 = prod_addr_reg_934;
assign prod_ce0 = prod_ce0_local;
assign prod_d0 = bitcast_ln17_reg_929;
assign prod_we0 = prod_we0_local;
assign select_ln4_1_fu_309_p3 = ((ap_phi_mux_icmp_ln923_phi_fu_219_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_k20_load);
assign select_ln4_2_fu_600_p3 = ((icmp_ln923_reg_216[0:0] == 1'b1) ? 64'd0 : sum21_fu_114);
assign select_ln4_fu_301_p3 = ((ap_phi_mux_icmp_ln923_phi_fu_219_p4[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_j19_load);
assign select_ln9_1_fu_634_p3 = ((icmp_ln923_reg_216[0:0] == 1'b1) ? 12'd1 : add_ln9_1_fu_628_p2);
assign sum_mid2_fu_608_p3 = ((or_ln4_reg_726[0:0] == 1'b1) ? select_ln4_2_fu_600_p3 : 64'd0);
assign tmp_1_fu_357_p4 = {{k_mid2_fu_337_p3[5:1]}};
assign tmp_3_fu_434_p3 = {{empty_reg_743}, {6'd0}};
assign tmp_6_fu_382_p4 = {{k_mid2_fu_337_p3[5:2]}};
assign tmp_fu_530_p3 = k_fu_525_p2[32'd6];
assign trunc_ln14_fu_392_p1 = k_mid2_fu_337_p3[0:0];
assign xor_ln12_fu_538_p2 = (tmp_fu_530_p3 ^ 1'd1);
assign zext_ln12_fu_444_p1 = k_mid2_reg_731;
assign zext_ln14_1_fu_464_p1 = add_ln14_1_fu_458_p3;
assign zext_ln14_2_fu_377_p1 = add_ln14_2_fu_367_p4;
assign zext_ln14_3_fu_482_p1 = add_ln14_3_fu_476_p2;
assign zext_ln14_4_fu_408_p1 = add_ln14_4_fu_396_p5;
assign zext_ln14_5_fu_555_p1 = add_ln14_5_reg_796;
assign zext_ln14_6_fu_514_p1 = add_ln14_6_fu_506_p4;
assign zext_ln14_7_fu_559_p1 = add_ln14_7_reg_806;
assign zext_ln14_fu_453_p1 = add_ln14_fu_447_p2;
assign zext_ln17_fu_664_p1 = add_ln17_reg_820_pp0_iter1_reg;
assign zext_ln9_fu_441_p1 = j_reg_737;
endmodule 
