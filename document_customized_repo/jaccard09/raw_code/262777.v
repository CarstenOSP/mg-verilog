module backprop_backprop_Pipeline_label_10_label_11 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v18_2_load_1,v18_load_1,v18_1_load_1,v2_address0,v2_ce0,v2_q0,v19_address0,v19_ce0,v19_q0,v19_1_address0,v19_1_ce0,v19_1_q0,v19_2_address0,v19_2_ce0,v19_2_q0,v19_3_address0,v19_3_ce0,v19_3_q0,v19_4_address0,v19_4_ce0,v19_4_q0,v19_5_address0,v19_5_ce0,v19_5_q0,v19_6_address0,v19_6_ce0,v19_6_q0,v19_7_address0,v19_7_ce0,v19_7_q0,v18_11_out_i,v18_11_out_o,v18_11_out_o_ap_vld,v18_10_out_i,v18_10_out_o,v18_10_out_o_ap_vld,v18_9_out_i,v18_9_out_o,v18_9_out_o_ap_vld,grp_fu_3226_p_din0,grp_fu_3226_p_din1,grp_fu_3226_p_opcode,grp_fu_3226_p_dout0,grp_fu_3226_p_ce,grp_fu_3244_p_din0,grp_fu_3244_p_din1,grp_fu_3244_p_dout0,grp_fu_3244_p_ce); 
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
output  [7:0] v2_address0;
output   v2_ce0;
input  [63:0] v2_q0;
output  [2:0] v19_address0;
output   v19_ce0;
input  [63:0] v19_q0;
output  [2:0] v19_1_address0;
output   v19_1_ce0;
input  [63:0] v19_1_q0;
output  [2:0] v19_2_address0;
output   v19_2_ce0;
input  [63:0] v19_2_q0;
output  [2:0] v19_3_address0;
output   v19_3_ce0;
input  [63:0] v19_3_q0;
output  [2:0] v19_4_address0;
output   v19_4_ce0;
input  [63:0] v19_4_q0;
output  [2:0] v19_5_address0;
output   v19_5_ce0;
input  [63:0] v19_5_q0;
output  [2:0] v19_6_address0;
output   v19_6_ce0;
input  [63:0] v19_6_q0;
output  [2:0] v19_7_address0;
output   v19_7_ce0;
input  [63:0] v19_7_q0;
input  [63:0] v18_11_out_i;
output  [63:0] v18_11_out_o;
output   v18_11_out_o_ap_vld;
input  [63:0] v18_10_out_i;
output  [63:0] v18_10_out_o;
output   v18_10_out_o_ap_vld;
input  [63:0] v18_9_out_i;
output  [63:0] v18_9_out_o;
output   v18_9_out_o_ap_vld;
output  [63:0] grp_fu_3226_p_din0;
output  [63:0] grp_fu_3226_p_din1;
output  [0:0] grp_fu_3226_p_opcode;
input  [63:0] grp_fu_3226_p_dout0;
output   grp_fu_3226_p_ce;
output  [63:0] grp_fu_3244_p_din0;
output  [63:0] grp_fu_3244_p_din1;
input  [63:0] grp_fu_3244_p_dout0;
output   grp_fu_3244_p_ce;
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
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage7;
wire    ap_block_pp0_stage7_subdone;
reg   [0:0] icmp_ln122_reg_669;
reg    ap_condition_exit_pp0_iter0_stage7;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln122_fu_331_p2;
reg   [0:0] icmp_ln122_reg_669_pp0_iter1_reg;
wire   [0:0] icmp_ln124_fu_349_p2;
reg   [0:0] icmp_ln124_reg_673;
reg   [0:0] icmp_ln124_reg_673_pp0_iter1_reg;
wire   [6:0] select_ln122_fu_355_p3;
reg   [6:0] select_ln122_reg_681;
wire   [1:0] select_ln122_5_fu_369_p3;
reg   [1:0] select_ln122_5_reg_687;
reg   [1:0] select_ln122_5_reg_687_pp0_iter1_reg;
reg   [1:0] select_ln122_5_reg_687_pp0_iter2_reg;
wire   [2:0] trunc_ln124_fu_377_p1;
reg   [2:0] trunc_ln124_reg_692;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
wire   [63:0] v64_fu_434_p19;
reg   [63:0] v64_reg_742;
wire   [0:0] icmp_ln124_1_fu_478_p2;
reg   [0:0] icmp_ln124_1_reg_747;
reg   [0:0] icmp_ln124_1_reg_747_pp0_iter1_reg;
reg   [63:0] v2_load_reg_751;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
wire   [63:0] v63_fu_489_p1;
wire    ap_block_pp0_stage3_11001;
reg   [63:0] v65_reg_761;
wire   [63:0] select_ln122_1_fu_517_p3;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage1_subdone;
wire   [63:0] zext_ln124_1_fu_391_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln125_fu_429_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] select_ln122_2_fu_525_p3;
wire    ap_block_pp0_stage2;
wire    ap_loop_init;
wire   [63:0] select_ln122_3_fu_532_p3;
wire   [63:0] select_ln122_4_fu_539_p3;
reg   [63:0] v66_fu_104;
reg   [6:0] v62_fu_108;
wire   [6:0] add_ln124_fu_473_p2;
reg   [6:0] ap_sig_allocacmp_v62_load;
reg   [1:0] v61_fu_112;
reg   [1:0] ap_sig_allocacmp_v61_load;
reg   [63:0] v18_fu_116;
reg   [63:0] v18_4_fu_120;
reg   [63:0] v18_5_fu_124;
reg   [7:0] indvar_flatten_fu_128;
wire   [7:0] add_ln122_fu_337_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten_load;
reg    v19_ce0_local;
reg    v19_1_ce0_local;
reg    v19_2_ce0_local;
reg    v19_3_ce0_local;
reg    v19_4_ce0_local;
reg    v19_5_ce0_local;
reg    v19_6_ce0_local;
reg    v19_7_ce0_local;
reg    v2_ce0_local;
wire    ap_block_pp0_stage3;
wire   [1:0] add_ln122_1_fu_363_p2;
wire   [2:0] lshr_ln5_fu_381_p4;
wire   [7:0] zext_ln124_fu_420_p1;
wire   [7:0] tmp_5_fu_413_p3;
wire   [7:0] add_ln125_fu_423_p2;
wire   [63:0] v64_fu_434_p17;
wire    ap_block_pp0_stage2_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
wire    ap_block_pp0_stage7_11001;
reg    ap_condition_exit_pp0_iter1_stage1;
reg    ap_idle_pp0_0to0;
reg   [7:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to2;
wire    ap_block_pp0_stage2_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_block_pp0_stage6_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v64_fu_434_p1;
wire   [2:0] v64_fu_434_p3;
wire   [2:0] v64_fu_434_p5;
wire   [2:0] v64_fu_434_p7;
wire  signed [2:0] v64_fu_434_p9;
wire  signed [2:0] v64_fu_434_p11;
wire  signed [2:0] v64_fu_434_p13;
wire  signed [2:0] v64_fu_434_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 8'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v66_fu_104 = 64'd0;
#0 v62_fu_108 = 7'd0;
#0 v61_fu_112 = 2'd0;
#0 v18_fu_116 = 64'd0;
#0 v18_4_fu_120 = 64'd0;
#0 v18_5_fu_124 = 64'd0;
#0 indvar_flatten_fu_128 = 8'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U220(.din0(v19_q0),.din1(v19_1_q0),.din2(v19_2_q0),.din3(v19_3_q0),.din4(v19_4_q0),.din5(v19_5_q0),.din6(v19_6_q0),.din7(v19_7_q0),.def(v64_fu_434_p17),.sel(trunc_ln124_reg_692),.dout(v64_fu_434_p19));
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
        end else if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage7_subdone) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage7_11001) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln122_fu_331_p2 == 1'd0))) begin
            indvar_flatten_fu_128 <= add_ln122_fu_337_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten_fu_128 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_4_fu_120 <= v18_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v18_4_fu_120 <= select_ln122_3_fu_532_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_5_fu_124 <= v18_2_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v18_5_fu_124 <= select_ln122_2_fu_525_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_fu_116 <= v18_1_load_1;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v18_fu_116 <= select_ln122_4_fu_539_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln122_fu_331_p2 == 1'd0))) begin
            v61_fu_112 <= select_ln122_5_fu_369_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v61_fu_112 <= 2'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v62_fu_108 <= 7'd0;
    end else if (((icmp_ln122_reg_669 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v62_fu_108 <= add_ln124_fu_473_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v66_fu_104 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v66_fu_104 <= grp_fu_3226_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln122_reg_669 <= icmp_ln122_fu_331_p2;
        icmp_ln122_reg_669_pp0_iter1_reg <= icmp_ln122_reg_669;
        icmp_ln124_reg_673 <= icmp_ln124_fu_349_p2;
        icmp_ln124_reg_673_pp0_iter1_reg <= icmp_ln124_reg_673;
        select_ln122_5_reg_687 <= select_ln122_5_fu_369_p3;
        select_ln122_5_reg_687_pp0_iter1_reg <= select_ln122_5_reg_687;
        select_ln122_5_reg_687_pp0_iter2_reg <= select_ln122_5_reg_687_pp0_iter1_reg;
        select_ln122_reg_681 <= select_ln122_fu_355_p3;
        trunc_ln124_reg_692 <= trunc_ln124_fu_377_p1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        icmp_ln124_1_reg_747 <= icmp_ln124_1_fu_478_p2;
        icmp_ln124_1_reg_747_pp0_iter1_reg <= icmp_ln124_1_reg_747;
        v64_reg_742 <= v64_fu_434_p19;
        v65_reg_761 <= grp_fu_3244_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_load_reg_751 <= v2_q0;
    end
end
always @ (*) begin
    if (((icmp_ln122_reg_669 == 1'd1) & (1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln122_reg_669_pp0_iter1_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter1_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if ((ap_enable_reg_pp0_iter0 == 1'b0)) begin
        ap_idle_pp0_0to0 = 1'b1;
    end else begin
        ap_idle_pp0_0to0 = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage7_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage7))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten_load = indvar_flatten_fu_128;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v61_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v61_load = v61_fu_112;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v62_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v62_load = v62_fu_108;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_10_out_o = 'bx;
    end else if (((~(select_ln122_5_reg_687_pp0_iter1_reg == 2'd0) & ~(select_ln122_5_reg_687_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_687_pp0_iter1_reg == 2'd1)))) begin
        v18_10_out_o = select_ln122_3_fu_532_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_687_pp0_iter2_reg == 2'd0))) begin
        v18_10_out_o = grp_fu_3226_p_dout0;
    end else begin
        v18_10_out_o = v18_10_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_687_pp0_iter1_reg == 2'd0) & ~(select_ln122_5_reg_687_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_687_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_687_pp0_iter2_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_10_out_o_ap_vld = 1'b1;
    end else begin
        v18_10_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_11_out_o = 'bx;
    end else if ((((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_687_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_687_pp0_iter1_reg == 2'd1)))) begin
        v18_11_out_o = select_ln122_2_fu_525_p3;
    end else if ((~(select_ln122_5_reg_687_pp0_iter2_reg == 2'd1) & ~(select_ln122_5_reg_687_pp0_iter2_reg == 2'd0) & (1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1))) begin
        v18_11_out_o = grp_fu_3226_p_dout0;
    end else begin
        v18_11_out_o = v18_11_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_687_pp0_iter2_reg == 2'd1) & ~(select_ln122_5_reg_687_pp0_iter2_reg == 2'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_687_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_687_pp0_iter1_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_11_out_o_ap_vld = 1'b1;
    end else begin
        v18_11_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v18_9_out_o = 'bx;
    end else if (((~(select_ln122_5_reg_687_pp0_iter1_reg == 2'd0) & ~(select_ln122_5_reg_687_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_687_pp0_iter1_reg == 2'd0)))) begin
        v18_9_out_o = select_ln122_4_fu_539_p3;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_687_pp0_iter2_reg == 2'd1))) begin
        v18_9_out_o = grp_fu_3226_p_dout0;
    end else begin
        v18_9_out_o = v18_9_out_i;
    end
end
always @ (*) begin
    if (((~(select_ln122_5_reg_687_pp0_iter1_reg == 2'd0) & ~(select_ln122_5_reg_687_pp0_iter1_reg == 2'd1) & (1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_687_pp0_iter1_reg == 2'd0)) | ((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1) & (icmp_ln124_1_reg_747_pp0_iter1_reg == 1'd1) & (select_ln122_5_reg_687_pp0_iter2_reg == 2'd1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v18_9_out_o_ap_vld = 1'b1;
    end else begin
        v18_9_out_o_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_2_ce0_local = 1'b1;
    end else begin
        v19_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_3_ce0_local = 1'b1;
    end else begin
        v19_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_4_ce0_local = 1'b1;
    end else begin
        v19_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_5_ce0_local = 1'b1;
    end else begin
        v19_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_6_ce0_local = 1'b1;
    end else begin
        v19_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_7_ce0_local = 1'b1;
    end else begin
        v19_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_ce0_local = 1'b1;
    end else begin
        v2_ce0_local = 1'b0;
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
            if (((ap_idle_pp0_0to0 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter1_stage1))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
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
assign add_ln122_1_fu_363_p2 = (ap_sig_allocacmp_v61_load + 2'd1);
assign add_ln122_fu_337_p2 = (ap_sig_allocacmp_indvar_flatten_load + 8'd1);
assign add_ln124_fu_473_p2 = (select_ln122_reg_681 + 7'd1);
assign add_ln125_fu_423_p2 = (zext_ln124_fu_420_p1 + tmp_5_fu_413_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage7 = ap_CS_fsm[32'd7];
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
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage7_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage7;
assign ap_ready = ap_ready_sig;
assign grp_fu_3226_p_ce = 1'b1;
assign grp_fu_3226_p_din0 = select_ln122_1_fu_517_p3;
assign grp_fu_3226_p_din1 = v65_reg_761;
assign grp_fu_3226_p_opcode = 2'd0;
assign grp_fu_3244_p_ce = 1'b1;
assign grp_fu_3244_p_din0 = v63_fu_489_p1;
assign grp_fu_3244_p_din1 = v64_reg_742;
assign icmp_ln122_fu_331_p2 = ((ap_sig_allocacmp_indvar_flatten_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln124_1_fu_478_p2 = ((add_ln124_fu_473_p2 == 7'd64) ? 1'b1 : 1'b0);
assign icmp_ln124_fu_349_p2 = ((ap_sig_allocacmp_v62_load == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln5_fu_381_p4 = {{select_ln122_fu_355_p3[5:3]}};
assign select_ln122_1_fu_517_p3 = ((icmp_ln124_reg_673_pp0_iter1_reg[0:0] == 1'b1) ? 64'd0 : v66_fu_104);
assign select_ln122_2_fu_525_p3 = ((icmp_ln124_reg_673_pp0_iter1_reg[0:0] == 1'b1) ? v18_11_out_i : v18_5_fu_124);
assign select_ln122_3_fu_532_p3 = ((icmp_ln124_reg_673_pp0_iter1_reg[0:0] == 1'b1) ? v18_10_out_i : v18_4_fu_120);
assign select_ln122_4_fu_539_p3 = ((icmp_ln124_reg_673_pp0_iter1_reg[0:0] == 1'b1) ? v18_9_out_i : v18_fu_116);
assign select_ln122_5_fu_369_p3 = ((icmp_ln124_fu_349_p2[0:0] == 1'b1) ? add_ln122_1_fu_363_p2 : ap_sig_allocacmp_v61_load);
assign select_ln122_fu_355_p3 = ((icmp_ln124_fu_349_p2[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v62_load);
assign tmp_5_fu_413_p3 = {{select_ln122_5_reg_687}, {6'd0}};
assign trunc_ln124_fu_377_p1 = select_ln122_fu_355_p3[2:0];
assign v19_1_address0 = zext_ln124_1_fu_391_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_2_address0 = zext_ln124_1_fu_391_p1;
assign v19_2_ce0 = v19_2_ce0_local;
assign v19_3_address0 = zext_ln124_1_fu_391_p1;
assign v19_3_ce0 = v19_3_ce0_local;
assign v19_4_address0 = zext_ln124_1_fu_391_p1;
assign v19_4_ce0 = v19_4_ce0_local;
assign v19_5_address0 = zext_ln124_1_fu_391_p1;
assign v19_5_ce0 = v19_5_ce0_local;
assign v19_6_address0 = zext_ln124_1_fu_391_p1;
assign v19_6_ce0 = v19_6_ce0_local;
assign v19_7_address0 = zext_ln124_1_fu_391_p1;
assign v19_7_ce0 = v19_7_ce0_local;
assign v19_address0 = zext_ln124_1_fu_391_p1;
assign v19_ce0 = v19_ce0_local;
assign v2_address0 = zext_ln125_fu_429_p1;
assign v2_ce0 = v2_ce0_local;
assign v63_fu_489_p1 = v2_load_reg_751;
assign v64_fu_434_p17 = 'bx;
assign zext_ln124_1_fu_391_p1 = lshr_ln5_fu_381_p4;
assign zext_ln124_fu_420_p1 = select_ln122_reg_681;
assign zext_ln125_fu_429_p1 = add_ln125_fu_423_p2;
endmodule 