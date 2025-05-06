
module SgdLR_sw_SgdLR_sw_Pipeline_label_496 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_7_address0,v2_7_ce0,v2_7_we0,v2_7_d0,v2_7_address1,v2_7_ce1,v2_7_q1,v2_6_address0,v2_6_ce0,v2_6_we0,v2_6_d0,v2_6_address1,v2_6_ce1,v2_6_q1,v2_5_address0,v2_5_ce0,v2_5_we0,v2_5_d0,v2_5_address1,v2_5_ce1,v2_5_q1,v2_4_address0,v2_4_ce0,v2_4_we0,v2_4_d0,v2_4_address1,v2_4_ce1,v2_4_q1,v2_3_address0,v2_3_ce0,v2_3_we0,v2_3_d0,v2_3_address1,v2_3_ce1,v2_3_q1,v2_2_address0,v2_2_ce0,v2_2_we0,v2_2_d0,v2_2_address1,v2_2_ce1,v2_2_q1,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_address1,v2_1_ce1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_address1,v2_0_ce1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,grp_fu_3056_p_din0,grp_fu_3056_p_din1,grp_fu_3056_p_opcode,grp_fu_3056_p_dout0,grp_fu_3056_p_ce,grp_fu_6748_p_din0,grp_fu_6748_p_din1,grp_fu_6748_p_opcode,grp_fu_6748_p_dout0,grp_fu_6748_p_ce,grp_fu_6744_p_din0,grp_fu_6744_p_din1,grp_fu_6744_p_dout0,grp_fu_6744_p_ce,grp_fu_6752_p_din0,grp_fu_6752_p_din1,grp_fu_6752_p_dout0,grp_fu_6752_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [6:0] v2_7_address0;
output   v2_7_ce0;
output   v2_7_we0;
output  [31:0] v2_7_d0;
output  [6:0] v2_7_address1;
output   v2_7_ce1;
input  [31:0] v2_7_q1;
output  [6:0] v2_6_address0;
output   v2_6_ce0;
output   v2_6_we0;
output  [31:0] v2_6_d0;
output  [6:0] v2_6_address1;
output   v2_6_ce1;
input  [31:0] v2_6_q1;
output  [6:0] v2_5_address0;
output   v2_5_ce0;
output   v2_5_we0;
output  [31:0] v2_5_d0;
output  [6:0] v2_5_address1;
output   v2_5_ce1;
input  [31:0] v2_5_q1;
output  [6:0] v2_4_address0;
output   v2_4_ce0;
output   v2_4_we0;
output  [31:0] v2_4_d0;
output  [6:0] v2_4_address1;
output   v2_4_ce1;
input  [31:0] v2_4_q1;
output  [6:0] v2_3_address0;
output   v2_3_ce0;
output   v2_3_we0;
output  [31:0] v2_3_d0;
output  [6:0] v2_3_address1;
output   v2_3_ce1;
input  [31:0] v2_3_q1;
output  [6:0] v2_2_address0;
output   v2_2_ce0;
output   v2_2_we0;
output  [31:0] v2_2_d0;
output  [6:0] v2_2_address1;
output   v2_2_ce1;
input  [31:0] v2_2_q1;
output  [6:0] v2_1_address0;
output   v2_1_ce0;
output   v2_1_we0;
output  [31:0] v2_1_d0;
output  [6:0] v2_1_address1;
output   v2_1_ce1;
input  [31:0] v2_1_q1;
output  [6:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
output  [6:0] v2_0_address1;
output   v2_0_ce1;
input  [31:0] v2_0_q1;
output  [9:0] v3_address0;
output   v3_ce0;
input  [31:0] v3_q0;
output  [9:0] v3_address1;
output   v3_ce1;
input  [31:0] v3_q1;
output  [31:0] grp_fu_3056_p_din0;
output  [31:0] grp_fu_3056_p_din1;
output  [0:0] grp_fu_3056_p_opcode;
input  [31:0] grp_fu_3056_p_dout0;
output   grp_fu_3056_p_ce;
output  [31:0] grp_fu_6748_p_din0;
output  [31:0] grp_fu_6748_p_din1;
output  [1:0] grp_fu_6748_p_opcode;
input  [31:0] grp_fu_6748_p_dout0;
output   grp_fu_6748_p_ce;
output  [31:0] grp_fu_6744_p_din0;
output  [31:0] grp_fu_6744_p_din1;
input  [31:0] grp_fu_6744_p_dout0;
output   grp_fu_6744_p_ce;
output  [31:0] grp_fu_6752_p_din0;
output  [31:0] grp_fu_6752_p_din1;
input  [31:0] grp_fu_6752_p_dout0;
output   grp_fu_6752_p_ce;
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
wire   [0:0] tmp_fu_267_p3;
reg    ap_condition_exit_pp0_iter0_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire   [2:0] trunc_ln55_fu_280_p1;
reg   [2:0] trunc_ln55_reg_436;
reg   [2:0] trunc_ln55_reg_436_pp0_iter1_reg;
reg   [2:0] trunc_ln55_reg_436_pp0_iter2_reg;
reg   [2:0] trunc_ln55_reg_436_pp0_iter3_reg;
reg   [2:0] trunc_ln55_reg_436_pp0_iter4_reg;
reg   [2:0] trunc_ln55_reg_436_pp0_iter5_reg;
reg   [2:0] trunc_ln55_reg_436_pp0_iter6_reg;
reg   [2:0] trunc_ln55_reg_436_pp0_iter7_reg;
reg   [2:0] trunc_ln55_reg_436_pp0_iter8_reg;
reg   [2:0] trunc_ln55_reg_436_pp0_iter9_reg;
reg   [2:0] trunc_ln55_reg_436_pp0_iter10_reg;
reg   [2:0] trunc_ln55_reg_436_pp0_iter11_reg;
reg   [2:0] trunc_ln55_reg_436_pp0_iter12_reg;
reg   [6:0] lshr_ln55_s_reg_442;
reg   [6:0] lshr_ln55_s_reg_442_pp0_iter1_reg;
reg   [6:0] lshr_ln55_s_reg_442_pp0_iter2_reg;
reg   [6:0] lshr_ln55_s_reg_442_pp0_iter3_reg;
reg   [31:0] v26_reg_457;
reg   [31:0] v26_2_reg_462;
reg   [6:0] v2_0_addr_reg_467;
reg   [6:0] v2_0_addr_reg_467_pp0_iter5_reg;
reg   [6:0] v2_0_addr_reg_467_pp0_iter6_reg;
reg   [6:0] v2_0_addr_reg_467_pp0_iter7_reg;
reg   [6:0] v2_0_addr_reg_467_pp0_iter8_reg;
reg   [6:0] v2_0_addr_reg_467_pp0_iter9_reg;
reg   [6:0] v2_0_addr_reg_467_pp0_iter10_reg;
reg   [6:0] v2_0_addr_reg_467_pp0_iter11_reg;
reg   [6:0] v2_0_addr_reg_467_pp0_iter12_reg;
reg   [6:0] v2_2_addr_reg_473;
reg   [6:0] v2_2_addr_reg_473_pp0_iter5_reg;
reg   [6:0] v2_2_addr_reg_473_pp0_iter6_reg;
reg   [6:0] v2_2_addr_reg_473_pp0_iter7_reg;
reg   [6:0] v2_2_addr_reg_473_pp0_iter8_reg;
reg   [6:0] v2_2_addr_reg_473_pp0_iter9_reg;
reg   [6:0] v2_2_addr_reg_473_pp0_iter10_reg;
reg   [6:0] v2_2_addr_reg_473_pp0_iter11_reg;
reg   [6:0] v2_2_addr_reg_473_pp0_iter12_reg;
reg   [6:0] v2_4_addr_reg_479;
reg   [6:0] v2_4_addr_reg_479_pp0_iter5_reg;
reg   [6:0] v2_4_addr_reg_479_pp0_iter6_reg;
reg   [6:0] v2_4_addr_reg_479_pp0_iter7_reg;
reg   [6:0] v2_4_addr_reg_479_pp0_iter8_reg;
reg   [6:0] v2_4_addr_reg_479_pp0_iter9_reg;
reg   [6:0] v2_4_addr_reg_479_pp0_iter10_reg;
reg   [6:0] v2_4_addr_reg_479_pp0_iter11_reg;
reg   [6:0] v2_4_addr_reg_479_pp0_iter12_reg;
reg   [6:0] v2_6_addr_reg_485;
reg   [6:0] v2_6_addr_reg_485_pp0_iter5_reg;
reg   [6:0] v2_6_addr_reg_485_pp0_iter6_reg;
reg   [6:0] v2_6_addr_reg_485_pp0_iter7_reg;
reg   [6:0] v2_6_addr_reg_485_pp0_iter8_reg;
reg   [6:0] v2_6_addr_reg_485_pp0_iter9_reg;
reg   [6:0] v2_6_addr_reg_485_pp0_iter10_reg;
reg   [6:0] v2_6_addr_reg_485_pp0_iter11_reg;
reg   [6:0] v2_6_addr_reg_485_pp0_iter12_reg;
reg   [6:0] v2_1_addr_reg_491;
reg   [6:0] v2_1_addr_reg_491_pp0_iter5_reg;
reg   [6:0] v2_1_addr_reg_491_pp0_iter6_reg;
reg   [6:0] v2_1_addr_reg_491_pp0_iter7_reg;
reg   [6:0] v2_1_addr_reg_491_pp0_iter8_reg;
reg   [6:0] v2_1_addr_reg_491_pp0_iter9_reg;
reg   [6:0] v2_1_addr_reg_491_pp0_iter10_reg;
reg   [6:0] v2_1_addr_reg_491_pp0_iter11_reg;
reg   [6:0] v2_1_addr_reg_491_pp0_iter12_reg;
reg   [6:0] v2_3_addr_reg_497;
reg   [6:0] v2_3_addr_reg_497_pp0_iter5_reg;
reg   [6:0] v2_3_addr_reg_497_pp0_iter6_reg;
reg   [6:0] v2_3_addr_reg_497_pp0_iter7_reg;
reg   [6:0] v2_3_addr_reg_497_pp0_iter8_reg;
reg   [6:0] v2_3_addr_reg_497_pp0_iter9_reg;
reg   [6:0] v2_3_addr_reg_497_pp0_iter10_reg;
reg   [6:0] v2_3_addr_reg_497_pp0_iter11_reg;
reg   [6:0] v2_3_addr_reg_497_pp0_iter12_reg;
reg   [6:0] v2_5_addr_reg_503;
reg   [6:0] v2_5_addr_reg_503_pp0_iter5_reg;
reg   [6:0] v2_5_addr_reg_503_pp0_iter6_reg;
reg   [6:0] v2_5_addr_reg_503_pp0_iter7_reg;
reg   [6:0] v2_5_addr_reg_503_pp0_iter8_reg;
reg   [6:0] v2_5_addr_reg_503_pp0_iter9_reg;
reg   [6:0] v2_5_addr_reg_503_pp0_iter10_reg;
reg   [6:0] v2_5_addr_reg_503_pp0_iter11_reg;
reg   [6:0] v2_5_addr_reg_503_pp0_iter12_reg;
reg   [6:0] v2_7_addr_reg_509;
reg   [6:0] v2_7_addr_reg_509_pp0_iter5_reg;
reg   [6:0] v2_7_addr_reg_509_pp0_iter6_reg;
reg   [6:0] v2_7_addr_reg_509_pp0_iter7_reg;
reg   [6:0] v2_7_addr_reg_509_pp0_iter8_reg;
reg   [6:0] v2_7_addr_reg_509_pp0_iter9_reg;
reg   [6:0] v2_7_addr_reg_509_pp0_iter10_reg;
reg   [6:0] v2_7_addr_reg_509_pp0_iter11_reg;
reg   [6:0] v2_7_addr_reg_509_pp0_iter12_reg;
reg   [31:0] v27_reg_515;
wire   [31:0] v28_fu_355_p11;
reg   [31:0] v28_reg_520;
reg   [31:0] v27_2_reg_525;
wire   [31:0] v28_2_fu_394_p11;
reg   [31:0] v28_2_reg_530;
wire   [31:0] bitcast_ln60_fu_417_p1;
reg   [31:0] bitcast_ln60_reg_535;
wire   [31:0] bitcast_ln60_2_fu_421_p1;
reg   [31:0] bitcast_ln60_2_reg_543;
wire   [63:0] zext_ln55_fu_275_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_fu_312_p1;
wire   [63:0] zext_ln55_2_fu_328_p1;
reg   [10:0] v25_fu_76;
wire   [10:0] add_ln55_fu_317_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_2;
reg    v3_ce1_local;
reg    v3_ce0_local;
reg    v2_0_ce1_local;
reg    v2_0_we0_local;
reg    v2_0_ce0_local;
reg    v2_2_ce1_local;
reg    v2_2_we0_local;
reg    v2_2_ce0_local;
reg    v2_4_ce1_local;
reg    v2_4_we0_local;
reg    v2_4_ce0_local;
reg    v2_6_ce1_local;
reg    v2_6_we0_local;
reg    v2_6_ce0_local;
reg    v2_1_ce1_local;
reg    v2_1_we0_local;
reg    v2_1_ce0_local;
reg    v2_3_ce1_local;
reg    v2_3_we0_local;
reg    v2_3_ce0_local;
reg    v2_5_ce1_local;
reg    v2_5_we0_local;
reg    v2_5_ce0_local;
reg    v2_7_ce1_local;
reg    v2_7_we0_local;
reg    v2_7_ce0_local;
wire   [8:0] tmp_s_fu_294_p4;
wire   [9:0] or_ln55_s_fu_304_p3;
wire   [31:0] v28_fu_355_p2;
wire   [31:0] v28_fu_355_p4;
wire   [31:0] v28_fu_355_p6;
wire   [31:0] v28_fu_355_p8;
wire   [31:0] v28_fu_355_p9;
wire   [31:0] v28_2_fu_394_p2;
wire   [31:0] v28_2_fu_394_p4;
wire   [31:0] v28_2_fu_394_p6;
wire   [31:0] v28_2_fu_394_p8;
wire   [31:0] v28_2_fu_394_p9;
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
wire   [2:0] v28_fu_355_p1;
wire   [2:0] v28_fu_355_p3;
wire  signed [2:0] v28_fu_355_p5;
wire  signed [2:0] v28_fu_355_p7;
wire   [2:0] v28_2_fu_394_p1;
wire   [2:0] v28_2_fu_394_p3;
wire  signed [2:0] v28_2_fu_394_p5;
wire  signed [2:0] v28_2_fu_394_p7;
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
#0 v25_fu_76 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U1122(.din0(v28_fu_355_p2),.din1(v28_fu_355_p4),.din2(v28_fu_355_p6),.din3(v28_fu_355_p8),.def(v28_fu_355_p9),.sel(trunc_ln55_reg_436_pp0_iter4_reg),.dout(v28_fu_355_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_3_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 3'h0 ),.din0_WIDTH( 32 ),.CASE1( 3'h2 ),.din1_WIDTH( 32 ),.CASE2( 3'h4 ),.din2_WIDTH( 32 ),.CASE3( 3'h6 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 3 ),.dout_WIDTH( 32 ))
sparsemux_9_3_32_1_1_U1123(.din0(v28_2_fu_394_p2),.din1(v28_2_fu_394_p4),.din2(v28_2_fu_394_p6),.din3(v28_2_fu_394_p8),.def(v28_2_fu_394_p9),.sel(trunc_ln55_reg_436_pp0_iter4_reg),.dout(v28_2_fu_394_p11));
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
        if (((tmp_fu_267_p3 == 1'd0) & (ap_enable_reg_pp0_iter0 == 1'b1))) begin
            v25_fu_76 <= add_ln55_fu_317_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_76 <= 11'd0;
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
        bitcast_ln60_2_reg_543 <= bitcast_ln60_2_fu_421_p1;
        bitcast_ln60_reg_535 <= bitcast_ln60_fu_417_p1;
        lshr_ln55_s_reg_442_pp0_iter2_reg <= lshr_ln55_s_reg_442_pp0_iter1_reg;
        lshr_ln55_s_reg_442_pp0_iter3_reg <= lshr_ln55_s_reg_442_pp0_iter2_reg;
        trunc_ln55_reg_436_pp0_iter10_reg <= trunc_ln55_reg_436_pp0_iter9_reg;
        trunc_ln55_reg_436_pp0_iter11_reg <= trunc_ln55_reg_436_pp0_iter10_reg;
        trunc_ln55_reg_436_pp0_iter12_reg <= trunc_ln55_reg_436_pp0_iter11_reg;
        trunc_ln55_reg_436_pp0_iter2_reg <= trunc_ln55_reg_436_pp0_iter1_reg;
        trunc_ln55_reg_436_pp0_iter3_reg <= trunc_ln55_reg_436_pp0_iter2_reg;
        trunc_ln55_reg_436_pp0_iter4_reg <= trunc_ln55_reg_436_pp0_iter3_reg;
        trunc_ln55_reg_436_pp0_iter5_reg <= trunc_ln55_reg_436_pp0_iter4_reg;
        trunc_ln55_reg_436_pp0_iter6_reg <= trunc_ln55_reg_436_pp0_iter5_reg;
        trunc_ln55_reg_436_pp0_iter7_reg <= trunc_ln55_reg_436_pp0_iter6_reg;
        trunc_ln55_reg_436_pp0_iter8_reg <= trunc_ln55_reg_436_pp0_iter7_reg;
        trunc_ln55_reg_436_pp0_iter9_reg <= trunc_ln55_reg_436_pp0_iter8_reg;
        v27_2_reg_525 <= grp_fu_6752_p_dout0;
        v27_reg_515 <= grp_fu_6744_p_dout0;
        v28_2_reg_530 <= v28_2_fu_394_p11;
        v28_reg_520 <= v28_fu_355_p11;
        v2_0_addr_reg_467 <= zext_ln55_2_fu_328_p1;
        v2_0_addr_reg_467_pp0_iter10_reg <= v2_0_addr_reg_467_pp0_iter9_reg;
        v2_0_addr_reg_467_pp0_iter11_reg <= v2_0_addr_reg_467_pp0_iter10_reg;
        v2_0_addr_reg_467_pp0_iter12_reg <= v2_0_addr_reg_467_pp0_iter11_reg;
        v2_0_addr_reg_467_pp0_iter5_reg <= v2_0_addr_reg_467;
        v2_0_addr_reg_467_pp0_iter6_reg <= v2_0_addr_reg_467_pp0_iter5_reg;
        v2_0_addr_reg_467_pp0_iter7_reg <= v2_0_addr_reg_467_pp0_iter6_reg;
        v2_0_addr_reg_467_pp0_iter8_reg <= v2_0_addr_reg_467_pp0_iter7_reg;
        v2_0_addr_reg_467_pp0_iter9_reg <= v2_0_addr_reg_467_pp0_iter8_reg;
        v2_1_addr_reg_491 <= zext_ln55_2_fu_328_p1;
        v2_1_addr_reg_491_pp0_iter10_reg <= v2_1_addr_reg_491_pp0_iter9_reg;
        v2_1_addr_reg_491_pp0_iter11_reg <= v2_1_addr_reg_491_pp0_iter10_reg;
        v2_1_addr_reg_491_pp0_iter12_reg <= v2_1_addr_reg_491_pp0_iter11_reg;
        v2_1_addr_reg_491_pp0_iter5_reg <= v2_1_addr_reg_491;
        v2_1_addr_reg_491_pp0_iter6_reg <= v2_1_addr_reg_491_pp0_iter5_reg;
        v2_1_addr_reg_491_pp0_iter7_reg <= v2_1_addr_reg_491_pp0_iter6_reg;
        v2_1_addr_reg_491_pp0_iter8_reg <= v2_1_addr_reg_491_pp0_iter7_reg;
        v2_1_addr_reg_491_pp0_iter9_reg <= v2_1_addr_reg_491_pp0_iter8_reg;
        v2_2_addr_reg_473 <= zext_ln55_2_fu_328_p1;
        v2_2_addr_reg_473_pp0_iter10_reg <= v2_2_addr_reg_473_pp0_iter9_reg;
        v2_2_addr_reg_473_pp0_iter11_reg <= v2_2_addr_reg_473_pp0_iter10_reg;
        v2_2_addr_reg_473_pp0_iter12_reg <= v2_2_addr_reg_473_pp0_iter11_reg;
        v2_2_addr_reg_473_pp0_iter5_reg <= v2_2_addr_reg_473;
        v2_2_addr_reg_473_pp0_iter6_reg <= v2_2_addr_reg_473_pp0_iter5_reg;
        v2_2_addr_reg_473_pp0_iter7_reg <= v2_2_addr_reg_473_pp0_iter6_reg;
        v2_2_addr_reg_473_pp0_iter8_reg <= v2_2_addr_reg_473_pp0_iter7_reg;
        v2_2_addr_reg_473_pp0_iter9_reg <= v2_2_addr_reg_473_pp0_iter8_reg;
        v2_3_addr_reg_497 <= zext_ln55_2_fu_328_p1;
        v2_3_addr_reg_497_pp0_iter10_reg <= v2_3_addr_reg_497_pp0_iter9_reg;
        v2_3_addr_reg_497_pp0_iter11_reg <= v2_3_addr_reg_497_pp0_iter10_reg;
        v2_3_addr_reg_497_pp0_iter12_reg <= v2_3_addr_reg_497_pp0_iter11_reg;
        v2_3_addr_reg_497_pp0_iter5_reg <= v2_3_addr_reg_497;
        v2_3_addr_reg_497_pp0_iter6_reg <= v2_3_addr_reg_497_pp0_iter5_reg;
        v2_3_addr_reg_497_pp0_iter7_reg <= v2_3_addr_reg_497_pp0_iter6_reg;
        v2_3_addr_reg_497_pp0_iter8_reg <= v2_3_addr_reg_497_pp0_iter7_reg;
        v2_3_addr_reg_497_pp0_iter9_reg <= v2_3_addr_reg_497_pp0_iter8_reg;
        v2_4_addr_reg_479 <= zext_ln55_2_fu_328_p1;
        v2_4_addr_reg_479_pp0_iter10_reg <= v2_4_addr_reg_479_pp0_iter9_reg;
        v2_4_addr_reg_479_pp0_iter11_reg <= v2_4_addr_reg_479_pp0_iter10_reg;
        v2_4_addr_reg_479_pp0_iter12_reg <= v2_4_addr_reg_479_pp0_iter11_reg;
        v2_4_addr_reg_479_pp0_iter5_reg <= v2_4_addr_reg_479;
        v2_4_addr_reg_479_pp0_iter6_reg <= v2_4_addr_reg_479_pp0_iter5_reg;
        v2_4_addr_reg_479_pp0_iter7_reg <= v2_4_addr_reg_479_pp0_iter6_reg;
        v2_4_addr_reg_479_pp0_iter8_reg <= v2_4_addr_reg_479_pp0_iter7_reg;
        v2_4_addr_reg_479_pp0_iter9_reg <= v2_4_addr_reg_479_pp0_iter8_reg;
        v2_5_addr_reg_503 <= zext_ln55_2_fu_328_p1;
        v2_5_addr_reg_503_pp0_iter10_reg <= v2_5_addr_reg_503_pp0_iter9_reg;
        v2_5_addr_reg_503_pp0_iter11_reg <= v2_5_addr_reg_503_pp0_iter10_reg;
        v2_5_addr_reg_503_pp0_iter12_reg <= v2_5_addr_reg_503_pp0_iter11_reg;
        v2_5_addr_reg_503_pp0_iter5_reg <= v2_5_addr_reg_503;
        v2_5_addr_reg_503_pp0_iter6_reg <= v2_5_addr_reg_503_pp0_iter5_reg;
        v2_5_addr_reg_503_pp0_iter7_reg <= v2_5_addr_reg_503_pp0_iter6_reg;
        v2_5_addr_reg_503_pp0_iter8_reg <= v2_5_addr_reg_503_pp0_iter7_reg;
        v2_5_addr_reg_503_pp0_iter9_reg <= v2_5_addr_reg_503_pp0_iter8_reg;
        v2_6_addr_reg_485 <= zext_ln55_2_fu_328_p1;
        v2_6_addr_reg_485_pp0_iter10_reg <= v2_6_addr_reg_485_pp0_iter9_reg;
        v2_6_addr_reg_485_pp0_iter11_reg <= v2_6_addr_reg_485_pp0_iter10_reg;
        v2_6_addr_reg_485_pp0_iter12_reg <= v2_6_addr_reg_485_pp0_iter11_reg;
        v2_6_addr_reg_485_pp0_iter5_reg <= v2_6_addr_reg_485;
        v2_6_addr_reg_485_pp0_iter6_reg <= v2_6_addr_reg_485_pp0_iter5_reg;
        v2_6_addr_reg_485_pp0_iter7_reg <= v2_6_addr_reg_485_pp0_iter6_reg;
        v2_6_addr_reg_485_pp0_iter8_reg <= v2_6_addr_reg_485_pp0_iter7_reg;
        v2_6_addr_reg_485_pp0_iter9_reg <= v2_6_addr_reg_485_pp0_iter8_reg;
        v2_7_addr_reg_509 <= zext_ln55_2_fu_328_p1;
        v2_7_addr_reg_509_pp0_iter10_reg <= v2_7_addr_reg_509_pp0_iter9_reg;
        v2_7_addr_reg_509_pp0_iter11_reg <= v2_7_addr_reg_509_pp0_iter10_reg;
        v2_7_addr_reg_509_pp0_iter12_reg <= v2_7_addr_reg_509_pp0_iter11_reg;
        v2_7_addr_reg_509_pp0_iter5_reg <= v2_7_addr_reg_509;
        v2_7_addr_reg_509_pp0_iter6_reg <= v2_7_addr_reg_509_pp0_iter5_reg;
        v2_7_addr_reg_509_pp0_iter7_reg <= v2_7_addr_reg_509_pp0_iter6_reg;
        v2_7_addr_reg_509_pp0_iter8_reg <= v2_7_addr_reg_509_pp0_iter7_reg;
        v2_7_addr_reg_509_pp0_iter9_reg <= v2_7_addr_reg_509_pp0_iter8_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        lshr_ln55_s_reg_442 <= {{ap_sig_allocacmp_v25_2[9:3]}};
        lshr_ln55_s_reg_442_pp0_iter1_reg <= lshr_ln55_s_reg_442;
        trunc_ln55_reg_436 <= trunc_ln55_fu_280_p1;
        trunc_ln55_reg_436_pp0_iter1_reg <= trunc_ln55_reg_436;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v26_2_reg_462 <= v3_q0;
        v26_reg_457 <= v3_q1;
    end
end
always @ (*) begin
    if (((tmp_fu_267_p3 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
    if (((ap_start_int == 1'b0) & (ap_idle_pp0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
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
        ap_sig_allocacmp_v25_2 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_2 = v25_fu_76;
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_reg_436_pp0_iter12_reg == 3'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_reg_436_pp0_iter12_reg == 3'd0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_reg_436_pp0_iter12_reg == 3'd2))) begin
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
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_reg_436_pp0_iter12_reg == 3'd2))) begin
        v2_3_we0_local = 1'b1;
    end else begin
        v2_3_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_4_ce0_local = 1'b1;
    end else begin
        v2_4_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_4_ce1_local = 1'b1;
    end else begin
        v2_4_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_reg_436_pp0_iter12_reg == 3'd4))) begin
        v2_4_we0_local = 1'b1;
    end else begin
        v2_4_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_5_ce0_local = 1'b1;
    end else begin
        v2_5_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_5_ce1_local = 1'b1;
    end else begin
        v2_5_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1) & (trunc_ln55_reg_436_pp0_iter12_reg == 3'd4))) begin
        v2_5_we0_local = 1'b1;
    end else begin
        v2_5_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_6_ce0_local = 1'b1;
    end else begin
        v2_6_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_6_ce1_local = 1'b1;
    end else begin
        v2_6_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln55_reg_436_pp0_iter12_reg == 3'd4) & ~(trunc_ln55_reg_436_pp0_iter12_reg == 3'd2) & ~(trunc_ln55_reg_436_pp0_iter12_reg == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_6_we0_local = 1'b1;
    end else begin
        v2_6_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_7_ce0_local = 1'b1;
    end else begin
        v2_7_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1))) begin
        v2_7_ce1_local = 1'b1;
    end else begin
        v2_7_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((~(trunc_ln55_reg_436_pp0_iter12_reg == 3'd4) & ~(trunc_ln55_reg_436_pp0_iter12_reg == 3'd2) & ~(trunc_ln55_reg_436_pp0_iter12_reg == 3'd0) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter13 == 1'b1))) begin
        v2_7_we0_local = 1'b1;
    end else begin
        v2_7_we0_local = 1'b0;
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
assign add_ln55_fu_317_p2 = (ap_sig_allocacmp_v25_2 + 11'd2);
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
assign bitcast_ln60_2_fu_421_p1 = grp_fu_6748_p_dout0;
assign bitcast_ln60_fu_417_p1 = grp_fu_3056_p_dout0;
assign grp_fu_3056_p_ce = 1'b1;
assign grp_fu_3056_p_din0 = v28_reg_520;
assign grp_fu_3056_p_din1 = v27_reg_515;
assign grp_fu_3056_p_opcode = 2'd0;
assign grp_fu_6744_p_ce = 1'b1;
assign grp_fu_6744_p_din0 = v26_reg_457;
assign grp_fu_6744_p_din1 = 32'd3345637376;
assign grp_fu_6748_p_ce = 1'b1;
assign grp_fu_6748_p_din0 = v28_2_reg_530;
assign grp_fu_6748_p_din1 = v27_2_reg_525;
assign grp_fu_6748_p_opcode = 2'd0;
assign grp_fu_6752_p_ce = 1'b1;
assign grp_fu_6752_p_din0 = v26_2_reg_462;
assign grp_fu_6752_p_din1 = 32'd3345637376;
assign or_ln55_s_fu_304_p3 = {{tmp_s_fu_294_p4}, {1'd1}};
assign tmp_fu_267_p3 = ap_sig_allocacmp_v25_2[32'd10];
assign tmp_s_fu_294_p4 = {{ap_sig_allocacmp_v25_2[9:1]}};
assign trunc_ln55_fu_280_p1 = ap_sig_allocacmp_v25_2[2:0];
assign v28_2_fu_394_p2 = v2_1_q1;
assign v28_2_fu_394_p4 = v2_3_q1;
assign v28_2_fu_394_p6 = v2_5_q1;
assign v28_2_fu_394_p8 = v2_7_q1;
assign v28_2_fu_394_p9 = 'bx;
assign v28_fu_355_p2 = v2_0_q1;
assign v28_fu_355_p4 = v2_2_q1;
assign v28_fu_355_p6 = v2_4_q1;
assign v28_fu_355_p8 = v2_6_q1;
assign v28_fu_355_p9 = 'bx;
assign v2_0_address0 = v2_0_addr_reg_467_pp0_iter12_reg;
assign v2_0_address1 = zext_ln55_2_fu_328_p1;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_reg_535;
assign v2_0_we0 = v2_0_we0_local;
assign v2_1_address0 = v2_1_addr_reg_491_pp0_iter12_reg;
assign v2_1_address1 = zext_ln55_2_fu_328_p1;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_2_reg_543;
assign v2_1_we0 = v2_1_we0_local;
assign v2_2_address0 = v2_2_addr_reg_473_pp0_iter12_reg;
assign v2_2_address1 = zext_ln55_2_fu_328_p1;
assign v2_2_ce0 = v2_2_ce0_local;
assign v2_2_ce1 = v2_2_ce1_local;
assign v2_2_d0 = bitcast_ln60_reg_535;
assign v2_2_we0 = v2_2_we0_local;
assign v2_3_address0 = v2_3_addr_reg_497_pp0_iter12_reg;
assign v2_3_address1 = zext_ln55_2_fu_328_p1;
assign v2_3_ce0 = v2_3_ce0_local;
assign v2_3_ce1 = v2_3_ce1_local;
assign v2_3_d0 = bitcast_ln60_2_reg_543;
assign v2_3_we0 = v2_3_we0_local;
assign v2_4_address0 = v2_4_addr_reg_479_pp0_iter12_reg;
assign v2_4_address1 = zext_ln55_2_fu_328_p1;
assign v2_4_ce0 = v2_4_ce0_local;
assign v2_4_ce1 = v2_4_ce1_local;
assign v2_4_d0 = bitcast_ln60_reg_535;
assign v2_4_we0 = v2_4_we0_local;
assign v2_5_address0 = v2_5_addr_reg_503_pp0_iter12_reg;
assign v2_5_address1 = zext_ln55_2_fu_328_p1;
assign v2_5_ce0 = v2_5_ce0_local;
assign v2_5_ce1 = v2_5_ce1_local;
assign v2_5_d0 = bitcast_ln60_2_reg_543;
assign v2_5_we0 = v2_5_we0_local;
assign v2_6_address0 = v2_6_addr_reg_485_pp0_iter12_reg;
assign v2_6_address1 = zext_ln55_2_fu_328_p1;
assign v2_6_ce0 = v2_6_ce0_local;
assign v2_6_ce1 = v2_6_ce1_local;
assign v2_6_d0 = bitcast_ln60_reg_535;
assign v2_6_we0 = v2_6_we0_local;
assign v2_7_address0 = v2_7_addr_reg_509_pp0_iter12_reg;
assign v2_7_address1 = zext_ln55_2_fu_328_p1;
assign v2_7_ce0 = v2_7_ce0_local;
assign v2_7_ce1 = v2_7_ce1_local;
assign v2_7_d0 = bitcast_ln60_2_reg_543;
assign v2_7_we0 = v2_7_we0_local;
assign v3_address0 = zext_ln56_fu_312_p1;
assign v3_address1 = zext_ln55_fu_275_p1;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_2_fu_328_p1 = lshr_ln55_s_reg_442_pp0_iter3_reg;
assign zext_ln55_fu_275_p1 = ap_sig_allocacmp_v25_2;
assign zext_ln56_fu_312_p1 = or_ln55_s_fu_304_p3;
endmodule 
