
module backprop_backprop_Pipeline_label_4 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v20_1_address0,v20_1_ce0,v20_1_we0,v20_1_d0,v20_1_address1,v20_1_ce1,v20_1_q1,v20_address0,v20_ce0,v20_we0,v20_d0,v20_address1,v20_ce1,v20_q1,v3_0_address0,v3_0_ce0,v3_0_q0,v3_1_address0,v3_1_ce0,v3_1_q0,v3_2_address0,v3_2_ce0,v3_2_q0,v3_3_address0,v3_3_ce0,v3_3_q0,v3_4_address0,v3_4_ce0,v3_4_q0,v3_5_address0,v3_5_ce0,v3_5_q0,v3_6_address0,v3_6_ce0,v3_6_q0,v3_7_address0,v3_7_ce0,v3_7_q0,grp_fu_13735_p_din0,grp_fu_13735_p_din1,grp_fu_13735_p_opcode,grp_fu_13735_p_dout0,grp_fu_13735_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] v20_1_address0;
output   v20_1_ce0;
output   v20_1_we0;
output  [63:0] v20_1_d0;
output  [4:0] v20_1_address1;
output   v20_1_ce1;
input  [63:0] v20_1_q1;
output  [4:0] v20_address0;
output   v20_ce0;
output   v20_we0;
output  [63:0] v20_d0;
output  [4:0] v20_address1;
output   v20_ce1;
input  [63:0] v20_q1;
output  [2:0] v3_0_address0;
output   v3_0_ce0;
input  [63:0] v3_0_q0;
output  [2:0] v3_1_address0;
output   v3_1_ce0;
input  [63:0] v3_1_q0;
output  [2:0] v3_2_address0;
output   v3_2_ce0;
input  [63:0] v3_2_q0;
output  [2:0] v3_3_address0;
output   v3_3_ce0;
input  [63:0] v3_3_q0;
output  [2:0] v3_4_address0;
output   v3_4_ce0;
input  [63:0] v3_4_q0;
output  [2:0] v3_5_address0;
output   v3_5_ce0;
input  [63:0] v3_5_q0;
output  [2:0] v3_6_address0;
output   v3_6_ce0;
input  [63:0] v3_6_q0;
output  [2:0] v3_7_address0;
output   v3_7_ce0;
input  [63:0] v3_7_q0;
output  [63:0] grp_fu_13735_p_din0;
output  [63:0] grp_fu_13735_p_din1;
output  [0:0] grp_fu_13735_p_opcode;
input  [63:0] grp_fu_13735_p_dout0;
output   grp_fu_13735_p_ce;
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
wire   [0:0] icmp_ln77_fu_232_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [0:0] trunc_ln77_1_fu_248_p1;
reg   [0:0] trunc_ln77_1_reg_384;
reg   [0:0] trunc_ln77_1_reg_384_pp0_iter1_reg;
reg   [0:0] trunc_ln77_1_reg_384_pp0_iter2_reg;
reg   [0:0] trunc_ln77_1_reg_384_pp0_iter3_reg;
reg   [0:0] trunc_ln77_1_reg_384_pp0_iter4_reg;
reg   [0:0] trunc_ln77_1_reg_384_pp0_iter5_reg;
reg   [0:0] trunc_ln77_1_reg_384_pp0_iter6_reg;
reg   [0:0] trunc_ln77_1_reg_384_pp0_iter7_reg;
reg   [0:0] trunc_ln77_1_reg_384_pp0_iter8_reg;
reg   [0:0] trunc_ln77_1_reg_384_pp0_iter9_reg;
reg   [2:0] trunc_ln77_3_reg_389;
reg   [4:0] v20_addr_1_reg_394;
reg   [4:0] v20_addr_1_reg_394_pp0_iter1_reg;
reg   [4:0] v20_addr_1_reg_394_pp0_iter2_reg;
reg   [4:0] v20_addr_1_reg_394_pp0_iter3_reg;
reg   [4:0] v20_addr_1_reg_394_pp0_iter4_reg;
reg   [4:0] v20_addr_1_reg_394_pp0_iter5_reg;
reg   [4:0] v20_addr_1_reg_394_pp0_iter6_reg;
reg   [4:0] v20_addr_1_reg_394_pp0_iter7_reg;
reg   [4:0] v20_addr_1_reg_394_pp0_iter8_reg;
reg   [4:0] v20_addr_1_reg_394_pp0_iter9_reg;
reg   [4:0] v20_1_addr_1_reg_400;
reg   [4:0] v20_1_addr_1_reg_400_pp0_iter1_reg;
reg   [4:0] v20_1_addr_1_reg_400_pp0_iter2_reg;
reg   [4:0] v20_1_addr_1_reg_400_pp0_iter3_reg;
reg   [4:0] v20_1_addr_1_reg_400_pp0_iter4_reg;
reg   [4:0] v20_1_addr_1_reg_400_pp0_iter5_reg;
reg   [4:0] v20_1_addr_1_reg_400_pp0_iter6_reg;
reg   [4:0] v20_1_addr_1_reg_400_pp0_iter7_reg;
reg   [4:0] v20_1_addr_1_reg_400_pp0_iter8_reg;
reg   [4:0] v20_1_addr_1_reg_400_pp0_iter9_reg;
wire   [63:0] v31_fu_295_p3;
reg   [63:0] v31_reg_446;
wire   [63:0] v32_fu_334_p19;
reg   [63:0] v32_reg_451;
reg   [63:0] v33_reg_456;
wire   [63:0] zext_ln77_fu_262_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln77_1_fu_268_p1;
reg   [6:0] v30_fu_78;
wire   [6:0] add_ln77_fu_238_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v30_1;
reg    v20_ce1_local;
reg    v20_we0_local;
reg    v20_ce0_local;
reg    v20_1_ce1_local;
reg    v20_1_we0_local;
reg    v20_1_ce0_local;
reg    v3_0_ce0_local;
reg    v3_1_ce0_local;
reg    v3_2_ce0_local;
reg    v3_3_ce0_local;
reg    v3_4_ce0_local;
reg    v3_5_ce0_local;
reg    v3_6_ce0_local;
reg    v3_7_ce0_local;
wire   [4:0] lshr_ln2_fu_252_p4;
wire   [2:0] trunc_ln77_fu_244_p1;
wire   [63:0] v32_fu_334_p2;
wire   [63:0] v32_fu_334_p4;
wire   [63:0] v32_fu_334_p6;
wire   [63:0] v32_fu_334_p8;
wire   [63:0] v32_fu_334_p10;
wire   [63:0] v32_fu_334_p12;
wire   [63:0] v32_fu_334_p14;
wire   [63:0] v32_fu_334_p16;
wire   [63:0] v32_fu_334_p17;
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
wire   [2:0] v32_fu_334_p1;
wire   [2:0] v32_fu_334_p3;
wire   [2:0] v32_fu_334_p5;
wire   [2:0] v32_fu_334_p7;
wire  signed [2:0] v32_fu_334_p9;
wire  signed [2:0] v32_fu_334_p11;
wire  signed [2:0] v32_fu_334_p13;
wire  signed [2:0] v32_fu_334_p15;
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
#0 v30_fu_78 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U857(.din0(v32_fu_334_p2),.din1(v32_fu_334_p4),.din2(v32_fu_334_p6),.din3(v32_fu_334_p8),.din4(v32_fu_334_p10),.din5(v32_fu_334_p12),.din6(v32_fu_334_p14),.din7(v32_fu_334_p16),.def(v32_fu_334_p17),.sel(trunc_ln77_3_reg_389),.dout(v32_fu_334_p19));
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
        if (((icmp_ln77_fu_232_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v30_fu_78 <= add_ln77_fu_238_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v30_fu_78 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        trunc_ln77_1_reg_384 <= trunc_ln77_1_fu_248_p1;
        trunc_ln77_1_reg_384_pp0_iter1_reg <= trunc_ln77_1_reg_384;
        trunc_ln77_3_reg_389 <= {{ap_sig_allocacmp_v30_1[5:3]}};
        v20_1_addr_1_reg_400 <= zext_ln77_fu_262_p1;
        v20_1_addr_1_reg_400_pp0_iter1_reg <= v20_1_addr_1_reg_400;
        v20_addr_1_reg_394 <= zext_ln77_fu_262_p1;
        v20_addr_1_reg_394_pp0_iter1_reg <= v20_addr_1_reg_394;
        v31_reg_446 <= v31_fu_295_p3;
        v32_reg_451 <= v32_fu_334_p19;
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
        trunc_ln77_1_reg_384_pp0_iter2_reg <= trunc_ln77_1_reg_384_pp0_iter1_reg;
        trunc_ln77_1_reg_384_pp0_iter3_reg <= trunc_ln77_1_reg_384_pp0_iter2_reg;
        trunc_ln77_1_reg_384_pp0_iter4_reg <= trunc_ln77_1_reg_384_pp0_iter3_reg;
        trunc_ln77_1_reg_384_pp0_iter5_reg <= trunc_ln77_1_reg_384_pp0_iter4_reg;
        trunc_ln77_1_reg_384_pp0_iter6_reg <= trunc_ln77_1_reg_384_pp0_iter5_reg;
        trunc_ln77_1_reg_384_pp0_iter7_reg <= trunc_ln77_1_reg_384_pp0_iter6_reg;
        trunc_ln77_1_reg_384_pp0_iter8_reg <= trunc_ln77_1_reg_384_pp0_iter7_reg;
        trunc_ln77_1_reg_384_pp0_iter9_reg <= trunc_ln77_1_reg_384_pp0_iter8_reg;
        v20_1_addr_1_reg_400_pp0_iter2_reg <= v20_1_addr_1_reg_400_pp0_iter1_reg;
        v20_1_addr_1_reg_400_pp0_iter3_reg <= v20_1_addr_1_reg_400_pp0_iter2_reg;
        v20_1_addr_1_reg_400_pp0_iter4_reg <= v20_1_addr_1_reg_400_pp0_iter3_reg;
        v20_1_addr_1_reg_400_pp0_iter5_reg <= v20_1_addr_1_reg_400_pp0_iter4_reg;
        v20_1_addr_1_reg_400_pp0_iter6_reg <= v20_1_addr_1_reg_400_pp0_iter5_reg;
        v20_1_addr_1_reg_400_pp0_iter7_reg <= v20_1_addr_1_reg_400_pp0_iter6_reg;
        v20_1_addr_1_reg_400_pp0_iter8_reg <= v20_1_addr_1_reg_400_pp0_iter7_reg;
        v20_1_addr_1_reg_400_pp0_iter9_reg <= v20_1_addr_1_reg_400_pp0_iter8_reg;
        v20_addr_1_reg_394_pp0_iter2_reg <= v20_addr_1_reg_394_pp0_iter1_reg;
        v20_addr_1_reg_394_pp0_iter3_reg <= v20_addr_1_reg_394_pp0_iter2_reg;
        v20_addr_1_reg_394_pp0_iter4_reg <= v20_addr_1_reg_394_pp0_iter3_reg;
        v20_addr_1_reg_394_pp0_iter5_reg <= v20_addr_1_reg_394_pp0_iter4_reg;
        v20_addr_1_reg_394_pp0_iter6_reg <= v20_addr_1_reg_394_pp0_iter5_reg;
        v20_addr_1_reg_394_pp0_iter7_reg <= v20_addr_1_reg_394_pp0_iter6_reg;
        v20_addr_1_reg_394_pp0_iter8_reg <= v20_addr_1_reg_394_pp0_iter7_reg;
        v20_addr_1_reg_394_pp0_iter9_reg <= v20_addr_1_reg_394_pp0_iter8_reg;
        v33_reg_456 <= grp_fu_13735_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln77_fu_232_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v30_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v30_1 = v30_fu_78;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v20_1_ce0_local = 1'b1;
    end else begin
        v20_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_1_ce1_local = 1'b1;
    end else begin
        v20_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln77_1_reg_384_pp0_iter9_reg == 1'd1))) begin
        v20_1_we0_local = 1'b1;
    end else begin
        v20_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v20_ce0_local = 1'b1;
    end else begin
        v20_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v20_ce1_local = 1'b1;
    end else begin
        v20_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1) & (trunc_ln77_1_reg_384_pp0_iter9_reg == 1'd0))) begin
        v20_we0_local = 1'b1;
    end else begin
        v20_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_0_ce0_local = 1'b1;
    end else begin
        v3_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_4_ce0_local = 1'b1;
    end else begin
        v3_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_5_ce0_local = 1'b1;
    end else begin
        v3_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_6_ce0_local = 1'b1;
    end else begin
        v3_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_7_ce0_local = 1'b1;
    end else begin
        v3_7_ce0_local = 1'b0;
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
assign add_ln77_fu_238_p2 = (ap_sig_allocacmp_v30_1 + 7'd1);
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
assign grp_fu_13735_p_ce = 1'b1;
assign grp_fu_13735_p_din0 = v31_reg_446;
assign grp_fu_13735_p_din1 = v32_reg_451;
assign grp_fu_13735_p_opcode = 2'd0;
assign icmp_ln77_fu_232_p2 = ((ap_sig_allocacmp_v30_1 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln2_fu_252_p4 = {{ap_sig_allocacmp_v30_1[5:1]}};
assign trunc_ln77_1_fu_248_p1 = ap_sig_allocacmp_v30_1[0:0];
assign trunc_ln77_fu_244_p1 = ap_sig_allocacmp_v30_1[2:0];
assign v20_1_address0 = v20_1_addr_1_reg_400_pp0_iter9_reg;
assign v20_1_address1 = zext_ln77_fu_262_p1;
assign v20_1_ce0 = v20_1_ce0_local;
assign v20_1_ce1 = v20_1_ce1_local;
assign v20_1_d0 = v33_reg_456;
assign v20_1_we0 = v20_1_we0_local;
assign v20_address0 = v20_addr_1_reg_394_pp0_iter9_reg;
assign v20_address1 = zext_ln77_fu_262_p1;
assign v20_ce0 = v20_ce0_local;
assign v20_ce1 = v20_ce1_local;
assign v20_d0 = v33_reg_456;
assign v20_we0 = v20_we0_local;
assign v31_fu_295_p3 = ((trunc_ln77_1_reg_384[0:0] == 1'b1) ? v20_1_q1 : v20_q1);
assign v32_fu_334_p10 = v3_4_q0;
assign v32_fu_334_p12 = v3_5_q0;
assign v32_fu_334_p14 = v3_6_q0;
assign v32_fu_334_p16 = v3_7_q0;
assign v32_fu_334_p17 = 'bx;
assign v32_fu_334_p2 = v3_0_q0;
assign v32_fu_334_p4 = v3_1_q0;
assign v32_fu_334_p6 = v3_2_q0;
assign v32_fu_334_p8 = v3_3_q0;
assign v3_0_address0 = zext_ln77_1_fu_268_p1;
assign v3_0_ce0 = v3_0_ce0_local;
assign v3_1_address0 = zext_ln77_1_fu_268_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_2_address0 = zext_ln77_1_fu_268_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_3_address0 = zext_ln77_1_fu_268_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_4_address0 = zext_ln77_1_fu_268_p1;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_5_address0 = zext_ln77_1_fu_268_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_6_address0 = zext_ln77_1_fu_268_p1;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_7_address0 = zext_ln77_1_fu_268_p1;
assign v3_7_ce0 = v3_7_ce0_local;
assign zext_ln77_1_fu_268_p1 = trunc_ln77_fu_244_p1;
assign zext_ln77_fu_262_p1 = lshr_ln2_fu_252_p4;
endmodule 
