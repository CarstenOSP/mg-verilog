
module backprop_backprop_Pipeline_label_10_label_11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v18_2_load_1,v18_load_1,v18_1_load_1,v2_0_address0,v2_0_ce0,v2_0_q0,v2_1_address0,v2_1_ce0,v2_1_q0,v2_2_address0,v2_2_ce0,v2_2_q0,v2_3_address0,v2_3_ce0,v2_3_q0,v2_4_address0,v2_4_ce0,v2_4_q0,v2_5_address0,v2_5_ce0,v2_5_q0,v2_6_address0,v2_6_ce0,v2_6_q0,v2_7_address0,v2_7_ce0,v2_7_q0,v19_address0,v19_ce0,v19_q0,v19_1_address0,v19_1_ce0,v19_1_q0,v19_2_address0,v19_2_ce0,v19_2_q0,v19_3_address0,v19_3_ce0,v19_3_q0,v18_11_out_i,v18_11_out_o,v18_11_out_o_ap_vld,v18_10_out_i,v18_10_out_o,v18_10_out_o_ap_vld,v18_9_out_i,v18_9_out_o,v18_9_out_o_ap_vld,grp_fu_2831_p_din0,grp_fu_2831_p_din1,grp_fu_2831_p_opcode,grp_fu_2831_p_dout0,grp_fu_2831_p_ce,grp_fu_2849_p_din0,grp_fu_2849_p_din1,grp_fu_2849_p_dout0,grp_fu_2849_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 8'd1;
parameter    ap_ST_fsm_pp0_stage1 = 8'd2;
parameter    ap_ST_fsm_pp0_stage2 = 8'd4;
parameter    ap_ST_fsm_pp0_stage3 = 8'd8;
parameter    ap_ST_fsm_pp0_stage4 = 8'd16;
parameter    ap_ST_fsm_pp0_stage5 = 8'd32;
parameter    ap_ST_fsm_pp0_stage6 = 8'd64;
parameter    ap_ST_fsm_pp0_stage7 = 8'd128;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [63:0] v18_2_load_1;
input  [63:0] v18_load_1;
input  [63:0] v18_1_load_1;
output  [4:0] v2_0_address0;
output   v2_0_ce0;
input  [63:0] v2_0_q0;
output  [4:0] v2_1_address0;
output   v2_1_ce0;
input  [63:0] v2_1_q0;
output  [4:0] v2_2_address0;
output   v2_2_ce0;
input  [63:0] v2_2_q0;
output  [4:0] v2_3_address0;
output   v2_3_ce0;
input  [63:0] v2_3_q0;
output  [4:0] v2_4_address0;
output   v2_4_ce0;
input  [63:0] v2_4_q0;
output  [4:0] v2_5_address0;
output   v2_5_ce0;
input  [63:0] v2_5_q0;
output  [4:0] v2_6_address0;
output   v2_6_ce0;
input  [63:0] v2_6_q0;
output  [4:0] v2_7_address0;
output   v2_7_ce0;
input  [63:0] v2_7_q0;
output  [3:0] v19_address0;
output   v19_ce0;
input  [63:0] v19_q0;
output  [3:0] v19_1_address0;
output   v19_1_ce0;
input  [63:0] v19_1_q0;
output  [3:0] v19_2_address0;
output   v19_2_ce0;
input  [63:0] v19_2_q0;
output  [3:0] v19_3_address0;
output   v19_3_ce0;
input  [63:0] v19_3_q0;
input  [63:0] v18_11_out_i;
output  [63:0] v18_11_out_o;
output   v18_11_out_o_ap_vld;
input  [63:0] v18_10_out_i;
output  [63:0] v18_10_out_o;
output   v18_10_out_o_ap_vld;
input  [63:0] v18_9_out_i;
output  [63:0] v18_9_out_o;
output   v18_9_out_o_ap_vld;
output  [63:0] grp_fu_2831_p_din0;
output  [63:0] grp_fu_2831_p_din1;
output  [0:0] grp_fu_2831_p_opcode;
input  [63:0] grp_fu_2831_p_dout0;
output   grp_fu_2831_p_ce;
output  [63:0] grp_fu_2849_p_din0;
output  [63:0] grp_fu_2849_p_din1;
input  [63:0] grp_fu_2849_p_dout0;
output   grp_fu_2849_p_ce;
reg ap_idle;
reg[63:0] v18_11_out_o;
reg v18_11_out_o_ap_vld;
reg[63:0] v18_10_out_o;
reg v18_10_out_o_ap_vld;
reg[63:0] v18_9_out_o;
reg v18_9_out_o_ap_vld;
(* fsm_encoding = "none" *) reg   [7:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln122_reg_808;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln122_fu_392_p2;
reg   [0:0] icmp_ln122_reg_808_pp0_iter1_reg;
reg   [0:0] icmp_ln122_reg_808_pp0_iter2_reg;
reg   [6:0] v62_load_reg_812;
wire   [0:0] icmp_ln124_fu_410_p2;
reg   [0:0] icmp_ln124_reg_817;
reg   [0:0] icmp_ln124_reg_817_pp0_iter1_reg;
reg   [0:0] icmp_ln124_reg_817_pp0_iter2_reg;
wire   [1:0] select_ln122_5_fu_422_p3;
reg   [1:0] select_ln122_5_reg_826;
reg   [1:0] select_ln122_5_reg_826_pp0_iter1_reg;
reg   [1:0] select_ln122_5_reg_826_pp0_iter2_reg;
reg   [1:0] select_ln122_5_reg_826_pp0_iter3_reg;
wire   [1:0] trunc_ln124_fu_457_p1;
reg   [1:0] trunc_ln124_reg_831;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] trunc_ln124_reg_831_pp0_iter1_reg;
reg   [3:0] lshr_ln4_reg_836;
wire   [7:0] add_ln125_fu_471_p2;
reg   [7:0] add_ln125_reg_841;
wire   [0:0] icmp_ln124_1_fu_489_p2;
reg   [0:0] icmp_ln124_1_reg_847;
reg   [0:0] icmp_ln124_1_reg_847_pp0_iter1_reg;
reg   [0:0] icmp_ln124_1_reg_847_pp0_iter2_reg;
reg   [0:0] icmp_ln124_1_reg_847_pp0_iter3_reg;
reg   [2:0] trunc_ln7_reg_851;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [2:0] trunc_ln7_reg_851_pp0_iter1_reg;
wire   [63:0] v64_fu_526_p11;
reg   [63:0] v64_reg_876;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
wire   [63:0] v63_fu_593_p19;
reg   [63:0] v63_reg_921;
wire    ap_CS_fsm_pp0_stage5;
wire    ap_block_pp0_stage5_11001;
reg   [63:0] v65_reg_926;
wire   [63:0] select_ln122_1_fu_656_p3;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln124_1_fu_519_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln125_fu_549_p1;
wire    ap_block_pp0_stage4;
wire   [63:0] select_ln122_2_fu_664_p3;
wire    ap_block_pp0_stage5;
wire    ap_loop_init;
wire    ap_block_pp0_stage0;
wire   [63:0] select_ln122_3_fu_671_p3;
wire   [63:0] select_ln122_4_fu_678_p3;
reg   [63:0] v66_fu_126;
reg   [6:0] v62_fu_130;
wire   [6:0] add_ln124_fu_483_p2;
reg   [6:0] ap_sig_allocacmp_v62_load;
reg   [1:0] v61_fu_134;
reg   [1:0] ap_sig_allocacmp_v61_load;
reg   [63:0] v18_fu_138;
reg   [63:0] v18_4_fu_142;
reg   [63:0] v18_5_fu_146;
reg   [7:0] indvar_flatten12_fu_150;
wire   [7:0] add_ln122_fu_398_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten12_load;
reg    v19_ce0_local;
reg    v19_1_ce0_local;
reg    v19_2_ce0_local;
reg    v19_3_ce0_local;
reg    v2_0_ce0_local;
reg    v2_1_ce0_local;
reg    v2_2_ce0_local;
reg    v2_3_ce0_local;
reg    v2_4_ce0_local;
reg    v2_5_ce0_local;
reg    v2_6_ce0_local;
reg    v2_7_ce0_local;
wire    ap_block_pp0_stage6;
wire   [1:0] add_ln122_1_fu_416_p2;
wire   [6:0] select_ln122_fu_440_p3;
wire   [7:0] zext_ln124_fu_453_p1;
wire   [7:0] tmp_s_fu_446_p3;
wire   [7:0] grp_fu_477_p0;
wire   [5:0] grp_fu_477_p1;
wire    ap_block_pp0_stage2;
wire   [7:0] mul_ln125_fu_503_p0;
wire   [9:0] mul_ln125_fu_503_p1;
wire   [16:0] mul_ln125_fu_503_p2;
wire   [63:0] v64_fu_526_p9;
wire   [7:0] grp_fu_477_p2;
wire   [63:0] v63_fu_593_p2;
wire   [63:0] v63_fu_593_p4;
wire   [63:0] v63_fu_593_p6;
wire   [63:0] v63_fu_593_p8;
wire   [63:0] v63_fu_593_p10;
wire   [63:0] v63_fu_593_p12;
wire   [63:0] v63_fu_593_p14;
wire   [63:0] v63_fu_593_p16;
wire   [63:0] v63_fu_593_p17;
wire    ap_block_pp0_stage5_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage7_11001;
reg    ap_condition_exit_pp0_iter2_stage4;
reg    ap_idle_pp0_0to1;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to3;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [16:0] mul_ln125_fu_503_p00;
wire   [1:0] v64_fu_526_p1;
wire   [1:0] v64_fu_526_p3;
wire  signed [1:0] v64_fu_526_p5;
wire  signed [1:0] v64_fu_526_p7;
wire   [2:0] v63_fu_593_p1;
wire   [2:0] v63_fu_593_p3;
wire   [2:0] v63_fu_593_p5;
wire   [2:0] v63_fu_593_p7;
wire  signed [2:0] v63_fu_593_p9;
wire  signed [2:0] v63_fu_593_p11;
wire  signed [2:0] v63_fu_593_p13;
wire  signed [2:0] v63_fu_593_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v66_fu_126 = 64'd0;
#0 v62_fu_130 = 7'd0;
#0 v61_fu_134 = 2'd0;
#0 v18_fu_138 = 64'd0;
#0 v18_4_fu_142 = 64'd0;
#0 v18_5_fu_146 = 64'd0;
#0 indvar_flatten12_fu_150 = 8'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_8ns_6ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.dout_WIDTH( 8 ))
urem_8ns_6ns_8_12_1_U175(.clk(ap_clk),.reset(ap_rst),.din0(grp_fu_477_p0),.din1(grp_fu_477_p1),.ce(1'b1),.dout(grp_fu_477_p2));
backprop_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U176(.din0(mul_ln125_fu_503_p0),.din1(mul_ln125_fu_503_p1),.dout(mul_ln125_fu_503_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U177(.din0(v19_q0),.din1(v19_1_q0),.din2(v19_2_q0),.din3(v19_3_q0),.def(v64_fu_526_p9),.sel(trunc_ln124_reg_831_pp0_iter1_reg),.dout(v64_fu_526_p11));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U178(.din0(v63_fu_593_p2),.din1(v63_fu_593_p4),.din2(v63_fu_593_p6),.din3(v63_fu_593_p8),.din4(v63_fu_593_p10),.din5(v63_fu_593_p12),.din6(v63_fu_593_p14),.din7(v63_fu_593_p16),.def(v63_fu_593_p17),.sel(trunc_ln7_reg_851_pp0_iter1_reg),.dout(v63_fu_593_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage7),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage7)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
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
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln122_fu_392_p2 == 1'd0))) begin
            indvar_flatten12_fu_150 <= add_ln122_fu_398_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten12_fu_150 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_4_fu_142 <= v18_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v18_4_fu_142 <= select_ln122_3_fu_671_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_5_fu_146 <= v18_2_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v18_5_fu_146 <= select_ln122_2_fu_664_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_fu_138 <= v18_1_load_1;
    end else if (((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v18_fu_138 <= select_ln122_4_fu_678_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln122_fu_392_p2 == 1'd0))) begin
            v61_fu_134 <= select_ln122_5_fu_422_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v61_fu_134 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v62_fu_130 <= 7'd0;
    end else if (((icmp_ln122_reg_808 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v62_fu_130 <= add_ln124_fu_483_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_fu_126 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v66_fu_126 <= grp_fu_2831_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln125_reg_841 <= add_ln125_fu_471_p2;
        icmp_ln124_1_reg_847 <= icmp_ln124_1_fu_489_p2;
        icmp_ln124_1_reg_847_pp0_iter1_reg <= icmp_ln124_1_reg_847;
        icmp_ln124_1_reg_847_pp0_iter2_reg <= icmp_ln124_1_reg_847_pp0_iter1_reg;
        icmp_ln124_1_reg_847_pp0_iter3_reg <= icmp_ln124_1_reg_847_pp0_iter2_reg;
        lshr_ln4_reg_836 <= {{select_ln122_fu_440_p3[5:2]}};
        trunc_ln124_reg_831 <= trunc_ln124_fu_457_p1;
        trunc_ln124_reg_831_pp0_iter1_reg <= trunc_ln124_reg_831;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln122_reg_808 <= icmp_ln122_fu_392_p2;
        icmp_ln122_reg_808_pp0_iter1_reg <= icmp_ln122_reg_808;
        icmp_ln122_reg_808_pp0_iter2_reg <= icmp_ln122_reg_808_pp0_iter1_reg;
        icmp_ln124_reg_817 <= icmp_ln124_fu_410_p2;
        icmp_ln124_reg_817_pp0_iter1_reg <= icmp_ln124_reg_817;
        icmp_ln124_reg_817_pp0_iter2_reg <= icmp_ln124_reg_817_pp0_iter1_reg;
        select_ln122_5_reg_826 <= select_ln122_5_fu_422_p3;
        select_ln122_5_reg_826_pp0_iter1_reg <= select_ln122_5_reg_826;
        select_ln122_5_reg_826_pp0_iter2_reg <= select_ln122_5_reg_826_pp0_iter1_reg;
        select_ln122_5_reg_826_pp0_iter3_reg <= select_ln122_5_reg_826_pp0_iter2_reg;
        v62_load_reg_812 <= ap_sig_allocacmp_v62_load;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln7_reg_851 <= {{mul_ln125_fu_503_p2[15:13]}};
        trunc_ln7_reg_851_pp0_iter1_reg <= trunc_ln7_reg_851;
        v64_reg_876 <= v64_fu_526_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage5_11001) & (1'b1 == ap_CS_fsm_pp0_stage5))) begin
        v63_reg_921 <= v63_fu_593_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v65_reg_926 <= grp_fu_2849_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln122_reg_808 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln122_reg_808_pp0_iter2_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter2_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter2_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter2_reg == 1'b1) & (1'b0 == ap_block_pp0_stage4_subdone) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten12_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten12_load = indvar_flatten12_fu_150;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v61_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v61_load = v61_fu_134;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v62_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v62_load = v62_fu_130;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_10_out_o = 'bx;
    end else if (((~(select_ln122_5_reg_826_pp0_iter2_reg == 2'd0) & ~(select_ln122_5_reg_826_pp0_iter2_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_826_pp0_iter2_reg == 2'd1)))) begin
        v18_10_out_o = select_ln122_3_fu_671_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (select_ln122_5_reg_826_pp0_iter3_reg == 2'd0))) begin
        v18_10_out_o = grp_fu_2831_p_dout0;
    end else begin
        v18_10_out_o = v18_10_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_826_pp0_iter2_reg == 2'd0) & ~(select_ln122_5_reg_826_pp0_iter2_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_826_pp0_iter2_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (select_ln122_5_reg_826_pp0_iter3_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_10_out_o_ap_vld = 1'b1;
    end else begin
        v18_10_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_11_out_o = 'bx;
    end else if ((((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_826_pp0_iter2_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_826_pp0_iter2_reg == 2'd1)))) begin
        v18_11_out_o = select_ln122_2_fu_664_p3;
    end else if ((~(select_ln122_5_reg_826_pp0_iter3_reg == 2'd1) & ~(select_ln122_5_reg_826_pp0_iter3_reg == 2'd0) & (1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v18_11_out_o = grp_fu_2831_p_dout0;
    end else begin
        v18_11_out_o = v18_11_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_826_pp0_iter3_reg == 2'd1) & ~(select_ln122_5_reg_826_pp0_iter3_reg == 2'd0) & (1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_826_pp0_iter2_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_826_pp0_iter2_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_11_out_o_ap_vld = 1'b1;
    end else begin
        v18_11_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_9_out_o = 'bx;
    end else if (((~(select_ln122_5_reg_826_pp0_iter2_reg == 2'd0) & ~(select_ln122_5_reg_826_pp0_iter2_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_826_pp0_iter2_reg == 2'd0)))) begin
        v18_9_out_o = select_ln122_4_fu_678_p3;
    end else if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (select_ln122_5_reg_826_pp0_iter3_reg == 2'd1))) begin
        v18_9_out_o = grp_fu_2831_p_dout0;
    end else begin
        v18_9_out_o = v18_9_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_826_pp0_iter2_reg == 2'd0) & ~(select_ln122_5_reg_826_pp0_iter2_reg == 2'd1) & (1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5)) | ((1'b0 == ap_block_pp0_stage5_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter2_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage5) & (select_ln122_5_reg_826_pp0_iter2_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (icmp_ln124_1_reg_847_pp0_iter3_reg == 1'd1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (select_ln122_5_reg_826_pp0_iter3_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_9_out_o_ap_vld = 1'b1;
    end else begin
        v18_9_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_2_ce0_local = 1'b1;
    end else begin
        v19_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_3_ce0_local = 1'b1;
    end else begin
        v19_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_4_ce0_local = 1'b1;
    end else begin
        v2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_5_ce0_local = 1'b1;
    end else begin
        v2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_6_ce0_local = 1'b1;
    end else begin
        v2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v2_7_ce0_local = 1'b1;
    end else begin
        v2_7_ce0_local = 1'b0;
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
            if (((ap_idle_pp0_0to1 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter2_stage4))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage4_subdone)) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln122_1_fu_416_p2 = (ap_sig_allocacmp_v61_load + 2'd1);
assign add_ln122_fu_398_p2 = (ap_sig_allocacmp_indvar_flatten12_load + 8'd1);
assign add_ln124_fu_483_p2 = (select_ln122_fu_440_p3 + 7'd1);
assign add_ln125_fu_471_p2 = (zext_ln124_fu_453_p1 + tmp_s_fu_446_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage5 = ap_CS_fsm[32'd5];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign grp_fu_2831_p_ce = 1'b1;
assign grp_fu_2831_p_din0 = select_ln122_1_fu_656_p3;
assign grp_fu_2831_p_din1 = v65_reg_926;
assign grp_fu_2831_p_opcode = 2'd0;
assign grp_fu_2849_p_ce = 1'b1;
assign grp_fu_2849_p_din0 = v63_reg_921;
assign grp_fu_2849_p_din1 = v64_reg_876;
assign grp_fu_477_p0 = (zext_ln124_fu_453_p1 + tmp_s_fu_446_p3);
assign grp_fu_477_p1 = 8'd24;
assign icmp_ln122_fu_392_p2 = ((ap_sig_allocacmp_indvar_flatten12_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln124_1_fu_489_p2 = ((add_ln124_fu_483_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln124_fu_410_p2 = ((ap_sig_allocacmp_v62_load == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln125_fu_503_p0 = mul_ln125_fu_503_p00;
assign mul_ln125_fu_503_p00 = add_ln125_reg_841;
assign mul_ln125_fu_503_p1 = 17'd342;
assign select_ln122_1_fu_656_p3 = ((icmp_ln124_reg_817_pp0_iter2_reg[0:0] == 1'b1) ? 64'd0 : v66_fu_126);
assign select_ln122_2_fu_664_p3 = ((icmp_ln124_reg_817_pp0_iter2_reg[0:0] == 1'b1) ? v18_11_out_i : v18_5_fu_146);
assign select_ln122_3_fu_671_p3 = ((icmp_ln124_reg_817_pp0_iter2_reg[0:0] == 1'b1) ? v18_10_out_i : v18_4_fu_142);
assign select_ln122_4_fu_678_p3 = ((icmp_ln124_reg_817_pp0_iter2_reg[0:0] == 1'b1) ? v18_9_out_i : v18_fu_138);
assign select_ln122_5_fu_422_p3 = ((icmp_ln124_fu_410_p2[0:0] == 1'b1) ? add_ln122_1_fu_416_p2 : ap_sig_allocacmp_v61_load);
assign select_ln122_fu_440_p3 = ((icmp_ln124_reg_817[0:0] == 1'b1) ? 7'd0 : v62_load_reg_812);
assign tmp_s_fu_446_p3 = {{select_ln122_5_reg_826}, {6'd0}};
assign trunc_ln124_fu_457_p1 = select_ln122_fu_440_p3[1:0];
assign v19_1_address0 = zext_ln124_1_fu_519_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_2_address0 = zext_ln124_1_fu_519_p1;
assign v19_2_ce0 = v19_2_ce0_local;
assign v19_3_address0 = zext_ln124_1_fu_519_p1;
assign v19_3_ce0 = v19_3_ce0_local;
assign v19_address0 = zext_ln124_1_fu_519_p1;
assign v19_ce0 = v19_ce0_local;
assign v2_0_address0 = zext_ln125_fu_549_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_1_address0 = zext_ln125_fu_549_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_2_address0 = zext_ln125_fu_549_p1;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_3_address0 = zext_ln125_fu_549_p1;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_4_address0 = zext_ln125_fu_549_p1;
assign v2_4_ce0 = v2_4_ce0_local;
assign v2_5_address0 = zext_ln125_fu_549_p1;
assign v2_5_ce0 = v2_5_ce0_local;
assign v2_6_address0 = zext_ln125_fu_549_p1;
assign v2_6_ce0 = v2_6_ce0_local;
assign v2_7_address0 = zext_ln125_fu_549_p1;
assign v2_7_ce0 = v2_7_ce0_local;
assign v63_fu_593_p10 = v2_4_q0;
assign v63_fu_593_p12 = v2_5_q0;
assign v63_fu_593_p14 = v2_6_q0;
assign v63_fu_593_p16 = v2_7_q0;
assign v63_fu_593_p17 = 'bx;
assign v63_fu_593_p2 = v2_0_q0;
assign v63_fu_593_p4 = v2_1_q0;
assign v63_fu_593_p6 = v2_2_q0;
assign v63_fu_593_p8 = v2_3_q0;
assign v64_fu_526_p9 = 'bx;
assign zext_ln124_1_fu_519_p1 = lshr_ln4_reg_836;
assign zext_ln124_fu_453_p1 = select_ln122_fu_440_p3;
assign zext_ln125_fu_549_p1 = grp_fu_477_p2;
endmodule 
