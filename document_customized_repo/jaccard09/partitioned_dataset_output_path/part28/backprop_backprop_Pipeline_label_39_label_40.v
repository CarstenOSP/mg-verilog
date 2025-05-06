
module backprop_backprop_Pipeline_label_39_label_40 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v10_address0,v10_ce0,v10_q0,v10_1_address0,v10_1_ce0,v10_1_q0,v10_2_address0,v10_2_ce0,v10_2_q0,v2_7_address0,v2_7_ce0,v2_7_we0,v2_7_d0,v2_7_q0,v2_6_address0,v2_6_ce0,v2_6_we0,v2_6_d0,v2_6_q0,v2_5_address0,v2_5_ce0,v2_5_we0,v2_5_d0,v2_5_q0,v2_4_address0,v2_4_ce0,v2_4_we0,v2_4_d0,v2_4_q0,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_q0,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_q0,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v216_out,v216_out_ap_vld,grp_fu_114561_p_din0,grp_fu_114561_p_din1,grp_fu_114561_p_opcode,grp_fu_114561_p_dout0,grp_fu_114561_p_ce,grp_fu_114593_p_din0,grp_fu_114593_p_din1,grp_fu_114593_p_dout0,grp_fu_114593_p_ce);  
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
output  [5:0] v10_address0;
output   v10_ce0;
input  [63:0] v10_q0;
output  [5:0] v10_1_address0;
output   v10_1_ce0;
input  [63:0] v10_1_q0;
output  [5:0] v10_2_address0;
output   v10_2_ce0;
input  [63:0] v10_2_q0;
output  [4:0] v2_7_address0;
output   v2_7_ce0;
output   v2_7_we0;
output  [63:0] v2_7_d0;
input  [63:0] v2_7_q0;
output  [4:0] v2_6_address0;
output   v2_6_ce0;
output   v2_6_we0;
output  [63:0] v2_6_d0;
input  [63:0] v2_6_q0;
output  [4:0] v2_5_address0;
output   v2_5_ce0;
output   v2_5_we0;
output  [63:0] v2_5_d0;
input  [63:0] v2_5_q0;
output  [4:0] v2_4_address0;
output   v2_4_ce0;
output   v2_4_we0;
output  [63:0] v2_4_d0;
input  [63:0] v2_4_q0;
output  [4:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [63:0] v2_3_d0;
input  [63:0] v2_3_q0;
output  [4:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [63:0] v2_2_d0;
input  [63:0] v2_2_q0;
output  [4:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [63:0] v2_1_d0;
input  [63:0] v2_1_q0;
output  [4:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [63:0] v2_0_d0;
input  [63:0] v2_0_q0;
output  [63:0] v216_out;
output   v216_out_ap_vld;
output  [63:0] grp_fu_114561_p_din0;
output  [63:0] grp_fu_114561_p_din1;
output  [1:0] grp_fu_114561_p_opcode;
input  [63:0] grp_fu_114561_p_dout0;
output   grp_fu_114561_p_ce;
output  [63:0] grp_fu_114593_p_din0;
output  [63:0] grp_fu_114593_p_din1;
input  [63:0] grp_fu_114593_p_dout0;
output   grp_fu_114593_p_ce;
reg ap_idle;
reg v216_out_ap_vld;
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
reg   [0:0] icmp_ln341_reg_586;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln341_fu_304_p2;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [0:0] icmp_ln341_reg_586_pp0_iter1_reg;
reg   [0:0] icmp_ln341_reg_586_pp0_iter2_reg;
reg   [0:0] icmp_ln341_reg_586_pp0_iter3_reg;
reg   [0:0] icmp_ln341_reg_586_pp0_iter4_reg;
wire   [7:0] add_ln341_fu_310_p2;
reg   [7:0] add_ln341_reg_590;
wire   [1:0] select_ln342_fu_328_p3;
reg   [1:0] select_ln342_reg_595;
wire   [6:0] select_ln341_fu_342_p3;
reg   [6:0] select_ln341_reg_601;
wire   [7:0] add_ln347_fu_383_p2;
reg   [7:0] add_ln347_reg_621;
reg   [2:0] trunc_ln347_1_reg_627;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [2:0] trunc_ln347_1_reg_627_pp0_iter1_reg;
reg   [2:0] trunc_ln347_1_reg_627_pp0_iter2_reg;
wire   [63:0] v217_fu_413_p9;
reg   [63:0] v217_reg_632;
reg   [63:0] v218_reg_637;
reg   [4:0] v2_0_addr_reg_642;
wire    ap_block_pp0_stage6_11001;
reg   [4:0] v2_0_addr_reg_642_pp0_iter2_reg;
reg   [4:0] v2_1_addr_reg_647;
reg   [4:0] v2_1_addr_reg_647_pp0_iter2_reg;
reg   [4:0] v2_2_addr_reg_652;
reg   [4:0] v2_2_addr_reg_652_pp0_iter2_reg;
reg   [4:0] v2_3_addr_reg_657;
reg   [4:0] v2_3_addr_reg_657_pp0_iter2_reg;
reg   [4:0] v2_4_addr_reg_662;
reg   [4:0] v2_4_addr_reg_662_pp0_iter2_reg;
reg   [4:0] v2_5_addr_reg_667;
reg   [4:0] v2_5_addr_reg_667_pp0_iter2_reg;
reg   [4:0] v2_6_addr_reg_672;
reg   [4:0] v2_6_addr_reg_672_pp0_iter2_reg;
reg   [4:0] v2_7_addr_reg_677;
reg   [4:0] v2_7_addr_reg_677_pp0_iter2_reg;
wire   [63:0] v219_fu_494_p19;
reg   [63:0] v219_reg_682;
reg   [63:0] v220_reg_687;
reg   [63:0] v221_reg_694;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln341_fu_350_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln347_fu_450_p1;
wire    ap_block_pp0_stage6;
reg   [63:0] v214_fu_106;
reg   [63:0] ap_sig_allocacmp_v214_load_1;
wire    ap_block_pp0_stage2;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage2;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] v215_fu_110;
wire   [1:0] add_ln345_fu_432_p2;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3_11001;
reg   [6:0] v212_fu_114;
reg   [7:0] indvar_flatten40_fu_118;
wire    ap_block_pp0_stage2_01001;
reg    v10_ce0_local;
reg    v10_1_ce0_local;
reg    v10_2_ce0_local;
reg    v2_0_ce0_local;
reg   [4:0] v2_0_address0_local;
reg    v2_0_we0_local;
wire   [63:0] bitcast_ln351_fu_533_p1;
reg    v2_1_ce0_local;
reg   [4:0] v2_1_address0_local;
reg    v2_1_we0_local;
reg    v2_2_ce0_local;
reg   [4:0] v2_2_address0_local;
reg    v2_2_we0_local;
reg    v2_3_ce0_local;
reg   [4:0] v2_3_address0_local;
reg    v2_3_we0_local;
reg    v2_4_ce0_local;
reg   [4:0] v2_4_address0_local;
reg    v2_4_we0_local;
reg    v2_5_ce0_local;
reg   [4:0] v2_5_address0_local;
reg    v2_5_we0_local;
reg    v2_6_ce0_local;
reg   [4:0] v2_6_address0_local;
reg    v2_6_we0_local;
reg    v2_7_ce0_local;
reg   [4:0] v2_7_address0_local;
reg    v2_7_we0_local;
wire    ap_block_pp0_stage0;
reg   [63:0] grp_fu_272_p0;
reg   [63:0] grp_fu_272_p1;
reg   [63:0] grp_fu_276_p0;
reg   [63:0] grp_fu_276_p1;
wire    ap_block_pp0_stage3;
wire   [0:0] icmp_ln345_fu_322_p2;
wire   [6:0] add_ln341_1_fu_336_p2;
wire   [5:0] empty_fu_361_p1;
wire   [7:0] p_shl_fu_365_p3;
wire   [7:0] v212_cast_fu_357_p1;
wire   [7:0] zext_ln345_fu_379_p1;
wire   [7:0] empty_2168_fu_373_p2;
wire   [5:0] grp_fu_389_p1;
wire   [7:0] mul_ln347_fu_397_p0;
wire   [9:0] mul_ln347_fu_397_p1;
wire   [16:0] mul_ln347_fu_397_p2;
wire   [63:0] v217_fu_413_p7;
wire   [7:0] grp_fu_389_p2;
wire   [63:0] v219_fu_494_p2;
wire   [63:0] v219_fu_494_p4;
wire   [63:0] v219_fu_494_p6;
wire   [63:0] v219_fu_494_p8;
wire   [63:0] v219_fu_494_p10;
wire   [63:0] v219_fu_494_p12;
wire   [63:0] v219_fu_494_p14;
wire   [63:0] v219_fu_494_p16;
wire   [63:0] v219_fu_494_p17;
reg   [1:0] grp_fu_272_opcode;
wire    ap_block_pp0_stage2_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg   [6:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to5;
wire    ap_block_pp0_stage1_subdone;
wire    ap_block_pp0_stage3_subdone;
wire    ap_block_pp0_stage4_subdone;
wire    ap_block_pp0_stage5_subdone;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [16:0] mul_ln347_fu_397_p00;
wire   [1:0] v217_fu_413_p1;
wire   [1:0] v217_fu_413_p3;
wire  signed [1:0] v217_fu_413_p5;
wire   [2:0] v219_fu_494_p1;
wire   [2:0] v219_fu_494_p3;
wire   [2:0] v219_fu_494_p5;
wire   [2:0] v219_fu_494_p7;
wire  signed [2:0] v219_fu_494_p9;
wire  signed [2:0] v219_fu_494_p11;
wire  signed [2:0] v219_fu_494_p13;
wire  signed [2:0] v219_fu_494_p15;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v214_fu_106 = 64'd0;
#0 v215_fu_110 = 2'd0;
#0 v212_fu_114 = 7'd0;
#0 indvar_flatten40_fu_118 = 8'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_8ns_6ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 6 ),.dout_WIDTH( 8 ))
urem_8ns_6ns_8_12_1_U2761(.clk(ap_clk),.reset(ap_rst),.din0(add_ln347_reg_621),.din1(grp_fu_389_p1),.ce(1'b1),.dout(grp_fu_389_p2));
backprop_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U2762(.din0(mul_ln347_fu_397_p0),.din1(mul_ln347_fu_397_p1),.dout(mul_ln347_fu_397_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_7_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_7_2_64_1_1_U2763(.din0(v10_q0),.din1(v10_1_q0),.din2(v10_2_q0),.def(v217_fu_413_p7),.sel(select_ln342_reg_595),.dout(v217_fu_413_p9));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U2764(.din0(v219_fu_494_p2),.din1(v219_fu_494_p4),.din2(v219_fu_494_p6),.din3(v219_fu_494_p8),.din4(v219_fu_494_p10),.din5(v219_fu_494_p12),.din6(v219_fu_494_p14),.din7(v219_fu_494_p16),.def(v219_fu_494_p17),.sel(trunc_ln347_1_reg_627_pp0_iter1_reg),.dout(v219_fu_494_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
        if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
            ap_enable_reg_pp0_iter5 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage6_subdone) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage2))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage2))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage2))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage2))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        indvar_flatten40_fu_118 <= 8'd0;
    end else if (((icmp_ln341_reg_586 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        indvar_flatten40_fu_118 <= add_ln341_reg_590;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v212_fu_114 <= 7'd0;
    end else if (((icmp_ln341_reg_586 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v212_fu_114 <= select_ln341_reg_601;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v214_fu_106 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v214_fu_106 <= grp_fu_114561_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v215_fu_110 <= 2'd0;
    end else if (((icmp_ln341_reg_586 == 1'd0) & (1'b0 == ap_block_pp0_stage3_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        v215_fu_110 <= add_ln345_fu_432_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln341_reg_590 <= add_ln341_fu_310_p2;
        add_ln347_reg_621 <= add_ln347_fu_383_p2;
        icmp_ln341_reg_586 <= icmp_ln341_fu_304_p2;
        icmp_ln341_reg_586_pp0_iter1_reg <= icmp_ln341_reg_586;
        icmp_ln341_reg_586_pp0_iter2_reg <= icmp_ln341_reg_586_pp0_iter1_reg;
        icmp_ln341_reg_586_pp0_iter3_reg <= icmp_ln341_reg_586_pp0_iter2_reg;
        icmp_ln341_reg_586_pp0_iter4_reg <= icmp_ln341_reg_586_pp0_iter3_reg;
        select_ln341_reg_601 <= select_ln341_fu_342_p3;
        select_ln342_reg_595 <= select_ln342_fu_328_p3;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln347_1_reg_627 <= {{mul_ln347_fu_397_p2[15:13]}};
        trunc_ln347_1_reg_627_pp0_iter1_reg <= trunc_ln347_1_reg_627;
        trunc_ln347_1_reg_627_pp0_iter2_reg <= trunc_ln347_1_reg_627_pp0_iter1_reg;
        v217_reg_632 <= v217_fu_413_p9;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v218_reg_637 <= grp_fu_114593_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v219_reg_682 <= v219_fu_494_p19;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v220_reg_687 <= grp_fu_114561_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v221_reg_694 <= grp_fu_114593_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_0_addr_reg_642 <= zext_ln347_fu_450_p1;
        v2_0_addr_reg_642_pp0_iter2_reg <= v2_0_addr_reg_642;
        v2_1_addr_reg_647 <= zext_ln347_fu_450_p1;
        v2_1_addr_reg_647_pp0_iter2_reg <= v2_1_addr_reg_647;
        v2_2_addr_reg_652 <= zext_ln347_fu_450_p1;
        v2_2_addr_reg_652_pp0_iter2_reg <= v2_2_addr_reg_652;
        v2_3_addr_reg_657 <= zext_ln347_fu_450_p1;
        v2_3_addr_reg_657_pp0_iter2_reg <= v2_3_addr_reg_657;
        v2_4_addr_reg_662 <= zext_ln347_fu_450_p1;
        v2_4_addr_reg_662_pp0_iter2_reg <= v2_4_addr_reg_662;
        v2_5_addr_reg_667 <= zext_ln347_fu_450_p1;
        v2_5_addr_reg_667_pp0_iter2_reg <= v2_5_addr_reg_667;
        v2_6_addr_reg_672 <= zext_ln347_fu_450_p1;
        v2_6_addr_reg_672_pp0_iter2_reg <= v2_6_addr_reg_672;
        v2_7_addr_reg_677 <= zext_ln347_fu_450_p1;
        v2_7_addr_reg_677_pp0_iter2_reg <= v2_7_addr_reg_677;
    end
end
always @ (*) begin
    if (((icmp_ln341_reg_586 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln341_reg_586_pp0_iter4_reg == 1'd1))) begin
        ap_condition_exit_pp0_iter4_stage2 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter4_stage2 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
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
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_sig_allocacmp_v214_load_1 = grp_fu_114561_p_dout0;
    end else begin
        ap_sig_allocacmp_v214_load_1 = v214_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_272_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_272_opcode = 2'd0;
    end else begin
        grp_fu_272_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_272_p0 = ap_sig_allocacmp_v214_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_272_p0 = v219_reg_682;
    end else begin
        grp_fu_272_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_272_p1 = v221_reg_694;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_272_p1 = v218_reg_637;
    end else begin
        grp_fu_272_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_276_p0 = v220_reg_687;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_276_p0 = v217_reg_632;
    end else begin
        grp_fu_276_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_276_p1 = v220_reg_687;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_276_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_276_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_2_ce0_local = 1'b1;
    end else begin
        v10_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v10_ce0_local = 1'b1;
    end else begin
        v10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln341_reg_586_pp0_iter4_reg == 1'd1))) begin
        v216_out_ap_vld = 1'b1;
    end else begin
        v216_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address0_local = v2_0_addr_reg_642_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_0_address0_local = zext_ln347_fu_450_p1;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln347_1_reg_627_pp0_iter2_reg == 3'd0) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address0_local = v2_1_addr_reg_647_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_1_address0_local = zext_ln347_fu_450_p1;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln347_1_reg_627_pp0_iter2_reg == 3'd1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_2_address0_local = v2_2_addr_reg_652_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_2_address0_local = zext_ln347_fu_450_p1;
    end else begin
        v2_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln347_1_reg_627_pp0_iter2_reg == 3'd2) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_3_address0_local = v2_3_addr_reg_657_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_3_address0_local = zext_ln347_fu_450_p1;
    end else begin
        v2_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln347_1_reg_627_pp0_iter2_reg == 3'd3) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_4_address0_local = v2_4_addr_reg_662_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_4_address0_local = zext_ln347_fu_450_p1;
    end else begin
        v2_4_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_4_ce0_local = 1'b1;
    end else begin
        v2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln347_1_reg_627_pp0_iter2_reg == 3'd4) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_4_we0_local = 1'b1;
    end else begin
        v2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_5_address0_local = v2_5_addr_reg_667_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_5_address0_local = zext_ln347_fu_450_p1;
    end else begin
        v2_5_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_5_ce0_local = 1'b1;
    end else begin
        v2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln347_1_reg_627_pp0_iter2_reg == 3'd5) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_5_we0_local = 1'b1;
    end else begin
        v2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_6_address0_local = v2_6_addr_reg_672_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_6_address0_local = zext_ln347_fu_450_p1;
    end else begin
        v2_6_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_6_ce0_local = 1'b1;
    end else begin
        v2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln347_1_reg_627_pp0_iter2_reg == 3'd6) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_6_we0_local = 1'b1;
    end else begin
        v2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_7_address0_local = v2_7_addr_reg_677_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_7_address0_local = zext_ln347_fu_450_p1;
    end else begin
        v2_7_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage6_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6)) | ((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2)))) begin
        v2_7_ce0_local = 1'b1;
    end else begin
        v2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (trunc_ln347_1_reg_627_pp0_iter2_reg == 3'd7) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_7_we0_local = 1'b1;
    end else begin
        v2_7_we0_local = 1'b0;
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
            if (((ap_idle_pp0_0to3 == 1'b1) & (1'b1 == ap_condition_exit_pp0_iter4_stage2))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else if ((1'b0 == ap_block_pp0_stage2_subdone)) begin
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
assign add_ln341_1_fu_336_p2 = (v212_fu_114 + 7'd1);
assign add_ln341_fu_310_p2 = (indvar_flatten40_fu_118 + 8'd1);
assign add_ln345_fu_432_p2 = (select_ln342_reg_595 + 2'd1);
assign add_ln347_fu_383_p2 = (zext_ln345_fu_379_p1 + empty_2168_fu_373_p2);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_CS_fsm_pp0_stage2 = ap_CS_fsm[32'd2];
assign ap_CS_fsm_pp0_stage3 = ap_CS_fsm[32'd3];
assign ap_CS_fsm_pp0_stage6 = ap_CS_fsm[32'd6];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_01001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage2_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage3_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage4_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage5_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage6_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage6;
assign ap_ready = ap_ready_sig;
assign bitcast_ln351_fu_533_p1 = v220_reg_687;
assign empty_2168_fu_373_p2 = (p_shl_fu_365_p3 - v212_cast_fu_357_p1);
assign empty_fu_361_p1 = select_ln341_fu_342_p3[5:0];
assign grp_fu_114561_p_ce = 1'b1;
assign grp_fu_114561_p_din0 = grp_fu_272_p0;
assign grp_fu_114561_p_din1 = grp_fu_272_p1;
assign grp_fu_114561_p_opcode = grp_fu_272_opcode;
assign grp_fu_114593_p_ce = 1'b1;
assign grp_fu_114593_p_din0 = grp_fu_276_p0;
assign grp_fu_114593_p_din1 = grp_fu_276_p1;
assign grp_fu_389_p1 = 8'd24;
assign icmp_ln341_fu_304_p2 = ((indvar_flatten40_fu_118 == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln345_fu_322_p2 = ((v215_fu_110 == 2'd3) ? 1'b1 : 1'b0);
assign mul_ln347_fu_397_p0 = mul_ln347_fu_397_p00;
assign mul_ln347_fu_397_p00 = add_ln347_reg_621;
assign mul_ln347_fu_397_p1 = 17'd342;
assign p_shl_fu_365_p3 = {{empty_fu_361_p1}, {2'd0}};
assign select_ln341_fu_342_p3 = ((icmp_ln345_fu_322_p2[0:0] == 1'b1) ? add_ln341_1_fu_336_p2 : v212_fu_114);
assign select_ln342_fu_328_p3 = ((icmp_ln345_fu_322_p2[0:0] == 1'b1) ? 2'd0 : v215_fu_110);
assign v10_1_address0 = zext_ln341_fu_350_p1;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_2_address0 = zext_ln341_fu_350_p1;
assign v10_2_ce0 = v10_2_ce0_local;
assign v10_address0 = zext_ln341_fu_350_p1;
assign v10_ce0 = v10_ce0_local;
assign v212_cast_fu_357_p1 = select_ln341_fu_342_p3;
assign v216_out = v214_fu_106;
assign v217_fu_413_p7 = 'bx;
assign v219_fu_494_p10 = v2_4_q0;
assign v219_fu_494_p12 = v2_5_q0;
assign v219_fu_494_p14 = v2_6_q0;
assign v219_fu_494_p16 = v2_7_q0;
assign v219_fu_494_p17 = 'bx;
assign v219_fu_494_p2 = v2_0_q0;
assign v219_fu_494_p4 = v2_1_q0;
assign v219_fu_494_p6 = v2_2_q0;
assign v219_fu_494_p8 = v2_3_q0;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_d0 = bitcast_ln351_fu_533_p1;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_d0 = bitcast_ln351_fu_533_p1;
assign v2_1_we0 = v2_1_we0_local;
assign v2_2_address0 = v2_2_address0_local;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_d0 = bitcast_ln351_fu_533_p1;
assign v2_2_we0 = v2_2_we0_local;
assign v2_3_address0 = v2_3_address0_local;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_d0 = bitcast_ln351_fu_533_p1;
assign v2_3_we0 = v2_3_we0_local;
assign v2_4_address0 = v2_4_address0_local;
assign v2_4_ce0 = v2_4_ce0_local;
assign v2_4_d0 = bitcast_ln351_fu_533_p1;
assign v2_4_we0 = v2_4_we0_local;
assign v2_5_address0 = v2_5_address0_local;
assign v2_5_ce0 = v2_5_ce0_local;
assign v2_5_d0 = bitcast_ln351_fu_533_p1;
assign v2_5_we0 = v2_5_we0_local;
assign v2_6_address0 = v2_6_address0_local;
assign v2_6_ce0 = v2_6_ce0_local;
assign v2_6_d0 = bitcast_ln351_fu_533_p1;
assign v2_6_we0 = v2_6_we0_local;
assign v2_7_address0 = v2_7_address0_local;
assign v2_7_ce0 = v2_7_ce0_local;
assign v2_7_d0 = bitcast_ln351_fu_533_p1;
assign v2_7_we0 = v2_7_we0_local;
assign zext_ln341_fu_350_p1 = select_ln341_fu_342_p3;
assign zext_ln345_fu_379_p1 = select_ln342_fu_328_p3;
assign zext_ln347_fu_450_p1 = grp_fu_389_p2;
endmodule 
