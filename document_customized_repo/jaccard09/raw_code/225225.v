module SgdLR_sw_SgdLR_sw_Pipeline_label_49 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_address1,v2_1_ce1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_address1,v2_0_ce1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v3_1_address0,v3_1_ce0,v3_1_q0,v3_1_address1,v3_1_ce1,v3_1_q1,v3_2_address0,v3_2_ce0,v3_2_q0,v3_2_address1,v3_2_ce1,v3_2_q1,v3_3_address0,v3_3_ce0,v3_3_q0,v3_3_address1,v3_3_ce1,v3_3_q1,grp_fu_2487_p_din0,grp_fu_2487_p_din1,grp_fu_2487_p_opcode,grp_fu_2487_p_dout0,grp_fu_2487_p_ce,grp_fu_6163_p_din0,grp_fu_6163_p_din1,grp_fu_6163_p_opcode,grp_fu_6163_p_dout0,grp_fu_6163_p_ce,grp_fu_6155_p_din0,grp_fu_6155_p_din1,grp_fu_6155_p_dout0,grp_fu_6155_p_ce,grp_fu_6159_p_din0,grp_fu_6159_p_din1,grp_fu_6159_p_dout0,grp_fu_6159_p_ce); 
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [8:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
output  [8:0] v2_1_address1;
output   v2_1_ce1;
input  [31:0] v2_1_q1;
output  [8:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
output  [8:0] v2_0_address1;
output   v2_0_ce1;
input  [31:0] v2_0_q1;
output  [7:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [7:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [7:0] v3_1_address0;
output   v3_1_ce0;
input  [31:0] v3_1_q0;
output  [7:0] v3_1_address1;
output   v3_1_ce1;
input  [31:0] v3_1_q1;
output  [7:0] v3_2_address0;
output   v3_2_ce0;
input  [31:0] v3_2_q0;
output  [7:0] v3_2_address1;
output   v3_2_ce1;
input  [31:0] v3_2_q1;
output  [7:0] v3_3_address0;
output   v3_3_ce0;
input  [31:0] v3_3_q0;
output  [7:0] v3_3_address1;
output   v3_3_ce1;
input  [31:0] v3_3_q1;
output  [31:0] grp_fu_2487_p_din0;
output  [31:0] grp_fu_2487_p_din1;
output  [0:0] grp_fu_2487_p_opcode;
input  [31:0] grp_fu_2487_p_dout0;
output   grp_fu_2487_p_ce;
output  [31:0] grp_fu_6163_p_din0;
output  [31:0] grp_fu_6163_p_din1;
output  [1:0] grp_fu_6163_p_opcode;
input  [31:0] grp_fu_6163_p_dout0;
output   grp_fu_6163_p_ce;
output  [31:0] grp_fu_6155_p_din0;
output  [31:0] grp_fu_6155_p_din1;
input  [31:0] grp_fu_6155_p_dout0;
output   grp_fu_6155_p_ce;
output  [31:0] grp_fu_6159_p_din0;
output  [31:0] grp_fu_6159_p_din1;
input  [31:0] grp_fu_6159_p_dout0;
output   grp_fu_6159_p_ce;
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
wire   [0:0] tmp_fu_238_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [10:0] v25_reg_389;
wire    ap_block_pp0_stage0_11001;
reg   [8:0] lshr_ln55_6_reg_439;
reg   [8:0] lshr_ln55_6_reg_439_pp0_iter2_reg;
reg   [8:0] lshr_ln55_6_reg_439_pp0_iter3_reg;
wire   [31:0] v26_fu_313_p11;
reg   [31:0] v26_reg_444;
wire   [31:0] v26_5_fu_337_p11;
reg   [31:0] v26_5_reg_449;
reg   [8:0] v2_0_addr_reg_454;
reg   [8:0] v2_0_addr_reg_454_pp0_iter5_reg;
reg   [8:0] v2_0_addr_reg_454_pp0_iter6_reg;
reg   [8:0] v2_0_addr_reg_454_pp0_iter7_reg;
reg   [8:0] v2_0_addr_reg_454_pp0_iter8_reg;
reg   [8:0] v2_0_addr_reg_454_pp0_iter9_reg;
reg   [8:0] v2_0_addr_reg_454_pp0_iter10_reg;
reg   [8:0] v2_0_addr_reg_454_pp0_iter11_reg;
reg   [8:0] v2_0_addr_reg_454_pp0_iter12_reg;
reg   [8:0] v2_1_addr_reg_460;
reg   [8:0] v2_1_addr_reg_460_pp0_iter5_reg;
reg   [8:0] v2_1_addr_reg_460_pp0_iter6_reg;
reg   [8:0] v2_1_addr_reg_460_pp0_iter7_reg;
reg   [8:0] v2_1_addr_reg_460_pp0_iter8_reg;
reg   [8:0] v2_1_addr_reg_460_pp0_iter9_reg;
reg   [8:0] v2_1_addr_reg_460_pp0_iter10_reg;
reg   [8:0] v2_1_addr_reg_460_pp0_iter11_reg;
reg   [8:0] v2_1_addr_reg_460_pp0_iter12_reg;
reg   [31:0] v27_reg_466;
reg   [31:0] v2_0_load_reg_471;
reg   [31:0] v27_5_reg_476;
reg   [31:0] v2_1_load_reg_481;
wire   [31:0] v28_fu_366_p1;
wire   [31:0] v28_5_fu_370_p1;
reg   [31:0] v29_reg_496;
reg   [31:0] v29_5_reg_501;
wire   [63:0] zext_ln55_5_fu_250_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_fu_276_p1;
wire   [63:0] zext_ln55_fu_361_p1;
reg   [10:0] v25_3_fu_74;
wire   [10:0] add_ln55_fu_284_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25;
reg    v3_ce1_local;
reg    v3_ce0_local;
reg    v3_1_ce1_local;
reg    v3_1_ce0_local;
reg    v3_2_ce1_local;
reg    v3_2_ce0_local;
reg    v3_3_ce1_local;
reg    v3_3_ce0_local;
reg    v2_0_ce1_local;
reg    v2_0_we0_local;
wire   [31:0] bitcast_ln60_fu_374_p1;
reg    v2_0_ce0_local;
reg    v2_1_ce1_local;
reg    v2_1_we0_local;
wire   [31:0] bitcast_ln60_5_fu_378_p1;
reg    v2_1_ce0_local;
wire   [7:0] trunc_ln55_fu_246_p1;
wire   [6:0] tmp_s_fu_258_p4;
wire   [7:0] or_ln56_3_fu_268_p3;
wire   [31:0] v26_fu_313_p9;
wire   [1:0] v26_fu_313_p10;
wire   [31:0] v26_5_fu_337_p9;
wire   [1:0] v26_5_fu_337_p10;
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
wire   [1:0] v26_fu_313_p1;
wire   [1:0] v26_fu_313_p3;
wire  signed [1:0] v26_fu_313_p5;
wire  signed [1:0] v26_fu_313_p7;
wire   [1:0] v26_5_fu_337_p1;
wire   [1:0] v26_5_fu_337_p3;
wire  signed [1:0] v26_5_fu_337_p5;
wire  signed [1:0] v26_5_fu_337_p7;
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
#0 v25_3_fu_74 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U114(.din0(v3_q1),.din1(v3_1_q1),.din2(v3_2_q1),.din3(v3_3_q1),.def(v26_fu_313_p9),.sel(v26_fu_313_p10),.dout(v26_fu_313_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U115(.din0(v3_q0),.din1(v3_1_q0),.din2(v3_2_q0),.din3(v3_3_q0),.def(v26_5_fu_337_p9),.sel(v26_5_fu_337_p10),.dout(v26_5_fu_337_p11));
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
        if (((tmp_fu_238_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v25_3_fu_74 <= add_ln55_fu_284_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_3_fu_74 <= 11'd0;
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
        lshr_ln55_6_reg_439_pp0_iter2_reg <= lshr_ln55_6_reg_439;
        lshr_ln55_6_reg_439_pp0_iter3_reg <= lshr_ln55_6_reg_439_pp0_iter2_reg;
        v27_5_reg_476 <= grp_fu_6159_p_dout0;
        v27_reg_466 <= grp_fu_6155_p_dout0;
        v29_5_reg_501 <= grp_fu_6163_p_dout0;
        v29_reg_496 <= grp_fu_2487_p_dout0;
        v2_0_addr_reg_454 <= zext_ln55_fu_361_p1;
        v2_0_addr_reg_454_pp0_iter10_reg <= v2_0_addr_reg_454_pp0_iter9_reg;
        v2_0_addr_reg_454_pp0_iter11_reg <= v2_0_addr_reg_454_pp0_iter10_reg;
        v2_0_addr_reg_454_pp0_iter12_reg <= v2_0_addr_reg_454_pp0_iter11_reg;
        v2_0_addr_reg_454_pp0_iter5_reg <= v2_0_addr_reg_454;
        v2_0_addr_reg_454_pp0_iter6_reg <= v2_0_addr_reg_454_pp0_iter5_reg;
        v2_0_addr_reg_454_pp0_iter7_reg <= v2_0_addr_reg_454_pp0_iter6_reg;
        v2_0_addr_reg_454_pp0_iter8_reg <= v2_0_addr_reg_454_pp0_iter7_reg;
        v2_0_addr_reg_454_pp0_iter9_reg <= v2_0_addr_reg_454_pp0_iter8_reg;
        v2_1_addr_reg_460 <= zext_ln55_fu_361_p1;
        v2_1_addr_reg_460_pp0_iter10_reg <= v2_1_addr_reg_460_pp0_iter9_reg;
        v2_1_addr_reg_460_pp0_iter11_reg <= v2_1_addr_reg_460_pp0_iter10_reg;
        v2_1_addr_reg_460_pp0_iter12_reg <= v2_1_addr_reg_460_pp0_iter11_reg;
        v2_1_addr_reg_460_pp0_iter5_reg <= v2_1_addr_reg_460;
        v2_1_addr_reg_460_pp0_iter6_reg <= v2_1_addr_reg_460_pp0_iter5_reg;
        v2_1_addr_reg_460_pp0_iter7_reg <= v2_1_addr_reg_460_pp0_iter6_reg;
        v2_1_addr_reg_460_pp0_iter8_reg <= v2_1_addr_reg_460_pp0_iter7_reg;
        v2_1_addr_reg_460_pp0_iter9_reg <= v2_1_addr_reg_460_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln55_6_reg_439 <= {{v25_reg_389[9:1]}};
        v25_reg_389 <= ap_sig_allocacmp_v25;
        v26_5_reg_449 <= v26_5_fu_337_p11;
        v26_reg_444 <= v26_fu_313_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        v2_0_load_reg_471 <= v2_0_q1;
        v2_1_load_reg_481 <= v2_1_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_238_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v25 = v25_3_fu_74;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
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
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
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
        v3_2_ce1_local = 1'b1;
    end else begin
        v3_2_ce1_local = 1'b0;
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
        v3_3_ce1_local = 1'b1;
    end else begin
        v3_3_ce1_local = 1'b0;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
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
assign add_ln55_fu_284_p2 = (ap_sig_allocacmp_v25 + 11'd2);
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
assign bitcast_ln60_5_fu_378_p1 = v29_5_reg_501;
assign bitcast_ln60_fu_374_p1 = v29_reg_496;
assign grp_fu_2487_p_ce = 1'b1;
assign grp_fu_2487_p_din0 = v28_fu_366_p1;
assign grp_fu_2487_p_din1 = v27_reg_466;
assign grp_fu_2487_p_opcode = 2'd0;
assign grp_fu_6155_p_ce = 1'b1;
assign grp_fu_6155_p_din0 = v26_reg_444;
assign grp_fu_6155_p_din1 = 32'd3345637376;
assign grp_fu_6159_p_ce = 1'b1;
assign grp_fu_6159_p_din0 = v26_5_reg_449;
assign grp_fu_6159_p_din1 = 32'd3345637376;
assign grp_fu_6163_p_ce = 1'b1;
assign grp_fu_6163_p_din0 = v28_5_fu_370_p1;
assign grp_fu_6163_p_din1 = v27_5_reg_476;
assign grp_fu_6163_p_opcode = 2'd0;
assign or_ln56_3_fu_268_p3 = {{tmp_s_fu_258_p4}, {1'd1}};
assign tmp_fu_238_p3 = ap_sig_allocacmp_v25[32'd10];
assign tmp_s_fu_258_p4 = {{ap_sig_allocacmp_v25[7:1]}};
assign trunc_ln55_fu_246_p1 = ap_sig_allocacmp_v25[7:0];
assign v26_5_fu_337_p10 = {{v25_reg_389[9:8]}};
assign v26_5_fu_337_p9 = 'bx;
assign v26_fu_313_p10 = {{v25_reg_389[9:8]}};
assign v26_fu_313_p9 = 'bx;
assign v28_5_fu_370_p1 = v2_1_load_reg_481;
assign v28_fu_366_p1 = v2_0_load_reg_471;
assign v2_0_address0 = v2_0_addr_reg_454_pp0_iter12_reg;
assign v2_0_address1 = zext_ln55_fu_361_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_fu_374_p1;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_addr_reg_460_pp0_iter12_reg;
assign v2_1_address1 = zext_ln55_fu_361_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_5_fu_378_p1;
assign v2_1_we0 = v2_1_we0_local;
assign v3_1_address0 = zext_ln56_fu_276_p1;
assign v3_1_address1 = zext_ln55_5_fu_250_p1;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_2_address0 = zext_ln56_fu_276_p1;
assign v3_2_address1 = zext_ln55_5_fu_250_p1;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_ce1 = v3_2_ce1_local;
assign v3_3_address0 = zext_ln56_fu_276_p1;
assign v3_3_address1 = zext_ln55_5_fu_250_p1;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_ce1 = v3_3_ce1_local;
assign v3_address0 = zext_ln56_fu_276_p1;
assign v3_address1 = zext_ln55_5_fu_250_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_5_fu_250_p1 = trunc_ln55_fu_246_p1;
assign zext_ln55_fu_361_p1 = lshr_ln55_6_reg_439_pp0_iter3_reg;
assign zext_ln56_fu_276_p1 = or_ln56_3_fu_268_p3;
endmodule 