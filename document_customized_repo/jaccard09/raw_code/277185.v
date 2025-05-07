module backprop_backprop_Pipeline_label_8 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v19_3_address0,v19_3_ce0,v19_3_we0,v19_3_d0,v19_3_address1,v19_3_ce1,v19_3_q1,v19_2_address0,v19_2_ce0,v19_2_we0,v19_2_d0,v19_2_address1,v19_2_ce1,v19_2_q1,v19_1_address0,v19_1_ce0,v19_1_we0,v19_1_d0,v19_1_address1,v19_1_ce1,v19_1_q1,v19_address0,v19_ce0,v19_we0,v19_d0,v19_address1,v19_ce1,v19_q1,v4_0_address0,v4_0_ce0,v4_0_q0,v4_1_address0,v4_1_ce0,v4_1_q0,grp_fu_30844_p_din0,grp_fu_30844_p_din1,grp_fu_30844_p_opcode,grp_fu_30844_p_dout0,grp_fu_30844_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [3:0] v19_3_address0;
output   v19_3_ce0;
output   v19_3_we0;
output  [63:0] v19_3_d0;
output  [3:0] v19_3_address1;
output   v19_3_ce1;
input  [63:0] v19_3_q1;
output  [3:0] v19_2_address0;
output   v19_2_ce0;
output   v19_2_we0;
output  [63:0] v19_2_d0;
output  [3:0] v19_2_address1;
output   v19_2_ce1;
input  [63:0] v19_2_q1;
output  [3:0] v19_1_address0;
output   v19_1_ce0;
output   v19_1_we0;
output  [63:0] v19_1_d0;
output  [3:0] v19_1_address1;
output   v19_1_ce1;
input  [63:0] v19_1_q1;
output  [3:0] v19_address0;
output   v19_ce0;
output   v19_we0;
output  [63:0] v19_d0;
output  [3:0] v19_address1;
output   v19_ce1;
input  [63:0] v19_q1;
output  [4:0] v4_0_address0;
output   v4_0_ce0;
input  [63:0] v4_0_q0;
output  [4:0] v4_1_address0;
output   v4_1_ce0;
input  [63:0] v4_1_q0;
output  [63:0] grp_fu_30844_p_din0;
output  [63:0] grp_fu_30844_p_din1;
output  [0:0] grp_fu_30844_p_opcode;
input  [63:0] grp_fu_30844_p_dout0;
output   grp_fu_30844_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln105_fu_172_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln105_fu_184_p1;
reg   [0:0] trunc_ln105_reg_276;
wire   [1:0] trunc_ln105_1_fu_188_p1;
reg   [1:0] trunc_ln105_1_reg_281;
reg   [1:0] trunc_ln105_1_reg_281_pp0_iter1_reg;
reg   [1:0] trunc_ln105_1_reg_281_pp0_iter2_reg;
reg   [1:0] trunc_ln105_1_reg_281_pp0_iter3_reg;
reg   [1:0] trunc_ln105_1_reg_281_pp0_iter4_reg;
reg   [1:0] trunc_ln105_1_reg_281_pp0_iter5_reg;
reg   [1:0] trunc_ln105_1_reg_281_pp0_iter6_reg;
reg   [1:0] trunc_ln105_1_reg_281_pp0_iter7_reg;
reg   [1:0] trunc_ln105_1_reg_281_pp0_iter8_reg;
reg   [1:0] trunc_ln105_1_reg_281_pp0_iter9_reg;
reg   [3:0] v19_addr_reg_286;
reg   [3:0] v19_addr_reg_286_pp0_iter1_reg;
reg   [3:0] v19_addr_reg_286_pp0_iter2_reg;
reg   [3:0] v19_addr_reg_286_pp0_iter3_reg;
reg   [3:0] v19_addr_reg_286_pp0_iter4_reg;
reg   [3:0] v19_addr_reg_286_pp0_iter5_reg;
reg   [3:0] v19_addr_reg_286_pp0_iter6_reg;
reg   [3:0] v19_addr_reg_286_pp0_iter7_reg;
reg   [3:0] v19_addr_reg_286_pp0_iter8_reg;
reg   [3:0] v19_addr_reg_286_pp0_iter9_reg;
reg   [3:0] v19_1_addr_reg_292;
reg   [3:0] v19_1_addr_reg_292_pp0_iter1_reg;
reg   [3:0] v19_1_addr_reg_292_pp0_iter2_reg;
reg   [3:0] v19_1_addr_reg_292_pp0_iter3_reg;
reg   [3:0] v19_1_addr_reg_292_pp0_iter4_reg;
reg   [3:0] v19_1_addr_reg_292_pp0_iter5_reg;
reg   [3:0] v19_1_addr_reg_292_pp0_iter6_reg;
reg   [3:0] v19_1_addr_reg_292_pp0_iter7_reg;
reg   [3:0] v19_1_addr_reg_292_pp0_iter8_reg;
reg   [3:0] v19_1_addr_reg_292_pp0_iter9_reg;
reg   [3:0] v19_2_addr_reg_298;
reg   [3:0] v19_2_addr_reg_298_pp0_iter1_reg;
reg   [3:0] v19_2_addr_reg_298_pp0_iter2_reg;
reg   [3:0] v19_2_addr_reg_298_pp0_iter3_reg;
reg   [3:0] v19_2_addr_reg_298_pp0_iter4_reg;
reg   [3:0] v19_2_addr_reg_298_pp0_iter5_reg;
reg   [3:0] v19_2_addr_reg_298_pp0_iter6_reg;
reg   [3:0] v19_2_addr_reg_298_pp0_iter7_reg;
reg   [3:0] v19_2_addr_reg_298_pp0_iter8_reg;
reg   [3:0] v19_2_addr_reg_298_pp0_iter9_reg;
reg   [3:0] v19_3_addr_reg_304;
reg   [3:0] v19_3_addr_reg_304_pp0_iter1_reg;
reg   [3:0] v19_3_addr_reg_304_pp0_iter2_reg;
reg   [3:0] v19_3_addr_reg_304_pp0_iter3_reg;
reg   [3:0] v19_3_addr_reg_304_pp0_iter4_reg;
reg   [3:0] v19_3_addr_reg_304_pp0_iter5_reg;
reg   [3:0] v19_3_addr_reg_304_pp0_iter6_reg;
reg   [3:0] v19_3_addr_reg_304_pp0_iter7_reg;
reg   [3:0] v19_3_addr_reg_304_pp0_iter8_reg;
reg   [3:0] v19_3_addr_reg_304_pp0_iter9_reg;
wire   [63:0] v50_fu_231_p11;
reg   [63:0] v50_reg_320;
wire   [63:0] select_ln107_fu_254_p3;
reg   [63:0] select_ln107_reg_325;
wire   [63:0] v51_fu_261_p1;
reg   [63:0] v52_reg_335;
wire   [63:0] zext_ln105_fu_202_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln105_1_fu_220_p1;
reg   [6:0] v49_fu_62;
wire   [6:0] add_ln105_fu_178_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v49_1;
reg    v19_ce1_local;
reg    v19_we0_local;
reg    v19_ce0_local;
reg    v19_1_ce1_local;
reg    v19_1_we0_local;
reg    v19_1_ce0_local;
reg    v19_2_ce1_local;
reg    v19_2_we0_local;
reg    v19_2_ce0_local;
reg    v19_3_ce1_local;
reg    v19_3_we0_local;
reg    v19_3_ce0_local;
reg    v4_0_ce0_local;
reg    v4_1_ce0_local;
wire   [3:0] lshr_ln3_fu_192_p4;
wire   [4:0] lshr_ln105_1_fu_210_p4;
wire   [63:0] v50_fu_231_p9;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v50_fu_231_p1;
wire   [1:0] v50_fu_231_p3;
wire  signed [1:0] v50_fu_231_p5;
wire  signed [1:0] v50_fu_231_p7;
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
#0 v49_fu_62 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_9_2_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 64 ),.CASE1( 2'h1 ),.din1_WIDTH( 64 ),.CASE2( 2'h2 ),.din2_WIDTH( 64 ),.CASE3( 2'h3 ),.din3_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 2 ),.dout_WIDTH( 64 ))
sparsemux_9_2_64_1_1_U2188(.din0(v19_q1),.din1(v19_1_q1),.din2(v19_2_q1),.din3(v19_3_q1),.def(v50_fu_231_p9),.sel(trunc_ln105_1_reg_281),.dout(v50_fu_231_p11));
backprop_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
        if (((icmp_ln105_fu_172_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v49_fu_62 <= add_ln105_fu_178_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v49_fu_62 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        select_ln107_reg_325 <= select_ln107_fu_254_p3;
        trunc_ln105_1_reg_281 <= trunc_ln105_1_fu_188_p1;
        trunc_ln105_1_reg_281_pp0_iter1_reg <= trunc_ln105_1_reg_281;
        trunc_ln105_reg_276 <= trunc_ln105_fu_184_p1;
        v19_1_addr_reg_292 <= zext_ln105_fu_202_p1;
        v19_1_addr_reg_292_pp0_iter1_reg <= v19_1_addr_reg_292;
        v19_2_addr_reg_298 <= zext_ln105_fu_202_p1;
        v19_2_addr_reg_298_pp0_iter1_reg <= v19_2_addr_reg_298;
        v19_3_addr_reg_304 <= zext_ln105_fu_202_p1;
        v19_3_addr_reg_304_pp0_iter1_reg <= v19_3_addr_reg_304;
        v19_addr_reg_286 <= zext_ln105_fu_202_p1;
        v19_addr_reg_286_pp0_iter1_reg <= v19_addr_reg_286;
        v50_reg_320 <= v50_fu_231_p11;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        ap_loop_exit_ready_pp0_iter7_reg <= ap_loop_exit_ready_pp0_iter6_reg;
        ap_loop_exit_ready_pp0_iter8_reg <= ap_loop_exit_ready_pp0_iter7_reg;
        ap_loop_exit_ready_pp0_iter9_reg <= ap_loop_exit_ready_pp0_iter8_reg;
        trunc_ln105_1_reg_281_pp0_iter2_reg <= trunc_ln105_1_reg_281_pp0_iter1_reg;
        trunc_ln105_1_reg_281_pp0_iter3_reg <= trunc_ln105_1_reg_281_pp0_iter2_reg;
        trunc_ln105_1_reg_281_pp0_iter4_reg <= trunc_ln105_1_reg_281_pp0_iter3_reg;
        trunc_ln105_1_reg_281_pp0_iter5_reg <= trunc_ln105_1_reg_281_pp0_iter4_reg;
        trunc_ln105_1_reg_281_pp0_iter6_reg <= trunc_ln105_1_reg_281_pp0_iter5_reg;
        trunc_ln105_1_reg_281_pp0_iter7_reg <= trunc_ln105_1_reg_281_pp0_iter6_reg;
        trunc_ln105_1_reg_281_pp0_iter8_reg <= trunc_ln105_1_reg_281_pp0_iter7_reg;
        trunc_ln105_1_reg_281_pp0_iter9_reg <= trunc_ln105_1_reg_281_pp0_iter8_reg;
        v19_1_addr_reg_292_pp0_iter2_reg <= v19_1_addr_reg_292_pp0_iter1_reg;
        v19_1_addr_reg_292_pp0_iter3_reg <= v19_1_addr_reg_292_pp0_iter2_reg;
        v19_1_addr_reg_292_pp0_iter4_reg <= v19_1_addr_reg_292_pp0_iter3_reg;
        v19_1_addr_reg_292_pp0_iter5_reg <= v19_1_addr_reg_292_pp0_iter4_reg;
        v19_1_addr_reg_292_pp0_iter6_reg <= v19_1_addr_reg_292_pp0_iter5_reg;
        v19_1_addr_reg_292_pp0_iter7_reg <= v19_1_addr_reg_292_pp0_iter6_reg;
        v19_1_addr_reg_292_pp0_iter8_reg <= v19_1_addr_reg_292_pp0_iter7_reg;
        v19_1_addr_reg_292_pp0_iter9_reg <= v19_1_addr_reg_292_pp0_iter8_reg;
        v19_2_addr_reg_298_pp0_iter2_reg <= v19_2_addr_reg_298_pp0_iter1_reg;
        v19_2_addr_reg_298_pp0_iter3_reg <= v19_2_addr_reg_298_pp0_iter2_reg;
        v19_2_addr_reg_298_pp0_iter4_reg <= v19_2_addr_reg_298_pp0_iter3_reg;
        v19_2_addr_reg_298_pp0_iter5_reg <= v19_2_addr_reg_298_pp0_iter4_reg;
        v19_2_addr_reg_298_pp0_iter6_reg <= v19_2_addr_reg_298_pp0_iter5_reg;
        v19_2_addr_reg_298_pp0_iter7_reg <= v19_2_addr_reg_298_pp0_iter6_reg;
        v19_2_addr_reg_298_pp0_iter8_reg <= v19_2_addr_reg_298_pp0_iter7_reg;
        v19_2_addr_reg_298_pp0_iter9_reg <= v19_2_addr_reg_298_pp0_iter8_reg;
        v19_3_addr_reg_304_pp0_iter2_reg <= v19_3_addr_reg_304_pp0_iter1_reg;
        v19_3_addr_reg_304_pp0_iter3_reg <= v19_3_addr_reg_304_pp0_iter2_reg;
        v19_3_addr_reg_304_pp0_iter4_reg <= v19_3_addr_reg_304_pp0_iter3_reg;
        v19_3_addr_reg_304_pp0_iter5_reg <= v19_3_addr_reg_304_pp0_iter4_reg;
        v19_3_addr_reg_304_pp0_iter6_reg <= v19_3_addr_reg_304_pp0_iter5_reg;
        v19_3_addr_reg_304_pp0_iter7_reg <= v19_3_addr_reg_304_pp0_iter6_reg;
        v19_3_addr_reg_304_pp0_iter8_reg <= v19_3_addr_reg_304_pp0_iter7_reg;
        v19_3_addr_reg_304_pp0_iter9_reg <= v19_3_addr_reg_304_pp0_iter8_reg;
        v19_addr_reg_286_pp0_iter2_reg <= v19_addr_reg_286_pp0_iter1_reg;
        v19_addr_reg_286_pp0_iter3_reg <= v19_addr_reg_286_pp0_iter2_reg;
        v19_addr_reg_286_pp0_iter4_reg <= v19_addr_reg_286_pp0_iter3_reg;
        v19_addr_reg_286_pp0_iter5_reg <= v19_addr_reg_286_pp0_iter4_reg;
        v19_addr_reg_286_pp0_iter6_reg <= v19_addr_reg_286_pp0_iter5_reg;
        v19_addr_reg_286_pp0_iter7_reg <= v19_addr_reg_286_pp0_iter6_reg;
        v19_addr_reg_286_pp0_iter8_reg <= v19_addr_reg_286_pp0_iter7_reg;
        v19_addr_reg_286_pp0_iter9_reg <= v19_addr_reg_286_pp0_iter8_reg;
        v52_reg_335 <= grp_fu_30844_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln105_fu_172_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter9_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter10 == 1'b0) & (ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v49_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v49_1 = v49_fu_62;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v19_1_ce0_local = 1'b1;
    end else begin
        v19_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_1_ce1_local = 1'b1;
    end else begin
        v19_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln105_1_reg_281_pp0_iter9_reg == 2'd1))) begin
        v19_1_we0_local = 1'b1;
    end else begin
        v19_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v19_2_ce0_local = 1'b1;
    end else begin
        v19_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_2_ce1_local = 1'b1;
    end else begin
        v19_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln105_1_reg_281_pp0_iter9_reg == 2'd2))) begin
        v19_2_we0_local = 1'b1;
    end else begin
        v19_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v19_3_ce0_local = 1'b1;
    end else begin
        v19_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_3_ce1_local = 1'b1;
    end else begin
        v19_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln105_1_reg_281_pp0_iter9_reg == 2'd3))) begin
        v19_3_we0_local = 1'b1;
    end else begin
        v19_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v19_ce0_local = 1'b1;
    end else begin
        v19_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v19_ce1_local = 1'b1;
    end else begin
        v19_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln105_1_reg_281_pp0_iter9_reg == 2'd0))) begin
        v19_we0_local = 1'b1;
    end else begin
        v19_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_0_ce0_local = 1'b1;
    end else begin
        v4_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v4_1_ce0_local = 1'b1;
    end else begin
        v4_1_ce0_local = 1'b0;
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
assign add_ln105_fu_178_p2 = (ap_sig_allocacmp_v49_1 + 7'd1);
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
assign grp_fu_30844_p_ce = 1'b1;
assign grp_fu_30844_p_din0 = v50_reg_320;
assign grp_fu_30844_p_din1 = v51_fu_261_p1;
assign grp_fu_30844_p_opcode = 2'd0;
assign icmp_ln105_fu_172_p2 = ((ap_sig_allocacmp_v49_1 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln105_1_fu_210_p4 = {{ap_sig_allocacmp_v49_1[5:1]}};
assign lshr_ln3_fu_192_p4 = {{ap_sig_allocacmp_v49_1[5:2]}};
assign select_ln107_fu_254_p3 = ((trunc_ln105_reg_276[0:0] == 1'b1) ? v4_1_q0 : v4_0_q0);
assign trunc_ln105_1_fu_188_p1 = ap_sig_allocacmp_v49_1[1:0];
assign trunc_ln105_fu_184_p1 = ap_sig_allocacmp_v49_1[0:0];
assign v19_1_address0 = v19_1_addr_reg_292_pp0_iter9_reg;
assign v19_1_address1 = zext_ln105_fu_202_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_1_ce1 = v19_1_ce1_local;
assign v19_1_d0 = v52_reg_335;
assign v19_1_we0 = v19_1_we0_local;
assign v19_2_address0 = v19_2_addr_reg_298_pp0_iter9_reg;
assign v19_2_address1 = zext_ln105_fu_202_p1;
assign v19_2_ce0 = v19_2_ce0_local;
assign v19_2_ce1 = v19_2_ce1_local;
assign v19_2_d0 = v52_reg_335;
assign v19_2_we0 = v19_2_we0_local;
assign v19_3_address0 = v19_3_addr_reg_304_pp0_iter9_reg;
assign v19_3_address1 = zext_ln105_fu_202_p1;
assign v19_3_ce0 = v19_3_ce0_local;
assign v19_3_ce1 = v19_3_ce1_local;
assign v19_3_d0 = v52_reg_335;
assign v19_3_we0 = v19_3_we0_local;
assign v19_address0 = v19_addr_reg_286_pp0_iter9_reg;
assign v19_address1 = zext_ln105_fu_202_p1;
assign v19_ce0 = v19_ce0_local;
assign v19_ce1 = v19_ce1_local;
assign v19_d0 = v52_reg_335;
assign v19_we0 = v19_we0_local;
assign v4_0_address0 = zext_ln105_1_fu_220_p1;
assign v4_0_ce0 = v4_0_ce0_local;
assign v4_1_address0 = zext_ln105_1_fu_220_p1;
assign v4_1_ce0 = v4_1_ce0_local;
assign v50_fu_231_p9 = 'bx;
assign v51_fu_261_p1 = select_ln107_reg_325;
assign zext_ln105_1_fu_220_p1 = lshr_ln105_1_fu_210_p4;
assign zext_ln105_fu_202_p1 = lshr_ln3_fu_192_p4;
endmodule 