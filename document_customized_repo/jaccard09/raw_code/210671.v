module SgdLR_sw_SgdLR_sw_Pipeline_label_427 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_address1,v2_3_ce1,v2_3_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_address1,v2_2_ce1,v2_2_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_address1,v2_1_ce1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_address1,v2_0_ce1,v2_0_q1,v3_address0,v3_ce0,v3_q0,grp_fu_1077_p_din0,grp_fu_1077_p_din1,grp_fu_1077_p_opcode,grp_fu_1077_p_dout0,grp_fu_1077_p_ce,grp_fu_2697_p_din0,grp_fu_2697_p_din1,grp_fu_2697_p_dout0,grp_fu_2697_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [7:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [31:0] v2_3_d0;
output  [7:0] v2_3_address1;
output   v2_3_ce1;
input  [31:0] v2_3_q1;
output  [7:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [31:0] v2_2_d0;
output  [7:0] v2_2_address1;
output   v2_2_ce1;
input  [31:0] v2_2_q1;
output  [7:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
output  [7:0] v2_1_address1;
output   v2_1_ce1;
input  [31:0] v2_1_q1;
output  [7:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
output  [7:0] v2_0_address1;
output   v2_0_ce1;
input  [31:0] v2_0_q1;
output  [9:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [31:0] grp_fu_1077_p_din0;
output  [31:0] grp_fu_1077_p_din1;
output  [0:0] grp_fu_1077_p_opcode;
input  [31:0] grp_fu_1077_p_dout0;
output   grp_fu_1077_p_ce;
output  [31:0] grp_fu_2697_p_din0;
output  [31:0] grp_fu_2697_p_din1;
input  [31:0] grp_fu_2697_p_dout0;
output   grp_fu_2697_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_enable_reg_pp0_iter8;
reg    ap_enable_reg_pp0_iter9;
reg    ap_enable_reg_pp0_iter10;
reg    ap_enable_reg_pp0_iter11;
reg    ap_enable_reg_pp0_iter12;
reg    ap_enable_reg_pp0_iter13;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln55_fu_162_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [1:0] trunc_ln55_fu_179_p1;
reg   [1:0] trunc_ln55_reg_259;
reg   [1:0] trunc_ln55_reg_259_pp0_iter1_reg;
reg   [1:0] trunc_ln55_reg_259_pp0_iter2_reg;
reg   [1:0] trunc_ln55_reg_259_pp0_iter3_reg;
reg   [1:0] trunc_ln55_reg_259_pp0_iter4_reg;
reg   [1:0] trunc_ln55_reg_259_pp0_iter5_reg;
reg   [1:0] trunc_ln55_reg_259_pp0_iter6_reg;
reg   [1:0] trunc_ln55_reg_259_pp0_iter7_reg;
reg   [1:0] trunc_ln55_reg_259_pp0_iter8_reg;
reg   [1:0] trunc_ln55_reg_259_pp0_iter9_reg;
reg   [1:0] trunc_ln55_reg_259_pp0_iter10_reg;
reg   [1:0] trunc_ln55_reg_259_pp0_iter11_reg;
reg   [1:0] trunc_ln55_reg_259_pp0_iter12_reg;
reg   [7:0] lshr_ln55_6_reg_264;
reg   [7:0] lshr_ln55_6_reg_264_pp0_iter1_reg;
reg   [7:0] lshr_ln55_6_reg_264_pp0_iter2_reg;
reg   [7:0] lshr_ln55_6_reg_264_pp0_iter3_reg;
reg   [31:0] v26_reg_274;
reg   [7:0] v2_0_addr_reg_279;
reg   [7:0] v2_0_addr_reg_279_pp0_iter5_reg;
reg   [7:0] v2_0_addr_reg_279_pp0_iter6_reg;
reg   [7:0] v2_0_addr_reg_279_pp0_iter7_reg;
reg   [7:0] v2_0_addr_reg_279_pp0_iter8_reg;
reg   [7:0] v2_0_addr_reg_279_pp0_iter9_reg;
reg   [7:0] v2_0_addr_reg_279_pp0_iter10_reg;
reg   [7:0] v2_0_addr_reg_279_pp0_iter11_reg;
reg   [7:0] v2_0_addr_reg_279_pp0_iter12_reg;
reg   [7:0] v2_1_addr_reg_285;
reg   [7:0] v2_1_addr_reg_285_pp0_iter5_reg;
reg   [7:0] v2_1_addr_reg_285_pp0_iter6_reg;
reg   [7:0] v2_1_addr_reg_285_pp0_iter7_reg;
reg   [7:0] v2_1_addr_reg_285_pp0_iter8_reg;
reg   [7:0] v2_1_addr_reg_285_pp0_iter9_reg;
reg   [7:0] v2_1_addr_reg_285_pp0_iter10_reg;
reg   [7:0] v2_1_addr_reg_285_pp0_iter11_reg;
reg   [7:0] v2_1_addr_reg_285_pp0_iter12_reg;
reg   [7:0] v2_2_addr_reg_291;
reg   [7:0] v2_2_addr_reg_291_pp0_iter5_reg;
reg   [7:0] v2_2_addr_reg_291_pp0_iter6_reg;
reg   [7:0] v2_2_addr_reg_291_pp0_iter7_reg;
reg   [7:0] v2_2_addr_reg_291_pp0_iter8_reg;
reg   [7:0] v2_2_addr_reg_291_pp0_iter9_reg;
reg   [7:0] v2_2_addr_reg_291_pp0_iter10_reg;
reg   [7:0] v2_2_addr_reg_291_pp0_iter11_reg;
reg   [7:0] v2_2_addr_reg_291_pp0_iter12_reg;
reg   [7:0] v2_3_addr_reg_297;
reg   [7:0] v2_3_addr_reg_297_pp0_iter5_reg;
reg   [7:0] v2_3_addr_reg_297_pp0_iter6_reg;
reg   [7:0] v2_3_addr_reg_297_pp0_iter7_reg;
reg   [7:0] v2_3_addr_reg_297_pp0_iter8_reg;
reg   [7:0] v2_3_addr_reg_297_pp0_iter9_reg;
reg   [7:0] v2_3_addr_reg_297_pp0_iter10_reg;
reg   [7:0] v2_3_addr_reg_297_pp0_iter11_reg;
reg   [7:0] v2_3_addr_reg_297_pp0_iter12_reg;
reg   [31:0] v27_reg_303;
wire   [31:0] v28_fu_221_p11;
reg   [31:0] v28_reg_308;
wire   [31:0] bitcast_ln60_fu_244_p1;
reg   [31:0] bitcast_ln60_reg_313;
wire   [63:0] zext_ln55_fu_174_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_9_fu_198_p1;
reg   [10:0] v25_6_fu_60;
wire   [10:0] add_ln55_fu_168_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25;
reg    v3_ce0_local;
reg    v2_0_ce1_local;
reg    v2_0_we0_local;
reg    v2_0_ce0_local;
reg    v2_1_ce1_local;
reg    v2_1_we0_local;
reg    v2_1_ce0_local;
reg    v2_2_ce1_local;
reg    v2_2_we0_local;
reg    v2_2_ce0_local;
reg    v2_3_ce1_local;
reg    v2_3_we0_local;
reg    v2_3_ce0_local;
wire   [31:0] v28_fu_221_p2;
wire   [31:0] v28_fu_221_p4;
wire   [31:0] v28_fu_221_p6;
wire   [31:0] v28_fu_221_p8;
wire   [31:0] v28_fu_221_p9;
wire    ap_block_pp0_stage0_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg    ap_loop_exit_ready_pp0_iter7_reg;
reg    ap_loop_exit_ready_pp0_iter8_reg;
reg    ap_loop_exit_ready_pp0_iter9_reg;
reg    ap_loop_exit_ready_pp0_iter10_reg;
reg    ap_loop_exit_ready_pp0_iter11_reg;
reg    ap_loop_exit_ready_pp0_iter12_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v28_fu_221_p1;
wire   [1:0] v28_fu_221_p3;
wire  signed [1:0] v28_fu_221_p5;
wire  signed [1:0] v28_fu_221_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter8 = 1'b0;
#0 ap_enable_reg_pp0_iter9 = 1'b0;
#0 ap_enable_reg_pp0_iter10 = 1'b0;
#0 ap_enable_reg_pp0_iter11 = 1'b0;
#0 ap_enable_reg_pp0_iter12 = 1'b0;
#0 ap_enable_reg_pp0_iter13 = 1'b0;
#0 v25_6_fu_60 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U236(.din0(v28_fu_221_p2),.din1(v28_fu_221_p4),.din2(v28_fu_221_p6),.din3(v28_fu_221_p8),.def(v28_fu_221_p9),.sel(trunc_ln55_reg_259_pp0_iter4_reg),.dout(v28_fu_221_p11));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter10 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter10 <= ap_enable_reg_pp0_iter9;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter11 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter11 <= ap_enable_reg_pp0_iter10;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter12 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter12 <= ap_enable_reg_pp0_iter11;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter13 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter13 <= ap_enable_reg_pp0_iter12;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter8 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter8 <= ap_enable_reg_pp0_iter7;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter9 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter9 <= ap_enable_reg_pp0_iter8;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln55_fu_162_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v25_6_fu_60 <= add_ln55_fu_168_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_6_fu_60 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter10_reg <= ap_loop_exit_ready_pp0_iter9_reg;
        ap_loop_exit_ready_pp0_iter11_reg <= ap_loop_exit_ready_pp0_iter10_reg;
        ap_loop_exit_ready_pp0_iter12_reg <= ap_loop_exit_ready_pp0_iter11_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        bitcast_ln60_reg_313 <= bitcast_ln60_fu_244_p1;
        lshr_ln55_6_reg_264_pp0_iter2_reg <= lshr_ln55_6_reg_264_pp0_iter1_reg;
        lshr_ln55_6_reg_264_pp0_iter3_reg <= lshr_ln55_6_reg_264_pp0_iter2_reg;
        trunc_ln55_reg_259_pp0_iter10_reg <= trunc_ln55_reg_259_pp0_iter9_reg;
        trunc_ln55_reg_259_pp0_iter11_reg <= trunc_ln55_reg_259_pp0_iter10_reg;
        trunc_ln55_reg_259_pp0_iter12_reg <= trunc_ln55_reg_259_pp0_iter11_reg;
        trunc_ln55_reg_259_pp0_iter2_reg <= trunc_ln55_reg_259_pp0_iter1_reg;
        trunc_ln55_reg_259_pp0_iter3_reg <= trunc_ln55_reg_259_pp0_iter2_reg;
        trunc_ln55_reg_259_pp0_iter4_reg <= trunc_ln55_reg_259_pp0_iter3_reg;
        trunc_ln55_reg_259_pp0_iter5_reg <= trunc_ln55_reg_259_pp0_iter4_reg;
        trunc_ln55_reg_259_pp0_iter6_reg <= trunc_ln55_reg_259_pp0_iter5_reg;
        trunc_ln55_reg_259_pp0_iter7_reg <= trunc_ln55_reg_259_pp0_iter6_reg;
        trunc_ln55_reg_259_pp0_iter8_reg <= trunc_ln55_reg_259_pp0_iter7_reg;
        trunc_ln55_reg_259_pp0_iter9_reg <= trunc_ln55_reg_259_pp0_iter8_reg;
        v27_reg_303 <= grp_fu_2697_p_dout0;
        v28_reg_308 <= v28_fu_221_p11;
        v2_0_addr_reg_279 <= zext_ln55_9_fu_198_p1;
        v2_0_addr_reg_279_pp0_iter10_reg <= v2_0_addr_reg_279_pp0_iter9_reg;
        v2_0_addr_reg_279_pp0_iter11_reg <= v2_0_addr_reg_279_pp0_iter10_reg;
        v2_0_addr_reg_279_pp0_iter12_reg <= v2_0_addr_reg_279_pp0_iter11_reg;
        v2_0_addr_reg_279_pp0_iter5_reg <= v2_0_addr_reg_279;
        v2_0_addr_reg_279_pp0_iter6_reg <= v2_0_addr_reg_279_pp0_iter5_reg;
        v2_0_addr_reg_279_pp0_iter7_reg <= v2_0_addr_reg_279_pp0_iter6_reg;
        v2_0_addr_reg_279_pp0_iter8_reg <= v2_0_addr_reg_279_pp0_iter7_reg;
        v2_0_addr_reg_279_pp0_iter9_reg <= v2_0_addr_reg_279_pp0_iter8_reg;
        v2_1_addr_reg_285 <= zext_ln55_9_fu_198_p1;
        v2_1_addr_reg_285_pp0_iter10_reg <= v2_1_addr_reg_285_pp0_iter9_reg;
        v2_1_addr_reg_285_pp0_iter11_reg <= v2_1_addr_reg_285_pp0_iter10_reg;
        v2_1_addr_reg_285_pp0_iter12_reg <= v2_1_addr_reg_285_pp0_iter11_reg;
        v2_1_addr_reg_285_pp0_iter5_reg <= v2_1_addr_reg_285;
        v2_1_addr_reg_285_pp0_iter6_reg <= v2_1_addr_reg_285_pp0_iter5_reg;
        v2_1_addr_reg_285_pp0_iter7_reg <= v2_1_addr_reg_285_pp0_iter6_reg;
        v2_1_addr_reg_285_pp0_iter8_reg <= v2_1_addr_reg_285_pp0_iter7_reg;
        v2_1_addr_reg_285_pp0_iter9_reg <= v2_1_addr_reg_285_pp0_iter8_reg;
        v2_2_addr_reg_291 <= zext_ln55_9_fu_198_p1;
        v2_2_addr_reg_291_pp0_iter10_reg <= v2_2_addr_reg_291_pp0_iter9_reg;
        v2_2_addr_reg_291_pp0_iter11_reg <= v2_2_addr_reg_291_pp0_iter10_reg;
        v2_2_addr_reg_291_pp0_iter12_reg <= v2_2_addr_reg_291_pp0_iter11_reg;
        v2_2_addr_reg_291_pp0_iter5_reg <= v2_2_addr_reg_291;
        v2_2_addr_reg_291_pp0_iter6_reg <= v2_2_addr_reg_291_pp0_iter5_reg;
        v2_2_addr_reg_291_pp0_iter7_reg <= v2_2_addr_reg_291_pp0_iter6_reg;
        v2_2_addr_reg_291_pp0_iter8_reg <= v2_2_addr_reg_291_pp0_iter7_reg;
        v2_2_addr_reg_291_pp0_iter9_reg <= v2_2_addr_reg_291_pp0_iter8_reg;
        v2_3_addr_reg_297 <= zext_ln55_9_fu_198_p1;
        v2_3_addr_reg_297_pp0_iter10_reg <= v2_3_addr_reg_297_pp0_iter9_reg;
        v2_3_addr_reg_297_pp0_iter11_reg <= v2_3_addr_reg_297_pp0_iter10_reg;
        v2_3_addr_reg_297_pp0_iter12_reg <= v2_3_addr_reg_297_pp0_iter11_reg;
        v2_3_addr_reg_297_pp0_iter5_reg <= v2_3_addr_reg_297;
        v2_3_addr_reg_297_pp0_iter6_reg <= v2_3_addr_reg_297_pp0_iter5_reg;
        v2_3_addr_reg_297_pp0_iter7_reg <= v2_3_addr_reg_297_pp0_iter6_reg;
        v2_3_addr_reg_297_pp0_iter8_reg <= v2_3_addr_reg_297_pp0_iter7_reg;
        v2_3_addr_reg_297_pp0_iter9_reg <= v2_3_addr_reg_297_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln55_6_reg_264 <= {{ap_sig_allocacmp_v25[9:2]}};
        lshr_ln55_6_reg_264_pp0_iter1_reg <= lshr_ln55_6_reg_264;
        trunc_ln55_reg_259 <= trunc_ln55_fu_179_p1;
        trunc_ln55_reg_259_pp0_iter1_reg <= trunc_ln55_reg_259;
        v26_reg_274 <= v3_q0;
    end
end
always @ (*) begin
    if (((icmp_ln55_fu_162_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter12_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end
always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter13 == 1'b0) & (ap_enable_reg_pp0_iter12 == 1'b0) & (ap_enable_reg_pp0_iter11 == 1'b0) & (ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25 = v25_6_fu_60;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_reg_259_pp0_iter12_reg == 2'd0))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_reg_259_pp0_iter12_reg == 2'd1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_2_ce0_local = 1'b1;
    end else begin
        v2_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_2_ce1_local = 1'b1;
    end else begin
        v2_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_reg_259_pp0_iter12_reg == 2'd2))) begin
        v2_2_we0_local = 1'b1;
    end else begin
        v2_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_3_ce0_local = 1'b1;
    end else begin
        v2_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_3_ce1_local = 1'b1;
    end else begin
        v2_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_reg_259_pp0_iter12_reg == 2'd3))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_168_p2 = (ap_sig_allocacmp_v25 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_fu_244_p1 = grp_fu_1077_p_dout0;
assign grp_fu_1077_p_ce = 1'b1;
assign grp_fu_1077_p_din0 = v28_reg_308;
assign grp_fu_1077_p_din1 = v27_reg_303;
assign grp_fu_1077_p_opcode = 2'd0;
assign grp_fu_2697_p_ce = 1'b1;
assign grp_fu_2697_p_din0 = v26_reg_274;
assign grp_fu_2697_p_din1 = 32'd3345637376;
assign icmp_ln55_fu_162_p2 = ((ap_sig_allocacmp_v25 == 11'd1024) ? 1'b1 : 1'b0);
assign trunc_ln55_fu_179_p1 = ap_sig_allocacmp_v25[1:0];
assign v28_fu_221_p2 = v2_0_q1;
assign v28_fu_221_p4 = v2_1_q1;
assign v28_fu_221_p6 = v2_2_q1;
assign v28_fu_221_p8 = v2_3_q1;
assign v28_fu_221_p9 = 'bx;
assign v2_0_address0 = v2_0_addr_reg_279_pp0_iter12_reg;
assign v2_0_address1 = zext_ln55_9_fu_198_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_reg_313;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_addr_reg_285_pp0_iter12_reg;
assign v2_1_address1 = zext_ln55_9_fu_198_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_reg_313;
assign v2_1_we0 = v2_1_we0_local;
assign v2_2_address0 = v2_2_addr_reg_291_pp0_iter12_reg;
assign v2_2_address1 = zext_ln55_9_fu_198_p1;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = bitcast_ln60_reg_313;
assign v2_2_we0 = v2_2_we0_local;
assign v2_3_address0 = v2_3_addr_reg_297_pp0_iter12_reg;
assign v2_3_address1 = zext_ln55_9_fu_198_p1;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = bitcast_ln60_reg_313;
assign v2_3_we0 = v2_3_we0_local;
assign v3_address0 = zext_ln55_fu_174_p1;
assign v3_ce0 = v3_ce0_local;
assign zext_ln55_9_fu_198_p1 = lshr_ln55_6_reg_264_pp0_iter3_reg;
assign zext_ln55_fu_174_p1 = ap_sig_allocacmp_v25;
endmodule 