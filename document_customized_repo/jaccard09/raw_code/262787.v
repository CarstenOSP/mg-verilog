module backprop_backprop_Pipeline_label_27_label_28 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v0_7_address0,v0_7_ce0,v0_7_we0,v0_7_d0,v0_7_q0,v0_6_address0,v0_6_ce0,v0_6_we0,v0_6_d0,v0_6_q0,v0_5_address0,v0_5_ce0,v0_5_we0,v0_5_d0,v0_5_q0,v0_4_address0,v0_4_ce0,v0_4_we0,v0_4_d0,v0_4_q0,v0_3_address0,v0_3_ce0,v0_3_we0,v0_3_d0,v0_3_q0,v0_2_address0,v0_2_ce0,v0_2_we0,v0_2_d0,v0_2_q0,v0_1_address0,v0_1_ce0,v0_1_we0,v0_1_d0,v0_1_q0,v0_0_address0,v0_0_ce0,v0_0_we0,v0_0_d0,v0_0_q0,v12_address0,v12_ce0,v12_q0,v150_out,v150_out_ap_vld,grp_fu_3226_p_din0,grp_fu_3226_p_din1,grp_fu_3226_p_opcode,grp_fu_3226_p_dout0,grp_fu_3226_p_ce,grp_fu_3244_p_din0,grp_fu_3244_p_din1,grp_fu_3244_p_dout0,grp_fu_3244_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 7'd1;
parameter    ap_ST_fsm_pp0_stage1 = 7'd2;
parameter    ap_ST_fsm_pp0_stage2 = 7'd4;
parameter    ap_ST_fsm_pp0_stage3 = 7'd8;
parameter    ap_ST_fsm_pp0_stage4 = 7'd16;
parameter    ap_ST_fsm_pp0_stage5 = 7'd32;
parameter    ap_ST_fsm_pp0_stage6 = 7'd64;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] v0_7_address0;
output   v0_7_ce0;
output   v0_7_we0;
output  [63:0] v0_7_d0;
input  [63:0] v0_7_q0;
output  [6:0] v0_6_address0;
output   v0_6_ce0;
output   v0_6_we0;
output  [63:0] v0_6_d0;
input  [63:0] v0_6_q0;
output  [6:0] v0_5_address0;
output   v0_5_ce0;
output   v0_5_we0;
output  [63:0] v0_5_d0;
input  [63:0] v0_5_q0;
output  [6:0] v0_4_address0;
output   v0_4_ce0;
output   v0_4_we0;
output  [63:0] v0_4_d0;
input  [63:0] v0_4_q0;
output  [6:0] v0_3_address0;
output   v0_3_ce0;
output   v0_3_we0;
output  [63:0] v0_3_d0;
input  [63:0] v0_3_q0;
output  [6:0] v0_2_address0;
output   v0_2_ce0;
output   v0_2_we0;
output  [63:0] v0_2_d0;
input  [63:0] v0_2_q0;
output  [6:0] v0_1_address0;
output   v0_1_ce0;
output   v0_1_we0;
output  [63:0] v0_1_d0;
input  [63:0] v0_1_q0;
output  [6:0] v0_0_address0;
output   v0_0_ce0;
output   v0_0_we0;
output  [63:0] v0_0_d0;
input  [63:0] v0_0_q0;
output  [9:0] v12_address0;
output   v12_ce0;
input  [63:0] v12_q0;
output  [63:0] v150_out;
output   v150_out_ap_vld;
output  [63:0] grp_fu_3226_p_din0;
output  [63:0] grp_fu_3226_p_din1;
output  [1:0] grp_fu_3226_p_opcode;
input  [63:0] grp_fu_3226_p_dout0;
output   grp_fu_3226_p_ce;
output  [63:0] grp_fu_3244_p_din0;
output  [63:0] grp_fu_3244_p_din1;
input  [63:0] grp_fu_3244_p_dout0;
output   grp_fu_3244_p_ce;
reg ap_idle;
reg v150_out_ap_vld;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage6;
wire    ap_block_pp0_stage6_subdone;
reg   [0:0] icmp_ln243_reg_518;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln243_fu_272_p2;
reg   [0:0] icmp_ln243_reg_518_pp0_iter1_reg;
reg   [0:0] icmp_ln243_reg_518_pp0_iter2_reg;
reg   [0:0] icmp_ln243_reg_518_pp0_iter3_reg;
reg   [0:0] icmp_ln243_reg_518_pp0_iter4_reg;
wire   [9:0] add_ln243_fu_278_p2;
reg   [9:0] add_ln243_reg_522;
wire   [6:0] select_ln244_fu_296_p3;
reg   [6:0] select_ln244_reg_527;
wire   [3:0] select_ln243_fu_310_p3;
reg   [3:0] select_ln243_reg_532;
wire   [9:0] add_ln249_fu_330_p2;
reg   [9:0] add_ln249_reg_537;
reg   [2:0] trunc_ln249_1_reg_544;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [2:0] trunc_ln249_1_reg_544_pp0_iter1_reg;
reg   [2:0] trunc_ln249_1_reg_544_pp0_iter2_reg;
reg   [2:0] trunc_ln249_1_reg_544_pp0_iter3_reg;
reg   [63:0] v151_reg_554;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [63:0] v152_reg_559;
reg   [6:0] v0_0_addr_reg_564;
reg   [6:0] v0_0_addr_reg_564_pp0_iter3_reg;
reg   [6:0] v0_1_addr_reg_569;
reg   [6:0] v0_1_addr_reg_569_pp0_iter3_reg;
reg   [6:0] v0_2_addr_reg_574;
reg   [6:0] v0_2_addr_reg_574_pp0_iter3_reg;
reg   [6:0] v0_3_addr_reg_579;
reg   [6:0] v0_3_addr_reg_579_pp0_iter3_reg;
reg   [6:0] v0_4_addr_reg_584;
reg   [6:0] v0_4_addr_reg_584_pp0_iter3_reg;
reg   [6:0] v0_5_addr_reg_589;
reg   [6:0] v0_5_addr_reg_589_pp0_iter3_reg;
reg   [6:0] v0_6_addr_reg_594;
reg   [6:0] v0_6_addr_reg_594_pp0_iter3_reg;
reg   [6:0] v0_7_addr_reg_599;
reg   [6:0] v0_7_addr_reg_599_pp0_iter3_reg;
wire   [63:0] v153_fu_426_p19;
reg   [63:0] v153_reg_604;
reg   [63:0] v154_reg_609;
reg   [63:0] v155_reg_616;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
wire    ap_CS_fsm_pp0_stage4;
wire    ap_block_pp0_stage4_11001;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage4_subdone;
wire   [63:0] zext_ln249_fu_336_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln249_1_fu_382_p1;
wire    ap_block_pp0_stage0;
reg   [63:0] v148_fu_100;
reg   [63:0] ap_sig_allocacmp_v148_load_1;
wire    ap_block_pp0_stage4;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage6_11001;
reg    ap_condition_exit_pp0_iter4_stage4;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [6:0] v149_fu_104;
wire   [6:0] add_ln247_fu_364_p2;
reg   [6:0] ap_sig_allocacmp_v149_load;
reg   [3:0] v146_fu_108;
reg   [3:0] ap_sig_allocacmp_v146_load;
reg   [9:0] indvar_flatten19_fu_112;
reg   [9:0] ap_sig_allocacmp_indvar_flatten19_load;
wire    ap_block_pp0_stage4_01001;
reg    v12_ce0_local;
reg    v0_0_ce0_local;
reg   [6:0] v0_0_address0_local;
reg    v0_0_we0_local;
wire   [63:0] bitcast_ln253_fu_465_p1;
wire    ap_block_pp0_stage3;
reg    v0_1_ce0_local;
reg   [6:0] v0_1_address0_local;
reg    v0_1_we0_local;
reg    v0_2_ce0_local;
reg   [6:0] v0_2_address0_local;
reg    v0_2_we0_local;
reg    v0_3_ce0_local;
reg   [6:0] v0_3_address0_local;
reg    v0_3_we0_local;
reg    v0_4_ce0_local;
reg   [6:0] v0_4_address0_local;
reg    v0_4_we0_local;
reg    v0_5_ce0_local;
reg   [6:0] v0_5_address0_local;
reg    v0_5_we0_local;
reg    v0_6_ce0_local;
reg   [6:0] v0_6_address0_local;
reg    v0_6_we0_local;
reg    v0_7_ce0_local;
reg   [6:0] v0_7_address0_local;
reg    v0_7_we0_local;
reg   [63:0] grp_fu_240_p0;
reg   [63:0] grp_fu_240_p1;
wire    ap_block_pp0_stage2;
reg   [63:0] grp_fu_244_p0;
reg   [63:0] grp_fu_244_p1;
wire   [0:0] icmp_ln247_fu_290_p2;
wire   [3:0] add_ln243_1_fu_304_p2;
wire   [9:0] zext_ln247_fu_326_p1;
wire   [9:0] tmp_s_fu_318_p3;
wire   [7:0] grp_fu_340_p1;
wire   [9:0] mul_ln249_fu_348_p0;
wire   [11:0] mul_ln249_fu_348_p1;
wire   [20:0] mul_ln249_fu_348_p2;
wire   [9:0] grp_fu_340_p2;
wire   [63:0] v153_fu_426_p2;
wire   [63:0] v153_fu_426_p4;
wire   [63:0] v153_fu_426_p6;
wire   [63:0] v153_fu_426_p8;
wire   [63:0] v153_fu_426_p10;
wire   [63:0] v153_fu_426_p12;
wire   [63:0] v153_fu_426_p14;
wire   [63:0] v153_fu_426_p16;
wire   [63:0] v153_fu_426_p17;
reg   [1:0] grp_fu_240_opcode;
wire    ap_block_pp0_stage4_00001;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [20:0] mul_ln249_fu_348_p00;
wire   [2:0] v153_fu_426_p1;
wire   [2:0] v153_fu_426_p3;
wire   [2:0] v153_fu_426_p5;
wire   [2:0] v153_fu_426_p7;
wire  signed [2:0] v153_fu_426_p9;
wire  signed [2:0] v153_fu_426_p11;
wire  signed [2:0] v153_fu_426_p13;
wire  signed [2:0] v153_fu_426_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v148_fu_100 = 64'd0;
#0 v149_fu_104 = 7'd0;
#0 v146_fu_108 = 4'd0;
#0 indvar_flatten19_fu_112 = 10'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_10ns_8ns_10_14_1 #(.ID( 1 ),.NUM_STAGE( 14 ),.din0_WIDTH( 10 ),.din1_WIDTH( 8 ),.dout_WIDTH( 10 ))
urem_10ns_8ns_10_14_1_U793(.clk(ap_clk),.reset(ap_rst),.din0(add_ln249_reg_537),.din1(grp_fu_340_p1),.ce(1'b1),.dout(grp_fu_340_p2));
backprop_mul_10ns_12ns_21_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 10 ),.din1_WIDTH( 12 ),.dout_WIDTH( 21 ))
mul_10ns_12ns_21_1_1_U794(.din0(mul_ln249_fu_348_p0),.din1(mul_ln249_fu_348_p1),.dout(mul_ln249_fu_348_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U795(.din0(v153_fu_426_p2),.din1(v153_fu_426_p4),.din2(v153_fu_426_p6),.din3(v153_fu_426_p8),.din4(v153_fu_426_p10),.din5(v153_fu_426_p12),.din6(v153_fu_426_p14),.din7(v153_fu_426_p16),.def(v153_fu_426_p17),.sel(trunc_ln249_1_reg_544_pp0_iter1_reg),.dout(v153_fu_426_p19));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage6),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage6)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage4))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage4))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage4))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage4))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten19_fu_112 <= 10'd0;
    end else if (((icmp_ln243_reg_518 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        indvar_flatten19_fu_112 <= add_ln243_reg_522;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v146_fu_108 <= 4'd0;
    end else if (((icmp_ln243_reg_518 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v146_fu_108 <= select_ln243_reg_532;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v148_fu_100 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        v148_fu_100 <= grp_fu_3226_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v149_fu_104 <= 7'd0;
    end else if (((icmp_ln243_reg_518 == 1'd0) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v149_fu_104 <= add_ln247_fu_364_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        add_ln243_reg_522 <= add_ln243_fu_278_p2;
        add_ln249_reg_537 <= add_ln249_fu_330_p2;
        icmp_ln243_reg_518 <= icmp_ln243_fu_272_p2;
        icmp_ln243_reg_518_pp0_iter1_reg <= icmp_ln243_reg_518;
        icmp_ln243_reg_518_pp0_iter2_reg <= icmp_ln243_reg_518_pp0_iter1_reg;
        icmp_ln243_reg_518_pp0_iter3_reg <= icmp_ln243_reg_518_pp0_iter2_reg;
        icmp_ln243_reg_518_pp0_iter4_reg <= icmp_ln243_reg_518_pp0_iter3_reg;
        select_ln243_reg_532 <= select_ln243_fu_310_p3;
        select_ln244_reg_527 <= select_ln244_fu_296_p3;
        v0_0_addr_reg_564 <= zext_ln249_1_fu_382_p1;
        v0_0_addr_reg_564_pp0_iter3_reg <= v0_0_addr_reg_564;
        v0_1_addr_reg_569 <= zext_ln249_1_fu_382_p1;
        v0_1_addr_reg_569_pp0_iter3_reg <= v0_1_addr_reg_569;
        v0_2_addr_reg_574 <= zext_ln249_1_fu_382_p1;
        v0_2_addr_reg_574_pp0_iter3_reg <= v0_2_addr_reg_574;
        v0_3_addr_reg_579 <= zext_ln249_1_fu_382_p1;
        v0_3_addr_reg_579_pp0_iter3_reg <= v0_3_addr_reg_579;
        v0_4_addr_reg_584 <= zext_ln249_1_fu_382_p1;
        v0_4_addr_reg_584_pp0_iter3_reg <= v0_4_addr_reg_584;
        v0_5_addr_reg_589 <= zext_ln249_1_fu_382_p1;
        v0_5_addr_reg_589_pp0_iter3_reg <= v0_5_addr_reg_589;
        v0_6_addr_reg_594 <= zext_ln249_1_fu_382_p1;
        v0_6_addr_reg_594_pp0_iter3_reg <= v0_6_addr_reg_594;
        v0_7_addr_reg_599 <= zext_ln249_1_fu_382_p1;
        v0_7_addr_reg_599_pp0_iter3_reg <= v0_7_addr_reg_599;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        trunc_ln249_1_reg_544 <= {{mul_ln249_fu_348_p2[19:17]}};
        trunc_ln249_1_reg_544_pp0_iter1_reg <= trunc_ln249_1_reg_544;
        trunc_ln249_1_reg_544_pp0_iter2_reg <= trunc_ln249_1_reg_544_pp0_iter1_reg;
        trunc_ln249_1_reg_544_pp0_iter3_reg <= trunc_ln249_1_reg_544_pp0_iter2_reg;
        v153_reg_604 <= v153_fu_426_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v151_reg_554 <= v12_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v152_reg_559 <= grp_fu_3244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v154_reg_609 <= grp_fu_3226_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v155_reg_616 <= grp_fu_3244_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln243_reg_518 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln243_reg_518_pp0_iter4_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter4_stage4 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage4 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0_0to3 = 1'b1;
    end else begin
        ap_idle_pp0_0to3 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to5 = 1'b1;
    end else begin
        ap_idle_pp0_1to5 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten19_load = 10'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten19_load = indvar_flatten19_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v146_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v146_load = v146_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        ap_sig_allocacmp_v148_load_1 = grp_fu_3226_p_dout0;
    end else begin
        ap_sig_allocacmp_v148_load_1 = v148_fu_100;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v149_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v149_load = v149_fu_104;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_240_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage4_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_240_opcode = 2'd0;
    end else begin
        grp_fu_240_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_240_p0 = ap_sig_allocacmp_v148_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_240_p0 = v153_reg_604;
    end else begin
        grp_fu_240_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_240_p1 = v155_reg_616;
    end else if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_240_p1 = v152_reg_559;
    end else begin
        grp_fu_240_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_244_p0 = v154_reg_609;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_244_p0 = v151_reg_554;
    end else begin
        grp_fu_244_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4))) begin
        grp_fu_244_p1 = v154_reg_609;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_244_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_244_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_0_address0_local = v0_0_addr_reg_564_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_0_address0_local = zext_ln249_1_fu_382_p1;
    end else begin
        v0_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_0_ce0_local = 1'b1;
    end else begin
        v0_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln249_1_reg_544_pp0_iter3_reg == 3'd0))) begin
        v0_0_we0_local = 1'b1;
    end else begin
        v0_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_1_address0_local = v0_1_addr_reg_569_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_1_address0_local = zext_ln249_1_fu_382_p1;
    end else begin
        v0_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_1_ce0_local = 1'b1;
    end else begin
        v0_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln249_1_reg_544_pp0_iter3_reg == 3'd1))) begin
        v0_1_we0_local = 1'b1;
    end else begin
        v0_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_2_address0_local = v0_2_addr_reg_574_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_2_address0_local = zext_ln249_1_fu_382_p1;
    end else begin
        v0_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_2_ce0_local = 1'b1;
    end else begin
        v0_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln249_1_reg_544_pp0_iter3_reg == 3'd2))) begin
        v0_2_we0_local = 1'b1;
    end else begin
        v0_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_3_address0_local = v0_3_addr_reg_579_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_3_address0_local = zext_ln249_1_fu_382_p1;
    end else begin
        v0_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_3_ce0_local = 1'b1;
    end else begin
        v0_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln249_1_reg_544_pp0_iter3_reg == 3'd3))) begin
        v0_3_we0_local = 1'b1;
    end else begin
        v0_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_4_address0_local = v0_4_addr_reg_584_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_4_address0_local = zext_ln249_1_fu_382_p1;
    end else begin
        v0_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_4_ce0_local = 1'b1;
    end else begin
        v0_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln249_1_reg_544_pp0_iter3_reg == 3'd4))) begin
        v0_4_we0_local = 1'b1;
    end else begin
        v0_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_5_address0_local = v0_5_addr_reg_589_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_5_address0_local = zext_ln249_1_fu_382_p1;
    end else begin
        v0_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_5_ce0_local = 1'b1;
    end else begin
        v0_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln249_1_reg_544_pp0_iter3_reg == 3'd5))) begin
        v0_5_we0_local = 1'b1;
    end else begin
        v0_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_6_address0_local = v0_6_addr_reg_594_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_6_address0_local = zext_ln249_1_fu_382_p1;
    end else begin
        v0_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_6_ce0_local = 1'b1;
    end else begin
        v0_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln249_1_reg_544_pp0_iter3_reg == 3'd6))) begin
        v0_6_we0_local = 1'b1;
    end else begin
        v0_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v0_7_address0_local = v0_7_addr_reg_599_pp0_iter3_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v0_7_address0_local = zext_ln249_1_fu_382_p1;
    end else begin
        v0_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v0_7_ce0_local = 1'b1;
    end else begin
        v0_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3) & (trunc_ln249_1_reg_544_pp0_iter3_reg == 3'd7))) begin
        v0_7_we0_local = 1'b1;
    end else begin
        v0_7_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v12_ce0_local = 1'b1;
    end else begin
        v12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage4_11001) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage4) & (icmp_ln243_reg_518_pp0_iter4_reg == 1'd1))) begin
        v150_out_ap_vld = 1'b1;
    end else begin
        v150_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to5 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage4))) begin
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
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln243_1_fu_304_p2 = (ap_sig_allocacmp_v146_load + 4'd1);
assign add_ln243_fu_278_p2 = (ap_sig_allocacmp_indvar_flatten19_load + 10'd1);
assign add_ln247_fu_364_p2 = (select_ln244_reg_527 + 7'd1);
assign add_ln249_fu_330_p2 = (zext_ln247_fu_326_p1 + tmp_s_fu_318_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage4 = ap_CS_fsm[32'd4];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln253_fu_465_p1 = v154_reg_609;
assign grp_fu_3226_p_ce = 1'b1;
assign grp_fu_3226_p_din0 = grp_fu_240_p0;
assign grp_fu_3226_p_din1 = grp_fu_240_p1;
assign grp_fu_3226_p_opcode = grp_fu_240_opcode;
assign grp_fu_3244_p_ce = 1'b1;
assign grp_fu_3244_p_din0 = grp_fu_244_p0;
assign grp_fu_3244_p_din1 = grp_fu_244_p1;
assign grp_fu_340_p1 = 10'd104;
assign icmp_ln243_fu_272_p2 = ((ap_sig_allocacmp_indvar_flatten19_load == 10'd832) ? 1'b1 : 1'b0);
assign icmp_ln247_fu_290_p2 = ((ap_sig_allocacmp_v149_load == 7'd64) ? 1'b1 : 1'b0);
assign mul_ln249_fu_348_p0 = mul_ln249_fu_348_p00;
assign mul_ln249_fu_348_p00 = add_ln249_reg_537;
assign mul_ln249_fu_348_p1 = 21'd1261;
assign select_ln243_fu_310_p3 = ((icmp_ln247_fu_290_p2[0:0] == 1'b1) ? add_ln243_1_fu_304_p2 : ap_sig_allocacmp_v146_load);
assign select_ln244_fu_296_p3 = ((icmp_ln247_fu_290_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v149_load);
assign tmp_s_fu_318_p3 = {{select_ln243_fu_310_p3}, {6'd0}};
assign v0_0_address0 = v0_0_address0_local;
assign v0_0_ce0 = v0_0_ce0_local;
assign v0_0_d0 = bitcast_ln253_fu_465_p1;
assign v0_0_we0 = v0_0_we0_local;
assign v0_1_address0 = v0_1_address0_local;
assign v0_1_ce0 = v0_1_ce0_local;
assign v0_1_d0 = bitcast_ln253_fu_465_p1;
assign v0_1_we0 = v0_1_we0_local;
assign v0_2_address0 = v0_2_address0_local;
assign v0_2_ce0 = v0_2_ce0_local;
assign v0_2_d0 = bitcast_ln253_fu_465_p1;
assign v0_2_we0 = v0_2_we0_local;
assign v0_3_address0 = v0_3_address0_local;
assign v0_3_ce0 = v0_3_ce0_local;
assign v0_3_d0 = bitcast_ln253_fu_465_p1;
assign v0_3_we0 = v0_3_we0_local;
assign v0_4_address0 = v0_4_address0_local;
assign v0_4_ce0 = v0_4_ce0_local;
assign v0_4_d0 = bitcast_ln253_fu_465_p1;
assign v0_4_we0 = v0_4_we0_local;
assign v0_5_address0 = v0_5_address0_local;
assign v0_5_ce0 = v0_5_ce0_local;
assign v0_5_d0 = bitcast_ln253_fu_465_p1;
assign v0_5_we0 = v0_5_we0_local;
assign v0_6_address0 = v0_6_address0_local;
assign v0_6_ce0 = v0_6_ce0_local;
assign v0_6_d0 = bitcast_ln253_fu_465_p1;
assign v0_6_we0 = v0_6_we0_local;
assign v0_7_address0 = v0_7_address0_local;
assign v0_7_ce0 = v0_7_ce0_local;
assign v0_7_d0 = bitcast_ln253_fu_465_p1;
assign v0_7_we0 = v0_7_we0_local;
assign v12_address0 = zext_ln249_fu_336_p1;
assign v12_ce0 = v12_ce0_local;
assign v150_out = v148_fu_100;
assign v153_fu_426_p10 = v0_4_q0;
assign v153_fu_426_p12 = v0_5_q0;
assign v153_fu_426_p14 = v0_6_q0;
assign v153_fu_426_p16 = v0_7_q0;
assign v153_fu_426_p17 = 'bx;
assign v153_fu_426_p2 = v0_0_q0;
assign v153_fu_426_p4 = v0_1_q0;
assign v153_fu_426_p6 = v0_2_q0;
assign v153_fu_426_p8 = v0_3_q0;
assign zext_ln247_fu_326_p1 = select_ln244_fu_296_p3;
assign zext_ln249_1_fu_382_p1 = grp_fu_340_p2;
assign zext_ln249_fu_336_p1 = add_ln249_reg_537;
endmodule 