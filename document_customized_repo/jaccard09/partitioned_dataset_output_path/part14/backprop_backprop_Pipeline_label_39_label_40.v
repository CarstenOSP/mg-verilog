
module backprop_backprop_Pipeline_label_39_label_40 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_q0,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_q0,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v10_address0,v10_ce0,v10_q0,v216_out,v216_out_ap_vld,grp_fu_2129_p_din0,grp_fu_2129_p_din1,grp_fu_2129_p_opcode,grp_fu_2129_p_dout0,grp_fu_2129_p_ce,grp_fu_2141_p_din0,grp_fu_2141_p_din1,grp_fu_2141_p_dout0,grp_fu_2141_p_ce);  
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
output  [5:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [63:0] v2_3_d0;
input  [63:0] v2_3_q0;
output  [5:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [63:0] v2_2_d0;
input  [63:0] v2_2_q0;
output  [5:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [63:0] v2_1_d0;
input  [63:0] v2_1_q0;
output  [5:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [63:0] v2_0_d0;
input  [63:0] v2_0_q0;
output  [7:0] v10_address0;
output   v10_ce0;
input  [63:0] v10_q0;
output  [63:0] v216_out;
output   v216_out_ap_vld;
output  [63:0] grp_fu_2129_p_din0;
output  [63:0] grp_fu_2129_p_din1;
output  [1:0] grp_fu_2129_p_opcode;
input  [63:0] grp_fu_2129_p_dout0;
output   grp_fu_2129_p_ce;
output  [63:0] grp_fu_2141_p_din0;
output  [63:0] grp_fu_2141_p_din1;
input  [63:0] grp_fu_2141_p_dout0;
output   grp_fu_2141_p_ce;
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
reg   [0:0] icmp_ln341_reg_415;
reg    ap_condition_exit_pp0_iter0_stage6;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] icmp_ln341_fu_196_p2;
reg   [0:0] icmp_ln341_reg_415_pp0_iter1_reg;
reg   [0:0] icmp_ln341_reg_415_pp0_iter2_reg;
reg   [0:0] icmp_ln341_reg_415_pp0_iter3_reg;
reg   [0:0] icmp_ln341_reg_415_pp0_iter4_reg;
wire   [1:0] select_ln342_fu_220_p3;
reg   [1:0] select_ln342_reg_419;
wire   [6:0] select_ln341_fu_234_p3;
reg   [6:0] select_ln341_reg_425;
wire   [5:0] trunc_ln345_fu_242_p1;
reg   [5:0] trunc_ln345_reg_431;
wire   [7:0] add_ln347_fu_270_p2;
reg   [7:0] add_ln347_reg_436;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_11001;
reg   [1:0] trunc_ln347_1_reg_447;
wire    ap_CS_fsm_pp0_stage2;
wire    ap_block_pp0_stage2_11001;
reg   [1:0] trunc_ln347_1_reg_447_pp0_iter1_reg;
reg   [1:0] trunc_ln347_1_reg_447_pp0_iter2_reg;
reg   [63:0] v217_reg_452;
reg   [63:0] v218_reg_457;
reg   [5:0] v2_0_addr_reg_462;
wire    ap_block_pp0_stage6_11001;
reg   [5:0] v2_0_addr_reg_462_pp0_iter2_reg;
reg   [5:0] v2_1_addr_reg_467;
reg   [5:0] v2_1_addr_reg_467_pp0_iter2_reg;
reg   [5:0] v2_2_addr_reg_472;
reg   [5:0] v2_2_addr_reg_472_pp0_iter2_reg;
reg   [5:0] v2_3_addr_reg_477;
reg   [5:0] v2_3_addr_reg_477_pp0_iter2_reg;
wire   [63:0] v219_fu_343_p11;
reg   [63:0] v219_reg_482;
reg   [63:0] v220_reg_487;
reg   [63:0] v221_reg_494;
reg    ap_enable_reg_pp0_iter0_reg;
wire    ap_block_pp0_stage2_subdone;
wire   [63:0] zext_ln347_fu_276_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln347_1_fu_319_p1;
wire    ap_block_pp0_stage6;
reg   [63:0] v214_fu_76;
reg   [63:0] ap_sig_allocacmp_v214_load_1;
wire    ap_block_pp0_stage2;
wire    ap_loop_init;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_condition_exit_pp0_iter4_stage2;
reg    ap_idle_pp0_0to3;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg   [1:0] v215_fu_80;
wire   [1:0] add_ln345_fu_281_p2;
reg   [1:0] ap_sig_allocacmp_v215_load;
wire    ap_block_pp0_stage0;
reg   [6:0] v212_fu_84;
reg   [6:0] ap_sig_allocacmp_v212_load;
reg   [7:0] indvar_flatten55_fu_88;
wire   [7:0] add_ln341_fu_202_p2;
reg   [7:0] ap_sig_allocacmp_indvar_flatten55_load;
wire    ap_block_pp0_stage2_01001;
reg    v10_ce0_local;
reg    v2_0_ce0_local;
reg   [5:0] v2_0_address0_local;
reg    v2_0_we0_local;
wire   [63:0] bitcast_ln351_fu_366_p1;
reg    v2_1_ce0_local;
reg   [5:0] v2_1_address0_local;
reg    v2_1_we0_local;
reg    v2_2_ce0_local;
reg   [5:0] v2_2_address0_local;
reg    v2_2_we0_local;
reg    v2_3_ce0_local;
reg   [5:0] v2_3_address0_local;
reg    v2_3_we0_local;
reg   [63:0] grp_fu_164_p0;
reg   [63:0] grp_fu_164_p1;
reg   [63:0] grp_fu_168_p0;
reg   [63:0] grp_fu_168_p1;
wire    ap_CS_fsm_pp0_stage3;
wire    ap_block_pp0_stage3;
wire   [0:0] icmp_ln345_fu_214_p2;
wire   [6:0] add_ln341_1_fu_228_p2;
wire   [7:0] p_shl_fu_254_p3;
wire   [7:0] zext_ln345_fu_251_p1;
wire   [7:0] zext_ln345_1_fu_267_p1;
wire   [7:0] sub_ln345_fu_261_p2;
wire   [6:0] grp_fu_295_p1;
wire   [7:0] mul_ln347_fu_303_p0;
wire   [9:0] mul_ln347_fu_303_p1;
wire   [16:0] mul_ln347_fu_303_p2;
wire   [7:0] grp_fu_295_p2;
wire   [63:0] v219_fu_343_p2;
wire   [63:0] v219_fu_343_p4;
wire   [63:0] v219_fu_343_p6;
wire   [63:0] v219_fu_343_p8;
wire   [63:0] v219_fu_343_p9;
reg   [1:0] grp_fu_164_opcode;
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
wire   [16:0] mul_ln347_fu_303_p00;
wire   [1:0] v219_fu_343_p1;
wire   [1:0] v219_fu_343_p3;
wire  signed [1:0] v219_fu_343_p5;
wire  signed [1:0] v219_fu_343_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 7'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v214_fu_76 = 64'd0;
#0 v215_fu_80 = 2'd0;
#0 v212_fu_84 = 7'd0;
#0 indvar_flatten55_fu_88 = 8'd0;
#0 ap_done_reg = 1'b0;
end
backprop_urem_8ns_7ns_8_12_1 #(.ID( 1 ),.NUM_STAGE( 12 ),.din0_WIDTH( 8 ),.din1_WIDTH( 7 ),.dout_WIDTH( 8 ))
urem_8ns_7ns_8_12_1_U547(.clk(ap_clk),.reset(ap_rst),.din0(add_ln347_reg_436),.din1(grp_fu_295_p1),.ce(1'b1),.dout(grp_fu_295_p2));
backprop_mul_8ns_10ns_17_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.din0_WIDTH( 8 ),.din1_WIDTH( 10 ),.dout_WIDTH( 17 ))
mul_8ns_10ns_17_1_1_U548(.din0(mul_ln347_fu_303_p0),.din1(mul_ln347_fu_303_p1),.dout(mul_ln347_fu_303_p2));
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U549(.din0(v219_fu_343_p2),.din1(v219_fu_343_p4),.din2(v219_fu_343_p6),.din3(v219_fu_343_p8),.def(v219_fu_343_p9),.sel(trunc_ln347_1_reg_447_pp0_iter1_reg),.dout(v219_fu_343_p11));
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (icmp_ln341_fu_196_p2 == 1'd0))) begin
            indvar_flatten55_fu_88 <= add_ln341_fu_202_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten55_fu_88 <= 8'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v212_fu_84 <= 7'd0;
    end else if (((icmp_ln341_reg_415 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v212_fu_84 <= select_ln341_reg_425;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v214_fu_76 <= 64'd0;
    end else if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v214_fu_76 <= grp_fu_2129_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v215_fu_80 <= 2'd0;
    end else if (((icmp_ln341_reg_415 == 1'd0) & (1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v215_fu_80 <= add_ln345_fu_281_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        add_ln347_reg_436 <= add_ln347_fu_270_p2;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        icmp_ln341_reg_415 <= icmp_ln341_fu_196_p2;
        icmp_ln341_reg_415_pp0_iter1_reg <= icmp_ln341_reg_415;
        icmp_ln341_reg_415_pp0_iter2_reg <= icmp_ln341_reg_415_pp0_iter1_reg;
        icmp_ln341_reg_415_pp0_iter3_reg <= icmp_ln341_reg_415_pp0_iter2_reg;
        icmp_ln341_reg_415_pp0_iter4_reg <= icmp_ln341_reg_415_pp0_iter3_reg;
        select_ln341_reg_425 <= select_ln341_fu_234_p3;
        select_ln342_reg_419 <= select_ln342_fu_220_p3;
        trunc_ln345_reg_431 <= trunc_ln345_fu_242_p1;
        v219_reg_482 <= v219_fu_343_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        trunc_ln347_1_reg_447 <= {{mul_ln347_fu_303_p2[15:14]}};
        trunc_ln347_1_reg_447_pp0_iter1_reg <= trunc_ln347_1_reg_447;
        trunc_ln347_1_reg_447_pp0_iter2_reg <= trunc_ln347_1_reg_447_pp0_iter1_reg;
        v217_reg_452 <= v10_q0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v218_reg_457 <= grp_fu_2141_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v220_reg_487 <= grp_fu_2129_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v221_reg_494 <= grp_fu_2141_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage6_11001) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_0_addr_reg_462 <= zext_ln347_1_fu_319_p1;
        v2_0_addr_reg_462_pp0_iter2_reg <= v2_0_addr_reg_462;
        v2_1_addr_reg_467 <= zext_ln347_1_fu_319_p1;
        v2_1_addr_reg_467_pp0_iter2_reg <= v2_1_addr_reg_467;
        v2_2_addr_reg_472 <= zext_ln347_1_fu_319_p1;
        v2_2_addr_reg_472_pp0_iter2_reg <= v2_2_addr_reg_472;
        v2_3_addr_reg_477 <= zext_ln347_1_fu_319_p1;
        v2_3_addr_reg_477_pp0_iter2_reg <= v2_3_addr_reg_477;
    end
end
always @ (*) begin
    if (((icmp_ln341_reg_415 == 1'd1) & (1'b0 == ap_block_pp0_stage6_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage6 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2_subdone) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln341_reg_415_pp0_iter4_reg == 1'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_indvar_flatten55_load = 8'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten55_load = indvar_flatten55_fu_88;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v212_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v212_load = v212_fu_84;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter5 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        ap_sig_allocacmp_v214_load_1 = grp_fu_2129_p_dout0;
    end else begin
        ap_sig_allocacmp_v214_load_1 = v214_fu_76;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v215_load = 2'd0;
    end else begin
        ap_sig_allocacmp_v215_load = v215_fu_80;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_00001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_164_opcode = 2'd1;
    end else if (((1'b0 == ap_block_pp0_stage2_00001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_164_opcode = 2'd0;
    end else begin
        grp_fu_164_opcode = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_164_p0 = ap_sig_allocacmp_v214_load_1;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_164_p0 = v219_reg_482;
    end else begin
        grp_fu_164_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter4 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_164_p1 = v221_reg_494;
    end else if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        grp_fu_164_p1 = v218_reg_457;
    end else begin
        grp_fu_164_p1 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_168_p0 = v220_reg_487;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_168_p0 = v217_reg_452;
    end else begin
        grp_fu_168_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        grp_fu_168_p1 = v220_reg_487;
    end else if (((1'b0 == ap_block_pp0_stage3) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage3))) begin
        grp_fu_168_p1 = 64'd4576918229304087675;
    end else begin
        grp_fu_168_p1 = 'bx;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_loop_exit_ready_pp0_iter4_reg == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (icmp_ln341_reg_415_pp0_iter4_reg == 1'd1))) begin
        v216_out_ap_vld = 1'b1;
    end else begin
        v216_out_ap_vld = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_0_address0_local = v2_0_addr_reg_462_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_0_address0_local = zext_ln347_1_fu_319_p1;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln347_1_reg_447_pp0_iter2_reg == 2'd0))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_1_address0_local = v2_1_addr_reg_467_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_1_address0_local = zext_ln347_1_fu_319_p1;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln347_1_reg_447_pp0_iter2_reg == 2'd1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_2_address0_local = v2_2_addr_reg_472_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_2_address0_local = zext_ln347_1_fu_319_p1;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln347_1_reg_447_pp0_iter2_reg == 2'd2))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage2) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2))) begin
        v2_3_address0_local = v2_3_addr_reg_477_pp0_iter2_reg;
    end else if (((1'b0 == ap_block_pp0_stage6) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage6))) begin
        v2_3_address0_local = zext_ln347_1_fu_319_p1;
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
    if (((1'b0 == ap_block_pp0_stage2_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage2) & (trunc_ln347_1_reg_447_pp0_iter2_reg == 2'd3))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
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
assign add_ln341_1_fu_228_p2 = (ap_sig_allocacmp_v212_load + 7'd1);
assign add_ln341_fu_202_p2 = (ap_sig_allocacmp_indvar_flatten55_load + 8'd1);
assign add_ln345_fu_281_p2 = (select_ln342_reg_419 + 2'd1);
assign add_ln347_fu_270_p2 = (zext_ln345_1_fu_267_p1 + sub_ln345_fu_261_p2);
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
assign bitcast_ln351_fu_366_p1 = v220_reg_487;
assign grp_fu_2129_p_ce = 1'b1;
assign grp_fu_2129_p_din0 = grp_fu_164_p0;
assign grp_fu_2129_p_din1 = grp_fu_164_p1;
assign grp_fu_2129_p_opcode = grp_fu_164_opcode;
assign grp_fu_2141_p_ce = 1'b1;
assign grp_fu_2141_p_din0 = grp_fu_168_p0;
assign grp_fu_2141_p_din1 = grp_fu_168_p1;
assign grp_fu_295_p1 = 8'd48;
assign icmp_ln341_fu_196_p2 = ((ap_sig_allocacmp_indvar_flatten55_load == 8'd192) ? 1'b1 : 1'b0);
assign icmp_ln345_fu_214_p2 = ((ap_sig_allocacmp_v215_load == 2'd3) ? 1'b1 : 1'b0);
assign mul_ln347_fu_303_p0 = mul_ln347_fu_303_p00;
assign mul_ln347_fu_303_p00 = add_ln347_reg_436;
assign mul_ln347_fu_303_p1 = 17'd342;
assign p_shl_fu_254_p3 = {{trunc_ln345_reg_431}, {2'd0}};
assign select_ln341_fu_234_p3 = ((icmp_ln345_fu_214_p2[0:0] == 1'b1) ? add_ln341_1_fu_228_p2 : ap_sig_allocacmp_v212_load);
assign select_ln342_fu_220_p3 = ((icmp_ln345_fu_214_p2[0:0] == 1'b1) ? 2'd0 : ap_sig_allocacmp_v215_load);
assign sub_ln345_fu_261_p2 = (p_shl_fu_254_p3 - zext_ln345_fu_251_p1);
assign trunc_ln345_fu_242_p1 = select_ln341_fu_234_p3[5:0];
assign v10_address0 = zext_ln347_fu_276_p1;
assign v10_ce0 = v10_ce0_local;
assign v216_out = v214_fu_76;
assign v219_fu_343_p2 = v2_0_q0;
assign v219_fu_343_p4 = v2_1_q0;
assign v219_fu_343_p6 = v2_2_q0;
assign v219_fu_343_p8 = v2_3_q0;
assign v219_fu_343_p9 = 'bx;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_d0 = bitcast_ln351_fu_366_p1;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_d0 = bitcast_ln351_fu_366_p1;
assign v2_1_we0 = v2_1_we0_local;
assign v2_2_address0 = v2_2_address0_local;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_d0 = bitcast_ln351_fu_366_p1;
assign v2_2_we0 = v2_2_we0_local;
assign v2_3_address0 = v2_3_address0_local;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_d0 = bitcast_ln351_fu_366_p1;
assign v2_3_we0 = v2_3_we0_local;
assign zext_ln345_1_fu_267_p1 = select_ln342_reg_419;
assign zext_ln345_fu_251_p1 = select_ln341_reg_425;
assign zext_ln347_1_fu_319_p1 = grp_fu_295_p2;
assign zext_ln347_fu_276_p1 = add_ln347_fu_270_p2;
endmodule 
