module backprop_backprop_Pipeline_label_25_label_26 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,phi_mul139,v6_0_address0,v6_0_ce0,v6_0_q0,v6_1_address0,v6_1_ce0,v6_1_q0,v6_2_address0,v6_2_ce0,v6_2_q0,v6_3_address0,v6_3_ce0,v6_3_q0,v6_4_address0,v6_4_ce0,v6_4_q0,v6_5_address0,v6_5_ce0,v6_5_q0,v6_6_address0,v6_6_ce0,v6_6_q0,v6_7_address0,v6_7_ce0,v6_7_q0,v9_address0,v9_ce0,v9_q0,v9_address1,v9_ce1,v9_q1,v12_address0,v12_ce0,v12_we0,v12_d0,v12_address1,v12_ce1,v12_we1,v12_d1,grp_fu_3792_p_din0,grp_fu_3792_p_din1,grp_fu_3792_p_dout0,grp_fu_3792_p_ce,grp_fu_8602_p_din0,grp_fu_8602_p_din1,grp_fu_8602_p_dout0,grp_fu_8602_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [11:0] phi_mul139;
output  [8:0] v6_0_address0;
output   v6_0_ce0;
input  [63:0] v6_0_q0;
output  [8:0] v6_1_address0;
output   v6_1_ce0;
input  [63:0] v6_1_q0;
output  [8:0] v6_2_address0;
output   v6_2_ce0;
input  [63:0] v6_2_q0;
output  [8:0] v6_3_address0;
output   v6_3_ce0;
input  [63:0] v6_3_q0;
output  [8:0] v6_4_address0;
output   v6_4_ce0;
input  [63:0] v6_4_q0;
output  [8:0] v6_5_address0;
output   v6_5_ce0;
input  [63:0] v6_5_q0;
output  [8:0] v6_6_address0;
output   v6_6_ce0;
input  [63:0] v6_6_q0;
output  [8:0] v6_7_address0;
output   v6_7_ce0;
input  [63:0] v6_7_q0;
output  [5:0] v9_address0;
output   v9_ce0;
input  [63:0] v9_q0;
output  [5:0] v9_address1;
output   v9_ce1;
input  [63:0] v9_q1;
output  [9:0] v12_address0;
output   v12_ce0;
output   v12_we0;
output  [63:0] v12_d0;
output  [9:0] v12_address1;
output   v12_ce1;
output   v12_we1;
output  [63:0] v12_d1;
output  [63:0] grp_fu_3792_p_din0;
output  [63:0] grp_fu_3792_p_din1;
input  [63:0] grp_fu_3792_p_dout0;
output   grp_fu_3792_p_ce;
output  [63:0] grp_fu_8602_p_din0;
output  [63:0] grp_fu_8602_p_din1;
input  [63:0] grp_fu_8602_p_dout0;
output   grp_fu_8602_p_ce;
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
wire   [0:0] icmp_ln233_fu_304_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [6:0] select_ln233_fu_330_p3;
reg   [6:0] select_ln233_reg_568;
reg   [6:0] select_ln233_reg_568_pp0_iter1_reg;
reg   [6:0] select_ln233_reg_568_pp0_iter2_reg;
reg   [6:0] select_ln233_reg_568_pp0_iter3_reg;
reg   [6:0] select_ln233_reg_568_pp0_iter4_reg;
reg   [6:0] select_ln233_reg_568_pp0_iter5_reg;
reg   [6:0] select_ln233_reg_568_pp0_iter6_reg;
reg   [6:0] select_ln233_reg_568_pp0_iter7_reg;
reg   [6:0] select_ln233_reg_568_pp0_iter8_reg;
reg   [6:0] select_ln233_reg_568_pp0_iter9_reg;
wire   [3:0] select_ln233_1_fu_344_p3;
reg   [3:0] select_ln233_1_reg_574;
reg   [3:0] select_ln233_1_reg_574_pp0_iter1_reg;
reg   [3:0] select_ln233_1_reg_574_pp0_iter2_reg;
reg   [3:0] select_ln233_1_reg_574_pp0_iter3_reg;
reg   [3:0] select_ln233_1_reg_574_pp0_iter4_reg;
reg   [3:0] select_ln233_1_reg_574_pp0_iter5_reg;
reg   [3:0] select_ln233_1_reg_574_pp0_iter6_reg;
reg   [3:0] select_ln233_1_reg_574_pp0_iter7_reg;
reg   [3:0] select_ln233_1_reg_574_pp0_iter8_reg;
reg   [3:0] select_ln233_1_reg_574_pp0_iter9_reg;
reg   [4:0] tmp_1_reg_581;
reg   [4:0] tmp_1_reg_581_pp0_iter1_reg;
reg   [4:0] tmp_1_reg_581_pp0_iter2_reg;
reg   [4:0] tmp_1_reg_581_pp0_iter3_reg;
reg   [4:0] tmp_1_reg_581_pp0_iter4_reg;
reg   [4:0] tmp_1_reg_581_pp0_iter5_reg;
reg   [4:0] tmp_1_reg_581_pp0_iter6_reg;
reg   [4:0] tmp_1_reg_581_pp0_iter7_reg;
reg   [4:0] tmp_1_reg_581_pp0_iter8_reg;
reg   [4:0] tmp_1_reg_581_pp0_iter9_reg;
wire   [2:0] trunc_ln234_fu_391_p1;
reg   [2:0] trunc_ln234_reg_587;
wire   [63:0] v141_fu_465_p19;
reg   [63:0] v141_reg_642;
reg   [63:0] v143_reg_648;
reg   [63:0] v143_1_reg_653;
reg   [63:0] v144_reg_658;
reg   [63:0] v144_1_reg_663;
wire   [63:0] zext_ln234_fu_405_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln235_fu_417_p1;
wire   [63:0] zext_ln236_fu_428_p1;
wire   [63:0] zext_ln238_fu_520_p1;
wire   [63:0] zext_ln238_1_fu_533_p1;
reg   [6:0] v142_fu_106;
wire   [6:0] add_ln235_fu_362_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v142_load;
reg   [3:0] v140_fu_110;
reg   [3:0] ap_sig_allocacmp_v140_load;
reg   [8:0] indvar_flatten26_fu_114;
wire   [8:0] add_ln233_fu_310_p2;
reg   [8:0] ap_sig_allocacmp_indvar_flatten26_load;
reg    v6_0_ce0_local;
reg    v6_1_ce0_local;
reg    v6_2_ce0_local;
reg    v6_3_ce0_local;
reg    v6_4_ce0_local;
reg    v6_5_ce0_local;
reg    v6_6_ce0_local;
reg    v6_7_ce0_local;
reg    v9_ce1_local;
reg    v9_ce0_local;
reg    v12_we1_local;
reg    v12_ce1_local;
reg    v12_we0_local;
reg    v12_ce0_local;
wire   [0:0] tmp_fu_322_p3;
wire   [3:0] add_ln233_1_fu_338_p2;
wire   [11:0] zext_ln233_fu_383_p1;
wire   [11:0] add_ln234_fu_386_p2;
wire   [8:0] lshr_ln6_fu_395_p4;
wire   [5:0] or_ln4_fu_421_p3;
wire   [63:0] v141_fu_465_p2;
wire   [63:0] v141_fu_465_p4;
wire   [63:0] v141_fu_465_p6;
wire   [63:0] v141_fu_465_p8;
wire   [63:0] v141_fu_465_p10;
wire   [63:0] v141_fu_465_p12;
wire   [63:0] v141_fu_465_p14;
wire   [63:0] v141_fu_465_p16;
wire   [63:0] v141_fu_465_p17;
wire   [9:0] zext_ln235_1_fu_511_p1;
wire   [9:0] tmp_s_fu_504_p3;
wire   [9:0] add_ln238_fu_514_p2;
wire   [9:0] add_ln238_1_fu_525_p4;
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
wire   [2:0] v141_fu_465_p1;
wire   [2:0] v141_fu_465_p3;
wire   [2:0] v141_fu_465_p5;
wire   [2:0] v141_fu_465_p7;
wire  signed [2:0] v141_fu_465_p9;
wire  signed [2:0] v141_fu_465_p11;
wire  signed [2:0] v141_fu_465_p13;
wire  signed [2:0] v141_fu_465_p15;
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
#0 v142_fu_106 = 7'd0;
#0 v140_fu_110 = 4'd0;
#0 indvar_flatten26_fu_114 = 9'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U754(.din0(v141_fu_465_p2),.din1(v141_fu_465_p4),.din2(v141_fu_465_p6),.din3(v141_fu_465_p8),.din4(v141_fu_465_p10),.din5(v141_fu_465_p12),.din6(v141_fu_465_p14),.din7(v141_fu_465_p16),.def(v141_fu_465_p17),.sel(trunc_ln234_reg_587),.dout(v141_fu_465_p19));
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
        if (((icmp_ln233_fu_304_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            indvar_flatten26_fu_114 <= add_ln233_fu_310_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            indvar_flatten26_fu_114 <= 9'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln233_fu_304_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v140_fu_110 <= select_ln233_1_fu_344_p3;
        end else if ((ap_loop_init == 1'b1)) begin
            v140_fu_110 <= 4'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((icmp_ln233_fu_304_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v142_fu_106 <= add_ln235_fu_362_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v142_fu_106 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        select_ln233_1_reg_574 <= select_ln233_1_fu_344_p3;
        select_ln233_1_reg_574_pp0_iter1_reg <= select_ln233_1_reg_574;
        select_ln233_reg_568 <= select_ln233_fu_330_p3;
        select_ln233_reg_568_pp0_iter1_reg <= select_ln233_reg_568;
        tmp_1_reg_581 <= {{select_ln233_fu_330_p3[5:1]}};
        tmp_1_reg_581_pp0_iter1_reg <= tmp_1_reg_581;
        trunc_ln234_reg_587 <= trunc_ln234_fu_391_p1;
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
        select_ln233_1_reg_574_pp0_iter2_reg <= select_ln233_1_reg_574_pp0_iter1_reg;
        select_ln233_1_reg_574_pp0_iter3_reg <= select_ln233_1_reg_574_pp0_iter2_reg;
        select_ln233_1_reg_574_pp0_iter4_reg <= select_ln233_1_reg_574_pp0_iter3_reg;
        select_ln233_1_reg_574_pp0_iter5_reg <= select_ln233_1_reg_574_pp0_iter4_reg;
        select_ln233_1_reg_574_pp0_iter6_reg <= select_ln233_1_reg_574_pp0_iter5_reg;
        select_ln233_1_reg_574_pp0_iter7_reg <= select_ln233_1_reg_574_pp0_iter6_reg;
        select_ln233_1_reg_574_pp0_iter8_reg <= select_ln233_1_reg_574_pp0_iter7_reg;
        select_ln233_1_reg_574_pp0_iter9_reg <= select_ln233_1_reg_574_pp0_iter8_reg;
        select_ln233_reg_568_pp0_iter2_reg <= select_ln233_reg_568_pp0_iter1_reg;
        select_ln233_reg_568_pp0_iter3_reg <= select_ln233_reg_568_pp0_iter2_reg;
        select_ln233_reg_568_pp0_iter4_reg <= select_ln233_reg_568_pp0_iter3_reg;
        select_ln233_reg_568_pp0_iter5_reg <= select_ln233_reg_568_pp0_iter4_reg;
        select_ln233_reg_568_pp0_iter6_reg <= select_ln233_reg_568_pp0_iter5_reg;
        select_ln233_reg_568_pp0_iter7_reg <= select_ln233_reg_568_pp0_iter6_reg;
        select_ln233_reg_568_pp0_iter8_reg <= select_ln233_reg_568_pp0_iter7_reg;
        select_ln233_reg_568_pp0_iter9_reg <= select_ln233_reg_568_pp0_iter8_reg;
        tmp_1_reg_581_pp0_iter2_reg <= tmp_1_reg_581_pp0_iter1_reg;
        tmp_1_reg_581_pp0_iter3_reg <= tmp_1_reg_581_pp0_iter2_reg;
        tmp_1_reg_581_pp0_iter4_reg <= tmp_1_reg_581_pp0_iter3_reg;
        tmp_1_reg_581_pp0_iter5_reg <= tmp_1_reg_581_pp0_iter4_reg;
        tmp_1_reg_581_pp0_iter6_reg <= tmp_1_reg_581_pp0_iter5_reg;
        tmp_1_reg_581_pp0_iter7_reg <= tmp_1_reg_581_pp0_iter6_reg;
        tmp_1_reg_581_pp0_iter8_reg <= tmp_1_reg_581_pp0_iter7_reg;
        tmp_1_reg_581_pp0_iter9_reg <= tmp_1_reg_581_pp0_iter8_reg;
        v141_reg_642 <= v141_fu_465_p19;
        v144_1_reg_663 <= grp_fu_8602_p_dout0;
        v144_reg_658 <= grp_fu_3792_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        v143_1_reg_653 <= v9_q0;
        v143_reg_648 <= v9_q1;
    end
end
always @ (*) begin
    if (((icmp_ln233_fu_304_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_indvar_flatten26_load = 9'd0;
    end else begin
        ap_sig_allocacmp_indvar_flatten26_load = indvar_flatten26_fu_114;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v140_load = 4'd0;
    end else begin
        ap_sig_allocacmp_v140_load = v140_fu_110;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v142_load = 7'd0;
    end else begin
        ap_sig_allocacmp_v142_load = v142_fu_106;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v12_ce0_local = 1'b1;
    end else begin
        v12_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v12_ce1_local = 1'b1;
    end else begin
        v12_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v12_we0_local = 1'b1;
    end else begin
        v12_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter10 == 1'b1))) begin
        v12_we1_local = 1'b1;
    end else begin
        v12_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_0_ce0_local = 1'b1;
    end else begin
        v6_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_1_ce0_local = 1'b1;
    end else begin
        v6_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_2_ce0_local = 1'b1;
    end else begin
        v6_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_3_ce0_local = 1'b1;
    end else begin
        v6_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_4_ce0_local = 1'b1;
    end else begin
        v6_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_5_ce0_local = 1'b1;
    end else begin
        v6_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_6_ce0_local = 1'b1;
    end else begin
        v6_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v6_7_ce0_local = 1'b1;
    end else begin
        v6_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_ce0_local = 1'b1;
    end else begin
        v9_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v9_ce1_local = 1'b1;
    end else begin
        v9_ce1_local = 1'b0;
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
assign add_ln233_1_fu_338_p2 = (ap_sig_allocacmp_v140_load + 4'd1);
assign add_ln233_fu_310_p2 = (ap_sig_allocacmp_indvar_flatten26_load + 9'd1);
assign add_ln234_fu_386_p2 = (zext_ln233_fu_383_p1 + phi_mul139);
assign add_ln235_fu_362_p2 = (select_ln233_fu_330_p3 + 7'd2);
assign add_ln238_1_fu_525_p4 = {{{select_ln233_1_reg_574_pp0_iter9_reg}, {tmp_1_reg_581_pp0_iter9_reg}}, {1'd1}};
assign add_ln238_fu_514_p2 = (zext_ln235_1_fu_511_p1 + tmp_s_fu_504_p3);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_3792_p_ce = 1'b1;
assign grp_fu_3792_p_din0 = v141_reg_642;
assign grp_fu_3792_p_din1 = v143_reg_648;
assign grp_fu_8602_p_ce = 1'b1;
assign grp_fu_8602_p_din0 = v141_reg_642;
assign grp_fu_8602_p_din1 = v143_1_reg_653;
assign icmp_ln233_fu_304_p2 = ((ap_sig_allocacmp_indvar_flatten26_load == 9'd416) ? 1'b1 : 1'b0);
assign lshr_ln6_fu_395_p4 = {{add_ln234_fu_386_p2[11:3]}};
assign or_ln4_fu_421_p3 = {{tmp_1_reg_581}, {1'd1}};
assign select_ln233_1_fu_344_p3 = ((tmp_fu_322_p3[0:0] == 1'b1) ? add_ln233_1_fu_338_p2 : ap_sig_allocacmp_v140_load);
assign select_ln233_fu_330_p3 = ((tmp_fu_322_p3[0:0] == 1'b1) ? 7'd0 : ap_sig_allocacmp_v142_load);
assign tmp_fu_322_p3 = ap_sig_allocacmp_v142_load[32'd6];
assign tmp_s_fu_504_p3 = {{select_ln233_1_reg_574_pp0_iter9_reg}, {6'd0}};
assign trunc_ln234_fu_391_p1 = add_ln234_fu_386_p2[2:0];
assign v12_address0 = zext_ln238_1_fu_533_p1;
assign v12_address1 = zext_ln238_fu_520_p1;
assign v12_ce0 = v12_ce0_local;
assign v12_ce1 = v12_ce1_local;
assign v12_d0 = v144_1_reg_663;
assign v12_d1 = v144_reg_658;
assign v12_we0 = v12_we0_local;
assign v12_we1 = v12_we1_local;
assign v141_fu_465_p10 = v6_4_q0;
assign v141_fu_465_p12 = v6_5_q0;
assign v141_fu_465_p14 = v6_6_q0;
assign v141_fu_465_p16 = v6_7_q0;
assign v141_fu_465_p17 = 'bx;
assign v141_fu_465_p2 = v6_0_q0;
assign v141_fu_465_p4 = v6_1_q0;
assign v141_fu_465_p6 = v6_2_q0;
assign v141_fu_465_p8 = v6_3_q0;
assign v6_0_address0 = zext_ln234_fu_405_p1;
assign v6_0_ce0 = v6_0_ce0_local;
assign v6_1_address0 = zext_ln234_fu_405_p1;
assign v6_1_ce0 = v6_1_ce0_local;
assign v6_2_address0 = zext_ln234_fu_405_p1;
assign v6_2_ce0 = v6_2_ce0_local;
assign v6_3_address0 = zext_ln234_fu_405_p1;
assign v6_3_ce0 = v6_3_ce0_local;
assign v6_4_address0 = zext_ln234_fu_405_p1;
assign v6_4_ce0 = v6_4_ce0_local;
assign v6_5_address0 = zext_ln234_fu_405_p1;
assign v6_5_ce0 = v6_5_ce0_local;
assign v6_6_address0 = zext_ln234_fu_405_p1;
assign v6_6_ce0 = v6_6_ce0_local;
assign v6_7_address0 = zext_ln234_fu_405_p1;
assign v6_7_ce0 = v6_7_ce0_local;
assign v9_address0 = zext_ln236_fu_428_p1;
assign v9_address1 = zext_ln235_fu_417_p1;
assign v9_ce0 = v9_ce0_local;
assign v9_ce1 = v9_ce1_local;
assign zext_ln233_fu_383_p1 = select_ln233_1_reg_574;
assign zext_ln234_fu_405_p1 = lshr_ln6_fu_395_p4;
assign zext_ln235_1_fu_511_p1 = select_ln233_reg_568_pp0_iter9_reg;
assign zext_ln235_fu_417_p1 = select_ln233_reg_568;
assign zext_ln236_fu_428_p1 = or_ln4_fu_421_p3;
assign zext_ln238_1_fu_533_p1 = add_ln238_1_fu_525_p4;
assign zext_ln238_fu_520_p1 = add_ln238_fu_514_p2;
endmodule 