
module backprop_backprop_Pipeline_label_17 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v10_2_address0,v10_2_ce0,v10_2_we0,v10_2_d0,v10_1_address0,v10_1_ce0,v10_1_we0,v10_1_d0,v10_address0,v10_ce0,v10_we0,v10_d0,v19_address0,v19_ce0,v19_q0,v19_1_address0,v19_1_ce0,v19_1_q0,v19_2_address0,v19_2_ce0,v19_2_q0,v19_3_address0,v19_3_ce0,v19_3_q0,v19_4_address0,v19_4_ce0,v19_4_q0,v19_5_address0,v19_5_ce0,v19_5_q0,v19_6_address0,v19_6_ce0,v19_6_q0,v19_7_address0,v19_7_ce0,v19_7_q0,v108,v108_3,v108_4,grp_fu_3697_p_din0,grp_fu_3697_p_din1,grp_fu_3697_p_dout0,grp_fu_3697_p_ce,grp_fu_3701_p_din0,grp_fu_3701_p_din1,grp_fu_3701_p_dout0,grp_fu_3701_p_ce,grp_fu_3705_p_din0,grp_fu_3705_p_din1,grp_fu_3705_p_dout0,grp_fu_3705_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [5:0] v10_2_address0;
output   v10_2_ce0;
output   v10_2_we0;
output  [63:0] v10_2_d0;
output  [5:0] v10_1_address0;
output   v10_1_ce0;
output   v10_1_we0;
output  [63:0] v10_1_d0;
output  [5:0] v10_address0;
output   v10_ce0;
output   v10_we0;
output  [63:0] v10_d0;
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
input  [63:0] v108;
input  [63:0] v108_3;
input  [63:0] v108_4;
output  [63:0] grp_fu_3697_p_din0;
output  [63:0] grp_fu_3697_p_din1;
input  [63:0] grp_fu_3697_p_dout0;
output   grp_fu_3697_p_ce;
output  [63:0] grp_fu_3701_p_din0;
output  [63:0] grp_fu_3701_p_din1;
input  [63:0] grp_fu_3701_p_dout0;
output   grp_fu_3701_p_ce;
output  [63:0] grp_fu_3705_p_din0;
output  [63:0] grp_fu_3705_p_din1;
input  [63:0] grp_fu_3705_p_dout0;
output   grp_fu_3705_p_ce;
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
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln177_fu_267_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
reg   [6:0] v100_1_reg_377;
reg   [6:0] v100_1_reg_377_pp0_iter1_reg;
reg   [6:0] v100_1_reg_377_pp0_iter2_reg;
reg   [6:0] v100_1_reg_377_pp0_iter3_reg;
reg   [6:0] v100_1_reg_377_pp0_iter4_reg;
reg   [6:0] v100_1_reg_377_pp0_iter5_reg;
reg   [6:0] v100_1_reg_377_pp0_iter6_reg;
reg   [6:0] v100_1_reg_377_pp0_iter7_reg;
reg   [6:0] v100_1_reg_377_pp0_iter8_reg;
wire   [63:0] v101_fu_309_p19;
reg   [63:0] v101_reg_427;
reg   [63:0] v109_reg_434;
reg   [63:0] v109_1_reg_439;
reg   [63:0] v109_2_reg_444;
wire   [63:0] zext_ln177_1_fu_289_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln177_fu_349_p1;
reg   [6:0] v100_fu_82;
wire   [6:0] add_ln177_fu_273_p2;
wire    ap_loop_init;
reg   [6:0] ap_sig_allocacmp_v100_1;
reg    v19_ce0_local;
reg    v19_1_ce0_local;
reg    v19_2_ce0_local;
reg    v19_3_ce0_local;
reg    v19_4_ce0_local;
reg    v19_5_ce0_local;
reg    v19_6_ce0_local;
reg    v19_7_ce0_local;
reg    v10_we0_local;
reg    v10_ce0_local;
reg    v10_1_we0_local;
reg    v10_1_ce0_local;
reg    v10_2_we0_local;
reg    v10_2_ce0_local;
wire   [2:0] lshr_ln7_fu_279_p4;
wire   [63:0] v101_fu_309_p17;
wire   [2:0] v101_fu_309_p18;
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
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [2:0] v101_fu_309_p1;
wire   [2:0] v101_fu_309_p3;
wire   [2:0] v101_fu_309_p5;
wire   [2:0] v101_fu_309_p7;
wire  signed [2:0] v101_fu_309_p9;
wire  signed [2:0] v101_fu_309_p11;
wire  signed [2:0] v101_fu_309_p13;
wire  signed [2:0] v101_fu_309_p15;
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
#0 v100_fu_82 = 7'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) backprop_sparsemux_17_3_64_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 64 ),.CASE1( 3'h1 ),.din1_WIDTH( 64 ),.CASE2( 3'h2 ),.din2_WIDTH( 64 ),.CASE3( 3'h3 ),.din3_WIDTH( 64 ),.CASE4( 3'h4 ),.din4_WIDTH( 64 ),.CASE5( 3'h5 ),.din5_WIDTH( 64 ),.CASE6( 3'h6 ),.din6_WIDTH( 64 ),.CASE7( 3'h7 ),.din7_WIDTH( 64 ),.def_WIDTH( 64 ),.sel_WIDTH( 3 ),.dout_WIDTH( 64 ))
sparsemux_17_3_64_1_1_U447(.din0(v19_q0),.din1(v19_1_q0),.din2(v19_2_q0),.din3(v19_3_q0),.din4(v19_4_q0),.din5(v19_5_q0),.din6(v19_6_q0),.din7(v19_7_q0),.def(v101_fu_309_p17),.sel(v101_fu_309_p18),.dout(v101_fu_309_p19));
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
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
        if (((icmp_ln177_fu_267_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v100_fu_82 <= add_ln177_fu_273_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v100_fu_82 <= 7'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        v100_1_reg_377 <= ap_sig_allocacmp_v100_1;
        v100_1_reg_377_pp0_iter1_reg <= v100_1_reg_377;
        v101_reg_427 <= v101_fu_309_p19;
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
        v100_1_reg_377_pp0_iter2_reg <= v100_1_reg_377_pp0_iter1_reg;
        v100_1_reg_377_pp0_iter3_reg <= v100_1_reg_377_pp0_iter2_reg;
        v100_1_reg_377_pp0_iter4_reg <= v100_1_reg_377_pp0_iter3_reg;
        v100_1_reg_377_pp0_iter5_reg <= v100_1_reg_377_pp0_iter4_reg;
        v100_1_reg_377_pp0_iter6_reg <= v100_1_reg_377_pp0_iter5_reg;
        v100_1_reg_377_pp0_iter7_reg <= v100_1_reg_377_pp0_iter6_reg;
        v100_1_reg_377_pp0_iter8_reg <= v100_1_reg_377_pp0_iter7_reg;
        v109_1_reg_439 <= grp_fu_3701_p_dout0;
        v109_2_reg_444 <= grp_fu_3705_p_dout0;
        v109_reg_434 <= grp_fu_3697_p_dout0;
    end
end
always @ (*) begin
    if (((icmp_ln177_fu_267_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter8_reg == 1'b1))) begin
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
    if (((ap_enable_reg_pp0_iter9 == 1'b0) & (ap_enable_reg_pp0_iter8 == 1'b0) & (ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
        ap_sig_allocacmp_v100_1 = 7'd0;
    end else begin
        ap_sig_allocacmp_v100_1 = v100_fu_82;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v10_1_ce0_local = 1'b1;
    end else begin
        v10_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v10_1_we0_local = 1'b1;
    end else begin
        v10_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v10_2_ce0_local = 1'b1;
    end else begin
        v10_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v10_2_we0_local = 1'b1;
    end else begin
        v10_2_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v10_ce0_local = 1'b1;
    end else begin
        v10_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter9 == 1'b1))) begin
        v10_we0_local = 1'b1;
    end else begin
        v10_we0_local = 1'b0;
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
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln177_fu_273_p2 = (ap_sig_allocacmp_v100_1 + 7'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage0;
assign ap_ready = ap_ready_sig;
assign grp_fu_3697_p_ce = 1'b1;
assign grp_fu_3697_p_din0 = v101_reg_427;
assign grp_fu_3697_p_din1 = v108;
assign grp_fu_3701_p_ce = 1'b1;
assign grp_fu_3701_p_din0 = v101_reg_427;
assign grp_fu_3701_p_din1 = v108_3;
assign grp_fu_3705_p_ce = 1'b1;
assign grp_fu_3705_p_din0 = v101_reg_427;
assign grp_fu_3705_p_din1 = v108_4;
assign icmp_ln177_fu_267_p2 = ((ap_sig_allocacmp_v100_1 == 7'd64) ? 1'b1 : 1'b0);
assign lshr_ln7_fu_279_p4 = {{ap_sig_allocacmp_v100_1[5:3]}};
assign v101_fu_309_p17 = 'bx;
assign v101_fu_309_p18 = v100_1_reg_377[2:0];
assign v10_1_address0 = zext_ln177_fu_349_p1;
assign v10_1_ce0 = v10_1_ce0_local;
assign v10_1_d0 = v109_1_reg_439;
assign v10_1_we0 = v10_1_we0_local;
assign v10_2_address0 = zext_ln177_fu_349_p1;
assign v10_2_ce0 = v10_2_ce0_local;
assign v10_2_d0 = v109_2_reg_444;
assign v10_2_we0 = v10_2_we0_local;
assign v10_address0 = zext_ln177_fu_349_p1;
assign v10_ce0 = v10_ce0_local;
assign v10_d0 = v109_reg_434;
assign v10_we0 = v10_we0_local;
assign v19_1_address0 = zext_ln177_1_fu_289_p1;
assign v19_1_ce0 = v19_1_ce0_local;
assign v19_2_address0 = zext_ln177_1_fu_289_p1;
assign v19_2_ce0 = v19_2_ce0_local;
assign v19_3_address0 = zext_ln177_1_fu_289_p1;
assign v19_3_ce0 = v19_3_ce0_local;
assign v19_4_address0 = zext_ln177_1_fu_289_p1;
assign v19_4_ce0 = v19_4_ce0_local;
assign v19_5_address0 = zext_ln177_1_fu_289_p1;
assign v19_5_ce0 = v19_5_ce0_local;
assign v19_6_address0 = zext_ln177_1_fu_289_p1;
assign v19_6_ce0 = v19_6_ce0_local;
assign v19_7_address0 = zext_ln177_1_fu_289_p1;
assign v19_7_ce0 = v19_7_ce0_local;
assign v19_address0 = zext_ln177_1_fu_289_p1;
assign v19_ce0 = v19_ce0_local;
assign zext_ln177_1_fu_289_p1 = lshr_ln7_fu_279_p4;
assign zext_ln177_fu_349_p1 = v100_1_reg_377_pp0_iter8_reg;
endmodule 
