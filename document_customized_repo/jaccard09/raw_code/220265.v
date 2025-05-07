module SgdLR_sw_SgdLR_sw_Pipeline_label_43 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_address1,v2_3_ce1,v2_3_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_address1,v2_2_ce1,v2_2_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_address1,v2_1_ce1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_address1,v2_0_ce1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_1_address0,v3_1_ce0,v3_1_q0,v3_2_address0,v3_2_ce0,v3_2_q0,v3_3_address0,v3_3_ce0,v3_3_q0,v3_4_address0,v3_4_ce0,v3_4_q0,v3_5_address0,v3_5_ce0,v3_5_q0,v3_6_address0,v3_6_ce0,v3_6_q0,v3_7_address0,v3_7_ce0,v3_7_q0,grp_fu_930_p_din0,grp_fu_930_p_din1,grp_fu_930_p_opcode,grp_fu_930_p_dout0,grp_fu_930_p_ce,grp_fu_1825_p_din0,grp_fu_1825_p_din1,grp_fu_1825_p_dout0,grp_fu_1825_p_ce); 
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
output  [6:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [6:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [6:0] v3_2_address0;
output   v3_2_ce0;
input  [31:0] v3_2_q0;
output  [6:0] v3_3_address0;
output   v3_3_ce0;
input  [31:0] v3_3_q0;
output  [6:0] v3_4_address0;
output   v3_4_ce0;
input  [31:0] v3_4_q0;
output  [6:0] v3_5_address0;
output   v3_5_ce0;
input  [31:0] v3_5_q0;
output  [6:0] v3_6_address0;
output   v3_6_ce0;
input  [31:0] v3_6_q0;
output  [6:0] v3_7_address0;
output   v3_7_ce0;
input  [31:0] v3_7_q0;
output  [31:0] grp_fu_930_p_din0;
output  [31:0] grp_fu_930_p_din1;
output  [0:0] grp_fu_930_p_opcode;
input  [31:0] grp_fu_930_p_dout0;
output   grp_fu_930_p_ce;
output  [31:0] grp_fu_1825_p_din0;
output  [31:0] grp_fu_1825_p_din1;
input  [31:0] grp_fu_1825_p_dout0;
output   grp_fu_1825_p_ce;
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
wire   [0:0] icmp_ln55_fu_289_p2;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [10:0] v25_reg_440;
wire    ap_block_pp0_stage0_11001;
wire   [7:0] trunc_ln55_3_fu_331_p1;
reg   [7:0] trunc_ln55_3_reg_491;
reg   [7:0] trunc_ln55_3_reg_491_pp0_iter2_reg;
reg   [7:0] trunc_ln55_3_reg_491_pp0_iter3_reg;
reg   [1:0] trunc_ln55_s_reg_496;
reg   [1:0] trunc_ln55_s_reg_496_pp0_iter2_reg;
reg   [1:0] trunc_ln55_s_reg_496_pp0_iter3_reg;
reg   [1:0] trunc_ln55_s_reg_496_pp0_iter4_reg;
reg   [1:0] trunc_ln55_s_reg_496_pp0_iter5_reg;
reg   [1:0] trunc_ln55_s_reg_496_pp0_iter6_reg;
reg   [1:0] trunc_ln55_s_reg_496_pp0_iter7_reg;
reg   [1:0] trunc_ln55_s_reg_496_pp0_iter8_reg;
reg   [1:0] trunc_ln55_s_reg_496_pp0_iter9_reg;
reg   [1:0] trunc_ln55_s_reg_496_pp0_iter10_reg;
reg   [1:0] trunc_ln55_s_reg_496_pp0_iter11_reg;
reg   [1:0] trunc_ln55_s_reg_496_pp0_iter12_reg;
wire   [31:0] v26_fu_343_p19;
reg   [31:0] v26_reg_501;
reg   [7:0] v2_0_addr_reg_506;
reg   [7:0] v2_0_addr_reg_506_pp0_iter5_reg;
reg   [7:0] v2_0_addr_reg_506_pp0_iter6_reg;
reg   [7:0] v2_0_addr_reg_506_pp0_iter7_reg;
reg   [7:0] v2_0_addr_reg_506_pp0_iter8_reg;
reg   [7:0] v2_0_addr_reg_506_pp0_iter9_reg;
reg   [7:0] v2_0_addr_reg_506_pp0_iter10_reg;
reg   [7:0] v2_0_addr_reg_506_pp0_iter11_reg;
reg   [7:0] v2_0_addr_reg_506_pp0_iter12_reg;
reg   [7:0] v2_1_addr_reg_512;
reg   [7:0] v2_1_addr_reg_512_pp0_iter5_reg;
reg   [7:0] v2_1_addr_reg_512_pp0_iter6_reg;
reg   [7:0] v2_1_addr_reg_512_pp0_iter7_reg;
reg   [7:0] v2_1_addr_reg_512_pp0_iter8_reg;
reg   [7:0] v2_1_addr_reg_512_pp0_iter9_reg;
reg   [7:0] v2_1_addr_reg_512_pp0_iter10_reg;
reg   [7:0] v2_1_addr_reg_512_pp0_iter11_reg;
reg   [7:0] v2_1_addr_reg_512_pp0_iter12_reg;
reg   [7:0] v2_2_addr_reg_518;
reg   [7:0] v2_2_addr_reg_518_pp0_iter5_reg;
reg   [7:0] v2_2_addr_reg_518_pp0_iter6_reg;
reg   [7:0] v2_2_addr_reg_518_pp0_iter7_reg;
reg   [7:0] v2_2_addr_reg_518_pp0_iter8_reg;
reg   [7:0] v2_2_addr_reg_518_pp0_iter9_reg;
reg   [7:0] v2_2_addr_reg_518_pp0_iter10_reg;
reg   [7:0] v2_2_addr_reg_518_pp0_iter11_reg;
reg   [7:0] v2_2_addr_reg_518_pp0_iter12_reg;
reg   [7:0] v2_3_addr_reg_524;
reg   [7:0] v2_3_addr_reg_524_pp0_iter5_reg;
reg   [7:0] v2_3_addr_reg_524_pp0_iter6_reg;
reg   [7:0] v2_3_addr_reg_524_pp0_iter7_reg;
reg   [7:0] v2_3_addr_reg_524_pp0_iter8_reg;
reg   [7:0] v2_3_addr_reg_524_pp0_iter9_reg;
reg   [7:0] v2_3_addr_reg_524_pp0_iter10_reg;
reg   [7:0] v2_3_addr_reg_524_pp0_iter11_reg;
reg   [7:0] v2_3_addr_reg_524_pp0_iter12_reg;
reg   [31:0] v27_reg_530;
wire   [31:0] v28_fu_406_p11;
reg   [31:0] v28_reg_535;
wire   [31:0] bitcast_ln60_fu_429_p1;
reg   [31:0] bitcast_ln60_reg_540;
wire   [63:0] zext_ln55_3_fu_311_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln55_fu_383_p1;
reg   [10:0] v25_2_fu_96;
wire   [10:0] add_ln55_fu_295_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25;
reg    v3_ce0_local;
reg    v3_1_ce0_local;
reg    v3_2_ce0_local;
reg    v3_3_ce0_local;
reg    v3_4_ce0_local;
reg    v3_5_ce0_local;
reg    v3_6_ce0_local;
reg    v3_7_ce0_local;
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
wire   [6:0] lshr_ln55_5_fu_301_p4;
wire   [31:0] v26_fu_343_p17;
wire   [2:0] v26_fu_343_p18;
wire   [31:0] v28_fu_406_p2;
wire   [31:0] v28_fu_406_p4;
wire   [31:0] v28_fu_406_p6;
wire   [31:0] v28_fu_406_p8;
wire   [31:0] v28_fu_406_p9;
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
wire   [2:0] v26_fu_343_p1;
wire   [2:0] v26_fu_343_p3;
wire   [2:0] v26_fu_343_p5;
wire   [2:0] v26_fu_343_p7;
wire  signed [2:0] v26_fu_343_p9;
wire  signed [2:0] v26_fu_343_p11;
wire  signed [2:0] v26_fu_343_p13;
wire  signed [2:0] v26_fu_343_p15;
wire   [1:0] v28_fu_406_p1;
wire   [1:0] v28_fu_406_p3;
wire  signed [1:0] v28_fu_406_p5;
wire  signed [1:0] v28_fu_406_p7;
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
#0 v25_2_fu_96 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_17_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h1 ),.din1_WIDTH( 32 ),.CASE2( 3'h2 ),.din2_WIDTH( 32 ),.CASE3( 3'h3 ),.din3_WIDTH( 32 ),.CASE4( 3'h4 ),.din4_WIDTH( 32 ),.CASE5( 3'h5 ),.din5_WIDTH( 32 ),.CASE6( 3'h6 ),.din6_WIDTH( 32 ),.CASE7( 3'h7 ),.din7_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_17_3_32_1_1_U85(.din0(v3_q0),.din1(v3_1_q0),.din2(v3_2_q0),.din3(v3_3_q0),.din4(v3_4_q0),.din5(v3_5_q0),.din6(v3_6_q0),.din7(v3_7_q0),.def(v26_fu_343_p17),.sel(v26_fu_343_p18),.dout(v26_fu_343_p19));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U86(.din0(v28_fu_406_p2),.din1(v28_fu_406_p4),.din2(v28_fu_406_p6),.din3(v28_fu_406_p8),.def(v28_fu_406_p9),.sel(trunc_ln55_s_reg_496_pp0_iter4_reg),.dout(v28_fu_406_p11));
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
        if (((icmp_ln55_fu_289_p2 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v25_2_fu_96 <= add_ln55_fu_295_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_2_fu_96 <= 11'd0;
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
        bitcast_ln60_reg_540 <= bitcast_ln60_fu_429_p1;
        trunc_ln55_3_reg_491_pp0_iter2_reg <= trunc_ln55_3_reg_491;
        trunc_ln55_3_reg_491_pp0_iter3_reg <= trunc_ln55_3_reg_491_pp0_iter2_reg;
        trunc_ln55_s_reg_496_pp0_iter10_reg <= trunc_ln55_s_reg_496_pp0_iter9_reg;
        trunc_ln55_s_reg_496_pp0_iter11_reg <= trunc_ln55_s_reg_496_pp0_iter10_reg;
        trunc_ln55_s_reg_496_pp0_iter12_reg <= trunc_ln55_s_reg_496_pp0_iter11_reg;
        trunc_ln55_s_reg_496_pp0_iter2_reg <= trunc_ln55_s_reg_496;
        trunc_ln55_s_reg_496_pp0_iter3_reg <= trunc_ln55_s_reg_496_pp0_iter2_reg;
        trunc_ln55_s_reg_496_pp0_iter4_reg <= trunc_ln55_s_reg_496_pp0_iter3_reg;
        trunc_ln55_s_reg_496_pp0_iter5_reg <= trunc_ln55_s_reg_496_pp0_iter4_reg;
        trunc_ln55_s_reg_496_pp0_iter6_reg <= trunc_ln55_s_reg_496_pp0_iter5_reg;
        trunc_ln55_s_reg_496_pp0_iter7_reg <= trunc_ln55_s_reg_496_pp0_iter6_reg;
        trunc_ln55_s_reg_496_pp0_iter8_reg <= trunc_ln55_s_reg_496_pp0_iter7_reg;
        trunc_ln55_s_reg_496_pp0_iter9_reg <= trunc_ln55_s_reg_496_pp0_iter8_reg;
        v27_reg_530 <= grp_fu_1825_p_dout0;
        v28_reg_535 <= v28_fu_406_p11;
        v2_0_addr_reg_506 <= zext_ln55_fu_383_p1;
        v2_0_addr_reg_506_pp0_iter10_reg <= v2_0_addr_reg_506_pp0_iter9_reg;
        v2_0_addr_reg_506_pp0_iter11_reg <= v2_0_addr_reg_506_pp0_iter10_reg;
        v2_0_addr_reg_506_pp0_iter12_reg <= v2_0_addr_reg_506_pp0_iter11_reg;
        v2_0_addr_reg_506_pp0_iter5_reg <= v2_0_addr_reg_506;
        v2_0_addr_reg_506_pp0_iter6_reg <= v2_0_addr_reg_506_pp0_iter5_reg;
        v2_0_addr_reg_506_pp0_iter7_reg <= v2_0_addr_reg_506_pp0_iter6_reg;
        v2_0_addr_reg_506_pp0_iter8_reg <= v2_0_addr_reg_506_pp0_iter7_reg;
        v2_0_addr_reg_506_pp0_iter9_reg <= v2_0_addr_reg_506_pp0_iter8_reg;
        v2_1_addr_reg_512 <= zext_ln55_fu_383_p1;
        v2_1_addr_reg_512_pp0_iter10_reg <= v2_1_addr_reg_512_pp0_iter9_reg;
        v2_1_addr_reg_512_pp0_iter11_reg <= v2_1_addr_reg_512_pp0_iter10_reg;
        v2_1_addr_reg_512_pp0_iter12_reg <= v2_1_addr_reg_512_pp0_iter11_reg;
        v2_1_addr_reg_512_pp0_iter5_reg <= v2_1_addr_reg_512;
        v2_1_addr_reg_512_pp0_iter6_reg <= v2_1_addr_reg_512_pp0_iter5_reg;
        v2_1_addr_reg_512_pp0_iter7_reg <= v2_1_addr_reg_512_pp0_iter6_reg;
        v2_1_addr_reg_512_pp0_iter8_reg <= v2_1_addr_reg_512_pp0_iter7_reg;
        v2_1_addr_reg_512_pp0_iter9_reg <= v2_1_addr_reg_512_pp0_iter8_reg;
        v2_2_addr_reg_518 <= zext_ln55_fu_383_p1;
        v2_2_addr_reg_518_pp0_iter10_reg <= v2_2_addr_reg_518_pp0_iter9_reg;
        v2_2_addr_reg_518_pp0_iter11_reg <= v2_2_addr_reg_518_pp0_iter10_reg;
        v2_2_addr_reg_518_pp0_iter12_reg <= v2_2_addr_reg_518_pp0_iter11_reg;
        v2_2_addr_reg_518_pp0_iter5_reg <= v2_2_addr_reg_518;
        v2_2_addr_reg_518_pp0_iter6_reg <= v2_2_addr_reg_518_pp0_iter5_reg;
        v2_2_addr_reg_518_pp0_iter7_reg <= v2_2_addr_reg_518_pp0_iter6_reg;
        v2_2_addr_reg_518_pp0_iter8_reg <= v2_2_addr_reg_518_pp0_iter7_reg;
        v2_2_addr_reg_518_pp0_iter9_reg <= v2_2_addr_reg_518_pp0_iter8_reg;
        v2_3_addr_reg_524 <= zext_ln55_fu_383_p1;
        v2_3_addr_reg_524_pp0_iter10_reg <= v2_3_addr_reg_524_pp0_iter9_reg;
        v2_3_addr_reg_524_pp0_iter11_reg <= v2_3_addr_reg_524_pp0_iter10_reg;
        v2_3_addr_reg_524_pp0_iter12_reg <= v2_3_addr_reg_524_pp0_iter11_reg;
        v2_3_addr_reg_524_pp0_iter5_reg <= v2_3_addr_reg_524;
        v2_3_addr_reg_524_pp0_iter6_reg <= v2_3_addr_reg_524_pp0_iter5_reg;
        v2_3_addr_reg_524_pp0_iter7_reg <= v2_3_addr_reg_524_pp0_iter6_reg;
        v2_3_addr_reg_524_pp0_iter8_reg <= v2_3_addr_reg_524_pp0_iter7_reg;
        v2_3_addr_reg_524_pp0_iter9_reg <= v2_3_addr_reg_524_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        trunc_ln55_3_reg_491 <= trunc_ln55_3_fu_331_p1;
        trunc_ln55_s_reg_496 <= {{v25_reg_440[9:8]}};
        v25_reg_440 <= ap_sig_allocacmp_v25;
        v26_reg_501 <= v26_fu_343_p19;
    end
end
always @ (*) begin
    if (((icmp_ln55_fu_289_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v25 = v25_2_fu_96;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_s_reg_496_pp0_iter12_reg == 2'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_s_reg_496_pp0_iter12_reg == 2'd1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_s_reg_496_pp0_iter12_reg == 2'd2))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_s_reg_496_pp0_iter12_reg == 2'd3))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
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
assign add_ln55_fu_295_p2 = (ap_sig_allocacmp_v25 + 11'd1);
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
assign bitcast_ln60_fu_429_p1 = grp_fu_930_p_dout0;
assign grp_fu_1825_p_ce = 1'b1;
assign grp_fu_1825_p_din0 = v26_reg_501;
assign grp_fu_1825_p_din1 = 32'd3345637376;
assign grp_fu_930_p_ce = 1'b1;
assign grp_fu_930_p_din0 = v28_reg_535;
assign grp_fu_930_p_din1 = v27_reg_530;
assign grp_fu_930_p_opcode = 2'd0;
assign icmp_ln55_fu_289_p2 = ((ap_sig_allocacmp_v25 == 11'd1024) ? 1'b1 : 1'b0);
assign lshr_ln55_5_fu_301_p4 = {{ap_sig_allocacmp_v25[9:3]}};
assign trunc_ln55_3_fu_331_p1 = v25_reg_440[7:0];
assign v26_fu_343_p17 = 'bx;
assign v26_fu_343_p18 = v25_reg_440[2:0];
assign v28_fu_406_p2 = v2_0_q1;
assign v28_fu_406_p4 = v2_1_q1;
assign v28_fu_406_p6 = v2_2_q1;
assign v28_fu_406_p8 = v2_3_q1;
assign v28_fu_406_p9 = 'bx;
assign v2_0_address0 = v2_0_addr_reg_506_pp0_iter12_reg;
assign v2_0_address1 = zext_ln55_fu_383_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_reg_540;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_addr_reg_512_pp0_iter12_reg;
assign v2_1_address1 = zext_ln55_fu_383_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_reg_540;
assign v2_1_we0 = v2_1_we0_local;
assign v2_2_address0 = v2_2_addr_reg_518_pp0_iter12_reg;
assign v2_2_address1 = zext_ln55_fu_383_p1;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = bitcast_ln60_reg_540;
assign v2_2_we0 = v2_2_we0_local;
assign v2_3_address0 = v2_3_addr_reg_524_pp0_iter12_reg;
assign v2_3_address1 = zext_ln55_fu_383_p1;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = bitcast_ln60_reg_540;
assign v2_3_we0 = v2_3_we0_local;
assign v3_1_address0 = zext_ln55_3_fu_311_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_2_address0 = zext_ln55_3_fu_311_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_3_address0 = zext_ln55_3_fu_311_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_4_address0 = zext_ln55_3_fu_311_p1;
assign v3_4_ce0 = v3_4_ce0_local;
assign v3_5_address0 = zext_ln55_3_fu_311_p1;
assign v3_5_ce0 = v3_5_ce0_local;
assign v3_6_address0 = zext_ln55_3_fu_311_p1;
assign v3_6_ce0 = v3_6_ce0_local;
assign v3_7_address0 = zext_ln55_3_fu_311_p1;
assign v3_7_ce0 = v3_7_ce0_local;
assign v3_address0 = zext_ln55_3_fu_311_p1;
assign v3_ce0 = v3_ce0_local;
assign zext_ln55_3_fu_311_p1 = lshr_ln55_5_fu_301_p4;
assign zext_ln55_fu_383_p1 = trunc_ln55_3_reg_491_pp0_iter3_reg;
endmodule 