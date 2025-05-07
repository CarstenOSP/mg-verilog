module backprop_backprop_Pipeline_label_20 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v14_5_reload,v14_3_reload,mul_ln168_1,v7_0_address0,v7_0_ce0,v7_0_q0,v7_1_address0,v7_1_ce0,v7_1_q0,v7_2_address0,v7_2_ce0,v7_2_q0,v7_3_address0,v7_3_ce0,v7_3_q0,v15_5_reload,v15_3_reload,mul_ln192,v2_address0,v2_ce0,v2_q0,v2_address1,v2_ce1,v2_q1,v14_10_reload,v15_10_reload,v122_out,v122_out_ap_vld,grp_fu_12484_p_din0,grp_fu_12484_p_din1,grp_fu_12484_p_opcode,grp_fu_12484_p_dout0,grp_fu_12484_p_ce,grp_fu_12496_p_din0,grp_fu_12496_p_din1,grp_fu_12496_p_dout0,grp_fu_12496_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 16'd1;
parameter    ap_ST_fsm_pp0_stage1 = 16'd2;
parameter    ap_ST_fsm_pp0_stage2 = 16'd4;
parameter    ap_ST_fsm_pp0_stage3 = 16'd8;
parameter    ap_ST_fsm_pp0_stage4 = 16'd16;
parameter    ap_ST_fsm_pp0_stage5 = 16'd32;
parameter    ap_ST_fsm_pp0_stage6 = 16'd64;
parameter    ap_ST_fsm_pp0_stage7 = 16'd128;
parameter    ap_ST_fsm_pp0_stage8 = 16'd256;
parameter    ap_ST_fsm_pp0_stage9 = 16'd512;
parameter    ap_ST_fsm_pp0_stage10 = 16'd1024;
parameter    ap_ST_fsm_pp0_stage11 = 16'd2048;
parameter    ap_ST_fsm_pp0_stage12 = 16'd4096;
parameter    ap_ST_fsm_pp0_stage13 = 16'd8192;
parameter    ap_ST_fsm_pp0_stage14 = 16'd16384;
parameter    ap_ST_fsm_pp0_stage15 = 16'd32768;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] v14_5_reload;
input  [63:0] v14_3_reload;
input  [8:0] mul_ln168_1;
output  [6:0] v7_0_address0;
output   v7_0_ce0;
input  [63:0] v7_0_q0;
output  [6:0] v7_1_address0;
output   v7_1_ce0;
input  [63:0] v7_1_q0;
output  [6:0] v7_2_address0;
output   v7_2_ce0;
input  [63:0] v7_2_q0;
output  [6:0] v7_3_address0;
output   v7_3_ce0;
input  [63:0] v7_3_q0;
input  [63:0] v15_5_reload;
input  [63:0] v15_3_reload;
input  [7:0] mul_ln192;
output  [7:0] v2_address0;
output   v2_ce0;
input  [63:0] v2_q0;
output  [7:0] v2_address1;
output   v2_ce1;
input  [63:0] v2_q1;
input  [63:0] v14_10_reload;
input  [63:0] v15_10_reload;
output  [63:0] v122_out;
output   v122_out_ap_vld;
output  [63:0] grp_fu_12484_p_din0;
output  [63:0] grp_fu_12484_p_din1;
output  [1:0] grp_fu_12484_p_opcode;
input  [63:0] grp_fu_12484_p_dout0;
output   grp_fu_12484_p_ce;
output  [63:0] grp_fu_12496_p_din0;
output  [63:0] grp_fu_12496_p_din1;
input  [63:0] grp_fu_12496_p_dout0;
output   grp_fu_12496_p_ce;
reg ap_idle;
reg v122_out_ap_vld;
(* fsm_encoding = "none" *) reg   [15:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage15;
wire    ap_block_pp0_stage15_subdone;
reg   [0:0] icmp_ln192_reg_720;
reg    ap_condition_exit_pp0_iter0_stage15;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [63:0] reg_279;
wire    ap_CS_fsm_pp0_stage12;
wire    ap_block_pp0_stage12_11001;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_block_pp0_stage0_11001;
reg   [1:0] v111_1_reg_691;
wire   [8:0] add_ln194_fu_302_p2;
reg   [8:0] add_ln194_reg_699;
reg   [0:0] tmp_reg_705;
reg   [1:0] trunc_ln9_reg_710;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [1:0] or_ln2_fu_341_p3;
reg   [1:0] or_ln2_reg_715;
wire   [0:0] icmp_ln192_fu_348_p2;
reg   [0:0] icmp_ln192_reg_720_pp0_iter1_reg;
reg   [0:0] icmp_ln192_reg_720_pp0_iter2_reg;
wire   [8:0] add_ln194_1_fu_358_p2;
reg   [8:0] add_ln194_1_reg_724;
reg   [1:0] trunc_ln194_1_reg_730;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [0:0] icmp_ln193_fu_396_p2;
reg   [0:0] icmp_ln193_reg_755;
wire    ap_CS_fsm_pp0_stage13;
wire    ap_block_pp0_stage13_11001;
wire   [63:0] v113_fu_417_p11;
reg   [63:0] v113_reg_761;
wire   [63:0] v112_fu_448_p3;
wire    ap_CS_fsm_pp0_stage14;
wire    ap_block_pp0_stage14_11001;
wire   [63:0] v113_1_fu_470_p11;
reg   [63:0] v113_1_reg_791;
reg   [63:0] v2_load_reg_806;
reg   [63:0] v2_load_1_reg_811;
wire   [0:0] xor_ln196_2_fu_560_p2;
reg   [0:0] xor_ln196_2_reg_816;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
wire   [62:0] trunc_ln196_fu_566_p1;
reg   [62:0] trunc_ln196_reg_821;
wire   [63:0] v116_fu_570_p3;
reg   [63:0] v116_reg_826;
wire   [63:0] v115_fu_581_p1;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_11001;
wire   [0:0] xor_ln196_fu_598_p2;
reg   [0:0] xor_ln196_reg_836;
wire   [62:0] trunc_ln196_1_fu_604_p1;
reg   [62:0] trunc_ln196_1_reg_841;
wire   [63:0] v115_1_fu_614_p1;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_11001;
wire   [63:0] v118_fu_619_p1;
reg   [63:0] v117_1_reg_856;
wire   [63:0] v118_1_fu_623_p1;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg   [63:0] v119_1_reg_871;
reg   [63:0] v121_2_reg_876;
wire    ap_CS_fsm_pp0_stage11;
wire    ap_block_pp0_stage11_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage11_subdone;
reg    ap_condition_exit_pp0_iter2_stage11;
wire    ap_block_pp0_stage3_subdone;
wire   [63:0] zext_ln194_fu_388_p1;
wire    ap_block_pp0_stage12;
wire   [63:0] zext_ln194_1_fu_440_p1;
wire    ap_block_pp0_stage13;
wire   [63:0] zext_ln199_fu_530_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln199_1_fu_543_p1;
reg   [63:0] v120_fu_98;
wire    ap_loop_init;
wire    ap_block_pp0_stage4;
reg   [1:0] v111_fu_102;
wire   [1:0] xor_ln7_fu_509_p3;
wire    ap_block_pp0_stage15_11001;
reg   [1:0] ap_sig_allocacmp_v111_1;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
wire    ap_block_pp0_stage11_01001;
reg    v7_0_ce0_local;
reg   [6:0] v7_0_address0_local;
reg    v7_1_ce0_local;
reg   [6:0] v7_1_address0_local;
reg    v7_2_ce0_local;
reg   [6:0] v7_2_address0_local;
reg    v7_3_ce0_local;
reg   [6:0] v7_3_address0_local;
reg    v2_ce1_local;
reg    v2_ce0_local;
reg   [63:0] grp_fu_270_p0;
reg   [63:0] grp_fu_270_p1;
wire    ap_block_pp0_stage14;
wire    ap_block_pp0_stage15;
reg   [63:0] grp_fu_275_p0;
reg   [63:0] grp_fu_275_p1;
wire    ap_block_pp0_stage6;
wire    ap_block_pp0_stage7;
wire   [8:0] zext_ln192_1_fu_298_p1;
wire   [8:0] grp_fu_308_p0;
wire   [7:0] grp_fu_308_p1;
wire    ap_block_pp0_stage1;
wire   [8:0] mul_ln194_fu_325_p0;
wire   [10:0] mul_ln194_fu_325_p1;
wire   [18:0] mul_ln194_fu_325_p2;
wire   [8:0] zext_ln192_3_fu_354_p1;
wire   [8:0] grp_fu_363_p0;
wire   [7:0] grp_fu_363_p1;
wire    ap_block_pp0_stage2;
wire   [8:0] mul_ln194_1_fu_372_p0;
wire   [10:0] mul_ln194_1_fu_372_p1;
wire   [18:0] mul_ln194_1_fu_372_p2;
wire   [8:0] grp_fu_308_p2;
wire   [63:0] v113_fu_417_p2;
wire   [63:0] v113_fu_417_p4;
wire   [63:0] v113_fu_417_p6;
wire   [63:0] v113_fu_417_p8;
wire   [63:0] v113_fu_417_p9;
wire   [8:0] grp_fu_363_p2;
wire   [63:0] v113_1_fu_470_p2;
wire   [63:0] v113_1_fu_470_p4;
wire   [63:0] v113_1_fu_470_p6;
wire   [63:0] v113_1_fu_470_p8;
wire   [63:0] v113_1_fu_470_p9;
wire   [0:0] bit_sel2_fu_493_p3;
wire   [0:0] xor_ln192_fu_500_p2;
wire   [0:0] trunc_ln192_fu_506_p1;
wire   [7:0] zext_ln192_fu_522_p1;
wire   [7:0] add_ln199_fu_525_p2;
wire   [7:0] zext_ln192_2_fu_535_p1;
wire   [7:0] add_ln199_1_fu_538_p2;
wire    ap_block_pp0_stage5;
wire   [63:0] bitcast_ln196_fu_548_p1;
wire   [0:0] bit_sel_fu_552_p3;
wire   [63:0] xor_ln6_fu_575_p3;
wire   [63:0] bitcast_ln196_2_fu_586_p1;
wire   [0:0] bit_sel1_fu_590_p3;
wire   [63:0] xor_ln196_1_fu_608_p3;
reg   [1:0] grp_fu_270_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage12_00001;
wire    ap_block_pp0_stage14_00001;
wire    ap_block_pp0_stage15_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [15:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_block_pp0_stage7_subdone;
wire    ap_block_pp0_stage8_subdone;
wire    ap_block_pp0_stage9_subdone;
wire    ap_block_pp0_stage10_subdone;
wire    ap_block_pp0_stage12_subdone;
wire    ap_block_pp0_stage13_subdone;
wire    ap_block_pp0_stage14_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [18:0] mul_ln194_1_fu_372_p00;
wire   [18:0] mul_ln194_fu_325_p00;
wire   [1:0] v113_fu_417_p1;
wire   [1:0] v113_fu_417_p3;
wire  signed [1:0] v113_fu_417_p5;
wire  signed [1:0] v113_fu_417_p7;
wire   [1:0] v113_1_fu_470_p1;
wire   [1:0] v113_1_fu_470_p3;
wire  signed [1:0] v113_1_fu_470_p5;
wire  signed [1:0] v113_1_fu_470_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 16'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v120_fu_98 = 64'd0;
#0 v111_fu_102 = 2'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_9ns_8ns_9_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 8 ),.dout_WIDTH( 9 ))
urem_9ns_8ns_9_13_1_U1060(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_308_p0),.din1(grp_fu_308_p1),.ce(1'b1),.dout(grp_fu_308_p2));
backprop_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U1061(.din0(mul_ln194_fu_325_p0),.din1(mul_ln194_fu_325_p1),.dout(mul_ln194_fu_325_p2));
backprop_urem_9ns_8ns_9_13_1 #(.ID( 1 ),.NUM_STAGE( 13 ),.din0_WIDTH( 9 ),.din1_WIDTH( 8 ),.dout_WIDTH( 9 ))
urem_9ns_8ns_9_13_1_U1062(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_363_p0),.din1(grp_fu_363_p1),.ce(1'b1),.dout(grp_fu_363_p2));
backprop_mul_9ns_11ns_19_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 9 ),.din1_WIDTH( 11 ),.dout_WIDTH( 19 ))
mul_9ns_11ns_19_1_1_U1063(.din0(mul_ln194_1_fu_372_p0),.din1(mul_ln194_1_fu_372_p1),.dout(mul_ln194_1_fu_372_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U1064(.din0(v113_fu_417_p2),.din1(v113_fu_417_p4),.din2(v113_fu_417_p6),.din3(v113_fu_417_p8),.def(v113_fu_417_p9),.sel(trunc_ln9_reg_710),.dout(v113_fu_417_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U1065(.din0(v113_1_fu_470_p2),.din1(v113_1_fu_470_p4),.din2(v113_1_fu_470_p6),.din3(v113_1_fu_470_p8),.def(v113_1_fu_470_p9),.sel(trunc_ln194_1_reg_730),.dout(v113_1_fu_470_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage15),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
        if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter2_stage11)) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage3_subdone) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
            ap_enable_reg_pp0_iter3 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage15_subdone) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage11))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage11))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage15_11001) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v111_fu_102 <= 2'd0;
    end else if (((icmp_ln192_reg_720 == 1'd0) & (1'b0 == ap_block_pp0_stage15_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        v111_fu_102 <= xor_ln7_fu_509_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v120_fu_98 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v120_fu_98 <= grp_fu_12484_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln194_1_reg_724 <= add_ln194_1_fu_358_p2;
        icmp_ln192_reg_720 <= icmp_ln192_fu_348_p2;
        icmp_ln192_reg_720_pp0_iter1_reg <= icmp_ln192_reg_720;
        icmp_ln192_reg_720_pp0_iter2_reg <= icmp_ln192_reg_720_pp0_iter1_reg;
        or_ln2_reg_715[1] <= or_ln2_fu_341_p3[1];
        trunc_ln9_reg_710 <= {{mul_ln194_fu_325_p2[17:16]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln194_reg_699 <= add_ln194_fu_302_p2;
        tmp_reg_705 <= ap_sig_allocacmp_v111_1[32'd1];
        v111_1_reg_691 <= ap_sig_allocacmp_v111_1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        icmp_ln193_reg_755 <= icmp_ln193_fu_396_p2;
        v113_reg_761 <= v113_fu_417_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        reg_279 <= grp_fu_12496_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln194_1_reg_730 <= {{mul_ln194_1_fu_372_p2[17:16]}};
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        trunc_ln196_1_reg_841 <= trunc_ln196_1_fu_604_p1;
        xor_ln196_reg_836 <= xor_ln196_fu_598_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        trunc_ln196_reg_821 <= trunc_ln196_fu_566_p1;
        v116_reg_826 <= v116_fu_570_p3;
        xor_ln196_2_reg_816 <= xor_ln196_2_fu_560_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage14_11001) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        v113_1_reg_791 <= v113_1_fu_470_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
        v117_1_reg_856 <= grp_fu_12496_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v119_1_reg_871 <= grp_fu_12496_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
        v121_2_reg_876 <= grp_fu_12484_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_load_1_reg_811 <= v2_q0;
        v2_load_reg_806 <= v2_q1;
    end
end
always @ (*) begin
    if (((icmp_ln192_reg_720 == 1'd1) & (1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage15 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln192_reg_720_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage11 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage11 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11))) begin
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
    if (((1'b0 == ap_block_pp0_stage15_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v111_1 = 2'd0;
    end else begin
        ap_sig_allocacmp_v111_1 = v111_fu_102;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage14_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14)) | ((icmp_ln192_reg_720 == 1'd0) & (1'b0 == ap_block_pp0_stage15_00001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15)))) begin
        grp_fu_270_opcode = 2'd1;
    end else if ((((1'b0 == ap_block_pp0_stage12_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12) & (icmp_ln192_reg_720_pp0_iter2_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4)))) begin
        grp_fu_270_opcode = 2'd0;
    end else begin
        grp_fu_270_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_270_p0 = v121_2_reg_876;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_270_p0 = v120_fu_98;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_270_p0 = v14_10_reload;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_270_p0 = v112_fu_448_p3;
    end else begin
        grp_fu_270_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage12) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
        grp_fu_270_p1 = v119_1_reg_871;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_270_p1 = reg_279;
    end else if (((1'b0 == ap_block_pp0_stage15) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage15))) begin
        grp_fu_270_p1 = v113_1_reg_791;
    end else if (((1'b0 == ap_block_pp0_stage14) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
        grp_fu_270_p1 = v113_reg_761;
    end else begin
        grp_fu_270_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_275_p0 = v117_1_reg_856;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_275_p0 = reg_279;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_275_p0 = v115_1_fu_614_p1;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_275_p0 = v115_fu_581_p1;
        end else begin
            grp_fu_275_p0 = 'bx;
        end
    end else begin
        grp_fu_275_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage14) & (1'b1 == ap_CS_fsm_pp0_stage14))) begin
            grp_fu_275_p1 = v118_1_fu_623_p1;
        end else if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            grp_fu_275_p1 = v118_fu_619_p1;
        end else if (((1'b0 == ap_block_pp0_stage7) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            grp_fu_275_p1 = v15_10_reload;
        end else if (((1'b0 == ap_block_pp0_stage6) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            grp_fu_275_p1 = v116_reg_826;
        end else begin
            grp_fu_275_p1 = 'bx;
        end
    end else begin
        grp_fu_275_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage11_11001) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage11) & (icmp_ln192_reg_720_pp0_iter2_reg == 1'd1))) begin
        v122_out_ap_vld = 1'b1;
    end else begin
        v122_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_ce1_local = 1'b1;
    end else begin
        v2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v7_0_address0_local = zext_ln194_1_fu_440_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v7_0_address0_local = zext_ln194_fu_388_p1;
        end else begin
            v7_0_address0_local = 'bx;
        end
    end else begin
        v7_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v7_0_ce0_local = 1'b1;
    end else begin
        v7_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v7_1_address0_local = zext_ln194_1_fu_440_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v7_1_address0_local = zext_ln194_fu_388_p1;
        end else begin
            v7_1_address0_local = 'bx;
        end
    end else begin
        v7_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v7_1_ce0_local = 1'b1;
    end else begin
        v7_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v7_2_address0_local = zext_ln194_1_fu_440_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v7_2_address0_local = zext_ln194_fu_388_p1;
        end else begin
            v7_2_address0_local = 'bx;
        end
    end else begin
        v7_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v7_2_ce0_local = 1'b1;
    end else begin
        v7_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage13) & (1'b1 == ap_CS_fsm_pp0_stage13))) begin
            v7_3_address0_local = zext_ln194_1_fu_440_p1;
        end else if (((1'b0 == ap_block_pp0_stage12) & (1'b1 == ap_CS_fsm_pp0_stage12))) begin
            v7_3_address0_local = zext_ln194_fu_388_p1;
        end else begin
            v7_3_address0_local = 'bx;
        end
    end else begin
        v7_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage13_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage13)) | ((1'b0 == ap_block_pp0_stage12_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage12)))) begin
        v7_3_ce0_local = 1'b1;
    end else begin
        v7_3_ce0_local = 1'b0;
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
            if ((1'b0 == ap_block_pp0_stage10_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage11;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage10;
            end
        end
        ap_ST_fsm_pp0_stage11 : begin
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage11))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage11_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage15;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln194_1_fu_358_p2 = (zext_ln192_3_fu_354_p1 + mul_ln168_1);
assign add_ln194_fu_302_p2 = (zext_ln192_1_fu_298_p1 + mul_ln168_1);
assign add_ln199_1_fu_538_p2 = (zext_ln192_2_fu_535_p1 + mul_ln192);
assign add_ln199_fu_525_p2 = (zext_ln192_fu_522_p1 + mul_ln192);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage11 = ap_CS_fsm[32'd11];
assign ap_CS_fsm_pp0_stage12 = ap_CS_fsm[32'd12];
assign ap_CS_fsm_pp0_stage13 = ap_CS_fsm[32'd13];
assign ap_CS_fsm_pp0_stage14 = ap_CS_fsm[32'd14];
assign ap_CS_fsm_pp0_stage15 = ap_CS_fsm[32'd15];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage10_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage11_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage12_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage13_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage14_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage15_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage8_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage9_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage15;
assign ap_ready = ap_ready_sig;
assign bit_sel1_fu_590_p3 = bitcast_ln196_2_fu_586_p1[64'd63];
assign bit_sel2_fu_493_p3 = v111_1_reg_691[2'd1];
assign bit_sel_fu_552_p3 = bitcast_ln196_fu_548_p1[64'd63];
assign bitcast_ln196_2_fu_586_p1 = grp_fu_12484_p_dout0;
assign bitcast_ln196_fu_548_p1 = grp_fu_12484_p_dout0;
assign grp_fu_12484_p_ce = 1'b1;
assign grp_fu_12484_p_din0 = grp_fu_270_p0;
assign grp_fu_12484_p_din1 = grp_fu_270_p1;
assign grp_fu_12484_p_opcode = grp_fu_270_opcode;
assign grp_fu_12496_p_ce = 1'b1;
assign grp_fu_12496_p_din0 = grp_fu_275_p0;
assign grp_fu_12496_p_din1 = grp_fu_275_p1;
assign grp_fu_308_p0 = (zext_ln192_1_fu_298_p1 + mul_ln168_1);
assign grp_fu_308_p1 = 9'd123;
assign grp_fu_363_p0 = (zext_ln192_3_fu_354_p1 + mul_ln168_1);
assign grp_fu_363_p1 = 9'd123;
assign icmp_ln192_fu_348_p2 = ((or_ln2_fu_341_p3 == 2'd3) ? 1'b1 : 1'b0);
assign icmp_ln193_fu_396_p2 = ((v111_1_reg_691 == 2'd2) ? 1'b1 : 1'b0);
assign mul_ln194_1_fu_372_p0 = mul_ln194_1_fu_372_p00;
assign mul_ln194_1_fu_372_p00 = add_ln194_1_reg_724;
assign mul_ln194_1_fu_372_p1 = 19'd533;
assign mul_ln194_fu_325_p0 = mul_ln194_fu_325_p00;
assign mul_ln194_fu_325_p00 = add_ln194_reg_699;
assign mul_ln194_fu_325_p1 = 19'd533;
assign or_ln2_fu_341_p3 = {{tmp_reg_705}, {1'd1}};
assign trunc_ln192_fu_506_p1 = v111_1_reg_691[0:0];
assign trunc_ln196_1_fu_604_p1 = bitcast_ln196_2_fu_586_p1[62:0];
assign trunc_ln196_fu_566_p1 = bitcast_ln196_fu_548_p1[62:0];
assign v112_fu_448_p3 = ((icmp_ln193_reg_755[0:0] == 1'b1) ? v14_5_reload : v14_3_reload);
assign v113_1_fu_470_p2 = v7_0_q0;
assign v113_1_fu_470_p4 = v7_1_q0;
assign v113_1_fu_470_p6 = v7_2_q0;
assign v113_1_fu_470_p8 = v7_3_q0;
assign v113_1_fu_470_p9 = 'bx;
assign v113_fu_417_p2 = v7_0_q0;
assign v113_fu_417_p4 = v7_1_q0;
assign v113_fu_417_p6 = v7_2_q0;
assign v113_fu_417_p8 = v7_3_q0;
assign v113_fu_417_p9 = 'bx;
assign v115_1_fu_614_p1 = xor_ln196_1_fu_608_p3;
assign v115_fu_581_p1 = xor_ln6_fu_575_p3;
assign v116_fu_570_p3 = ((icmp_ln193_reg_755[0:0] == 1'b1) ? v15_5_reload : v15_3_reload);
assign v118_1_fu_623_p1 = v2_load_1_reg_811;
assign v118_fu_619_p1 = v2_load_reg_806;
assign v122_out = grp_fu_12484_p_dout0;
assign v2_address0 = zext_ln199_1_fu_543_p1;
assign v2_address1 = zext_ln199_fu_530_p1;
assign v2_ce0 = v2_ce0_local;
assign v2_ce1 = v2_ce1_local;
assign v7_0_address0 = v7_0_address0_local;
assign v7_0_ce0 = v7_0_ce0_local;
assign v7_1_address0 = v7_1_address0_local;
assign v7_1_ce0 = v7_1_ce0_local;
assign v7_2_address0 = v7_2_address0_local;
assign v7_2_ce0 = v7_2_ce0_local;
assign v7_3_address0 = v7_3_address0_local;
assign v7_3_ce0 = v7_3_ce0_local;
assign xor_ln192_fu_500_p2 = (bit_sel2_fu_493_p3 ^ 1'd1);
assign xor_ln196_1_fu_608_p3 = {{xor_ln196_reg_836}, {trunc_ln196_1_reg_841}};
assign xor_ln196_2_fu_560_p2 = (bit_sel_fu_552_p3 ^ 1'd1);
assign xor_ln196_fu_598_p2 = (bit_sel1_fu_590_p3 ^ 1'd1);
assign xor_ln6_fu_575_p3 = {{xor_ln196_2_reg_816}, {trunc_ln196_reg_821}};
assign xor_ln7_fu_509_p3 = {{xor_ln192_fu_500_p2}, {trunc_ln192_fu_506_p1}};
assign zext_ln192_1_fu_298_p1 = ap_sig_allocacmp_v111_1;
assign zext_ln192_2_fu_535_p1 = or_ln2_reg_715;
assign zext_ln192_3_fu_354_p1 = or_ln2_fu_341_p3;
assign zext_ln192_fu_522_p1 = v111_1_reg_691;
assign zext_ln194_1_fu_440_p1 = grp_fu_363_p2;
assign zext_ln194_fu_388_p1 = grp_fu_308_p2;
assign zext_ln199_1_fu_543_p1 = add_ln199_1_fu_538_p2;
assign zext_ln199_fu_530_p1 = add_ln199_fu_525_p2;
always @ (posedge ap_clk) begin
    or_ln2_reg_715[0] <= 1'b1;
end
endmodule 