
module SgdLR_sw_SgdLR_sw_Pipeline_label_463 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,v2_1_address0,v2_1_ce0,v2_1_we0,v2_1_d0,v2_1_q0,v2_1_address1,v2_1_ce1,v2_1_we1,v2_1_d1,v2_1_q1,v2_0_address0,v2_0_ce0,v2_0_we0,v2_0_d0,v2_0_q0,v2_0_address1,v2_0_ce1,v2_0_we1,v2_0_d1,v2_0_q1,v3_address0,v3_ce0,v3_q0,v3_address1,v3_ce1,v3_q1,v3_1_address0,v3_1_ce0,v3_1_q0,v3_1_address1,v3_1_ce1,v3_1_q1,v3_2_address0,v3_2_ce0,v3_2_q0,v3_2_address1,v3_2_ce1,v3_2_q1,v3_3_address0,v3_3_ce0,v3_3_q0,v3_3_address1,v3_3_ce1,v3_3_q1,grp_fu_4200_p_din0,grp_fu_4200_p_din1,grp_fu_4200_p_opcode,grp_fu_4200_p_dout0,grp_fu_4200_p_ce,grp_fu_9653_p_din0,grp_fu_9653_p_din1,grp_fu_9653_p_opcode,grp_fu_9653_p_dout0,grp_fu_9653_p_ce,grp_fu_9645_p_din0,grp_fu_9645_p_din1,grp_fu_9645_p_dout0,grp_fu_9645_p_ce,grp_fu_9649_p_din0,grp_fu_9649_p_din1,grp_fu_9649_p_dout0,grp_fu_9649_p_ce);  
parameter    ap_ST_fsm_pp0_stage0 = 2'd1;
parameter    ap_ST_fsm_pp0_stage1 = 2'd2;
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
input  [31:0] v2_1_q0;
output  [8:0] v2_1_address1;
output   v2_1_ce1;
output   v2_1_we1;
output  [31:0] v2_1_d1;
input  [31:0] v2_1_q1;
output  [8:0] v2_0_address0;
output   v2_0_ce0;
output   v2_0_we0;
output  [31:0] v2_0_d0;
input  [31:0] v2_0_q0;
output  [8:0] v2_0_address1;
output   v2_0_ce1;
output   v2_0_we1;
output  [31:0] v2_0_d1;
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
output  [31:0] grp_fu_4200_p_din0;
output  [31:0] grp_fu_4200_p_din1;
output  [0:0] grp_fu_4200_p_opcode;
input  [31:0] grp_fu_4200_p_dout0;
output   grp_fu_4200_p_ce;
output  [31:0] grp_fu_9653_p_din0;
output  [31:0] grp_fu_9653_p_din1;
output  [1:0] grp_fu_9653_p_opcode;
input  [31:0] grp_fu_9653_p_dout0;
output   grp_fu_9653_p_ce;
output  [31:0] grp_fu_9645_p_din0;
output  [31:0] grp_fu_9645_p_din1;
input  [31:0] grp_fu_9645_p_dout0;
output   grp_fu_9645_p_ce;
output  [31:0] grp_fu_9649_p_din0;
output  [31:0] grp_fu_9649_p_din1;
input  [31:0] grp_fu_9649_p_dout0;
output   grp_fu_9649_p_ce;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
reg    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_enable_reg_pp0_iter6;
reg    ap_enable_reg_pp0_iter7;
reg    ap_idle_pp0;
wire    ap_CS_fsm_pp0_stage1;
wire    ap_block_pp0_stage1_subdone;
reg   [0:0] tmp_reg_614;
reg    ap_condition_exit_pp0_iter0_stage1;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg   [10:0] v25_12_reg_606;
wire    ap_block_pp0_stage0_11001;
reg   [10:0] v25_12_reg_606_pp0_iter1_reg;
wire   [0:0] tmp_fu_328_p3;
reg   [1:0] trunc_ln55_s_reg_658;
wire    ap_block_pp0_stage1_11001;
wire   [31:0] v26_fu_394_p11;
reg   [31:0] v26_reg_664;
wire   [31:0] v26_34_fu_418_p11;
reg   [31:0] v26_34_reg_669;
wire   [31:0] v26_35_fu_483_p11;
reg   [31:0] v26_35_reg_714;
wire   [31:0] v26_36_fu_506_p11;
reg   [31:0] v26_36_reg_719;
reg   [8:0] v2_0_addr_reg_724;
reg   [8:0] v2_0_addr_reg_724_pp0_iter3_reg;
reg   [8:0] v2_0_addr_reg_724_pp0_iter4_reg;
reg   [8:0] v2_0_addr_reg_724_pp0_iter5_reg;
reg   [8:0] v2_0_addr_reg_724_pp0_iter6_reg;
reg   [8:0] v2_1_addr_reg_729;
reg   [8:0] v2_1_addr_reg_729_pp0_iter3_reg;
reg   [8:0] v2_1_addr_reg_729_pp0_iter4_reg;
reg   [8:0] v2_1_addr_reg_729_pp0_iter5_reg;
reg   [8:0] v2_1_addr_reg_729_pp0_iter6_reg;
reg   [8:0] v2_0_addr_12_reg_734;
reg   [8:0] v2_0_addr_12_reg_734_pp0_iter3_reg;
reg   [8:0] v2_0_addr_12_reg_734_pp0_iter4_reg;
reg   [8:0] v2_0_addr_12_reg_734_pp0_iter5_reg;
reg   [8:0] v2_0_addr_12_reg_734_pp0_iter6_reg;
reg   [8:0] v2_0_addr_12_reg_734_pp0_iter7_reg;
reg   [8:0] v2_1_addr_12_reg_739;
reg   [8:0] v2_1_addr_12_reg_739_pp0_iter3_reg;
reg   [8:0] v2_1_addr_12_reg_739_pp0_iter4_reg;
reg   [8:0] v2_1_addr_12_reg_739_pp0_iter5_reg;
reg   [8:0] v2_1_addr_12_reg_739_pp0_iter6_reg;
reg   [8:0] v2_1_addr_12_reg_739_pp0_iter7_reg;
reg   [31:0] v27_reg_744;
reg   [31:0] v2_0_load_reg_749;
reg   [31:0] v27_34_reg_754;
reg   [31:0] v2_1_load_reg_759;
reg   [31:0] v2_0_load_12_reg_764;
reg   [31:0] v2_1_load_12_reg_769;
wire   [31:0] v28_fu_567_p1;
wire   [31:0] v28_34_fu_571_p1;
reg   [31:0] v27_35_reg_784;
reg   [31:0] v27_36_reg_789;
wire   [31:0] v28_35_fu_575_p1;
wire   [31:0] v28_36_fu_579_p1;
reg   [31:0] v29_reg_804;
reg   [31:0] v29_34_reg_809;
reg   [31:0] v29_35_reg_814;
reg   [31:0] v29_36_reg_819;
reg    ap_enable_reg_pp0_iter0_reg;
wire   [63:0] zext_ln55_12_fu_340_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln56_fu_366_p1;
wire   [63:0] zext_ln56_35_fu_459_p1;
wire    ap_block_pp0_stage1;
wire   [63:0] zext_ln56_36_fu_475_p1;
wire   [63:0] zext_ln55_fu_538_p1;
wire   [63:0] zext_ln56_34_fu_561_p1;
reg   [10:0] v25_fu_84;
wire   [10:0] add_ln55_fu_374_p2;
wire    ap_loop_init;
reg   [10:0] ap_sig_allocacmp_v25_12;
reg    v3_ce1_local;
reg   [7:0] v3_address1_local;
reg    v3_ce0_local;
reg   [7:0] v3_address0_local;
reg    v3_1_ce1_local;
reg   [7:0] v3_1_address1_local;
reg    v3_1_ce0_local;
reg   [7:0] v3_1_address0_local;
reg    v3_2_ce1_local;
reg   [7:0] v3_2_address1_local;
reg    v3_2_ce0_local;
reg   [7:0] v3_2_address0_local;
reg    v3_3_ce1_local;
reg   [7:0] v3_3_address1_local;
reg    v3_3_ce0_local;
reg   [7:0] v3_3_address0_local;
reg    v2_0_ce1_local;
reg   [8:0] v2_0_address1_local;
reg    v2_0_ce0_local;
reg   [8:0] v2_0_address0_local;
reg    v2_0_we1_local;
wire   [31:0] bitcast_ln60_fu_583_p1;
reg    v2_0_we0_local;
wire   [31:0] bitcast_ln60_35_fu_591_p1;
reg    v2_1_ce1_local;
reg   [8:0] v2_1_address1_local;
reg    v2_1_ce0_local;
reg   [8:0] v2_1_address0_local;
reg    v2_1_we1_local;
wire   [31:0] bitcast_ln60_34_fu_587_p1;
reg    v2_1_we0_local;
wire   [31:0] bitcast_ln60_36_fu_595_p1;
reg   [31:0] grp_fu_302_p0;
reg   [31:0] grp_fu_302_p1;
reg   [31:0] grp_fu_306_p0;
reg   [31:0] grp_fu_306_p1;
reg   [31:0] grp_fu_310_p0;
reg   [31:0] grp_fu_315_p0;
wire   [7:0] trunc_ln55_fu_336_p1;
wire   [6:0] tmp_s_fu_348_p4;
wire   [7:0] or_ln56_s_fu_358_p3;
wire   [31:0] v26_fu_394_p9;
wire   [1:0] v26_fu_394_p10;
wire   [31:0] v26_34_fu_418_p9;
wire   [1:0] v26_34_fu_418_p10;
wire   [5:0] tmp_24_fu_442_p4;
wire   [7:0] or_ln56_35_fu_451_p3;
wire   [7:0] or_ln56_36_fu_467_p3;
wire   [31:0] v26_35_fu_483_p9;
wire   [31:0] v26_36_fu_506_p9;
wire   [8:0] lshr_ln55_s_fu_529_p4;
wire   [7:0] tmp_23_fu_544_p4;
wire   [8:0] or_ln56_34_fu_553_p3;
wire    ap_block_pp0_stage0_00001;
wire    ap_block_pp0_stage1_00001;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter1_reg;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg    ap_loop_exit_ready_pp0_iter6_reg;
reg   [1:0] ap_NS_fsm;
wire    ap_block_pp0_stage0_subdone;
reg    ap_idle_pp0_1to7;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
wire   [1:0] v26_fu_394_p1;
wire   [1:0] v26_fu_394_p3;
wire  signed [1:0] v26_fu_394_p5;
wire  signed [1:0] v26_fu_394_p7;
wire   [1:0] v26_34_fu_418_p1;
wire   [1:0] v26_34_fu_418_p3;
wire  signed [1:0] v26_34_fu_418_p5;
wire  signed [1:0] v26_34_fu_418_p7;
wire   [1:0] v26_35_fu_483_p1;
wire   [1:0] v26_35_fu_483_p3;
wire  signed [1:0] v26_35_fu_483_p5;
wire  signed [1:0] v26_35_fu_483_p7;
wire   [1:0] v26_36_fu_506_p1;
wire   [1:0] v26_36_fu_506_p3;
wire  signed [1:0] v26_36_fu_506_p5;
wire  signed [1:0] v26_36_fu_506_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 2'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 ap_enable_reg_pp0_iter6 = 1'b0;
#0 ap_enable_reg_pp0_iter7 = 1'b0;
#0 ap_enable_reg_pp0_iter0_reg = 1'b0;
#0 v25_fu_84 = 11'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U806(.din0(v3_q1),.din1(v3_1_q1),.din2(v3_2_q1),.din3(v3_3_q1),.def(v26_fu_394_p9),.sel(v26_fu_394_p10),.dout(v26_fu_394_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U807(.din0(v3_q0),.din1(v3_1_q0),.din2(v3_2_q0),.din3(v3_3_q0),.def(v26_34_fu_418_p9),.sel(v26_34_fu_418_p10),.dout(v26_34_fu_418_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U808(.din0(v3_q1),.din1(v3_1_q1),.din2(v3_2_q1),.din3(v3_3_q1),.def(v26_35_fu_483_p9),.sel(trunc_ln55_s_reg_658),.dout(v26_35_fu_483_p11));
(* dissolve_hierarchy = "yes" *) SgdLR_sw_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U809(.din0(v3_q0),.din1(v3_1_q0),.din2(v3_2_q0),.din3(v3_3_q0),.def(v26_36_fu_506_p9),.sel(trunc_ln55_s_reg_658),.dout(v26_36_fu_506_p11));
SgdLR_sw_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter0_stage1),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
        if ((1'b1 == ap_condition_exit_pp0_iter0_stage1)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter3 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter4 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter4 <= ap_enable_reg_pp0_iter3;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter5 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter5 <= ap_enable_reg_pp0_iter4;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter6 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter6 <= ap_enable_reg_pp0_iter5;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter7 <= 1'b0;
    end else begin
        if (((1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            ap_enable_reg_pp0_iter7 <= ap_enable_reg_pp0_iter6;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        if (((ap_enable_reg_pp0_iter0 == 1'b1) & (tmp_fu_328_p3 == 1'd0))) begin
            v25_fu_84 <= add_ln55_fu_374_p2;
        end else if ((ap_loop_init == 1'b1)) begin
            v25_fu_84 <= 11'd0;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
        ap_loop_exit_ready_pp0_iter6_reg <= ap_loop_exit_ready_pp0_iter5_reg;
        trunc_ln55_s_reg_658 <= {{v25_12_reg_606[9:8]}};
        v26_34_reg_669 <= v26_34_fu_418_p11;
        v26_reg_664 <= v26_fu_394_p11;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        tmp_reg_614 <= ap_sig_allocacmp_v25_12[32'd10];
        v25_12_reg_606 <= ap_sig_allocacmp_v25_12;
        v25_12_reg_606_pp0_iter1_reg <= v25_12_reg_606;
        v26_35_reg_714 <= v26_35_fu_483_p11;
        v26_36_reg_719 <= v26_36_fu_506_p11;
        v2_0_addr_12_reg_734[8 : 1] <= zext_ln56_34_fu_561_p1[8 : 1];
        v2_0_addr_12_reg_734_pp0_iter3_reg[8 : 1] <= v2_0_addr_12_reg_734[8 : 1];
        v2_0_addr_12_reg_734_pp0_iter4_reg[8 : 1] <= v2_0_addr_12_reg_734_pp0_iter3_reg[8 : 1];
        v2_0_addr_12_reg_734_pp0_iter5_reg[8 : 1] <= v2_0_addr_12_reg_734_pp0_iter4_reg[8 : 1];
        v2_0_addr_12_reg_734_pp0_iter6_reg[8 : 1] <= v2_0_addr_12_reg_734_pp0_iter5_reg[8 : 1];
        v2_0_addr_12_reg_734_pp0_iter7_reg[8 : 1] <= v2_0_addr_12_reg_734_pp0_iter6_reg[8 : 1];
        v2_0_addr_reg_724 <= zext_ln55_fu_538_p1;
        v2_0_addr_reg_724_pp0_iter3_reg <= v2_0_addr_reg_724;
        v2_0_addr_reg_724_pp0_iter4_reg <= v2_0_addr_reg_724_pp0_iter3_reg;
        v2_0_addr_reg_724_pp0_iter5_reg <= v2_0_addr_reg_724_pp0_iter4_reg;
        v2_0_addr_reg_724_pp0_iter6_reg <= v2_0_addr_reg_724_pp0_iter5_reg;
        v2_1_addr_12_reg_739[8 : 1] <= zext_ln56_34_fu_561_p1[8 : 1];
        v2_1_addr_12_reg_739_pp0_iter3_reg[8 : 1] <= v2_1_addr_12_reg_739[8 : 1];
        v2_1_addr_12_reg_739_pp0_iter4_reg[8 : 1] <= v2_1_addr_12_reg_739_pp0_iter3_reg[8 : 1];
        v2_1_addr_12_reg_739_pp0_iter5_reg[8 : 1] <= v2_1_addr_12_reg_739_pp0_iter4_reg[8 : 1];
        v2_1_addr_12_reg_739_pp0_iter6_reg[8 : 1] <= v2_1_addr_12_reg_739_pp0_iter5_reg[8 : 1];
        v2_1_addr_12_reg_739_pp0_iter7_reg[8 : 1] <= v2_1_addr_12_reg_739_pp0_iter6_reg[8 : 1];
        v2_1_addr_reg_729 <= zext_ln55_fu_538_p1;
        v2_1_addr_reg_729_pp0_iter3_reg <= v2_1_addr_reg_729;
        v2_1_addr_reg_729_pp0_iter4_reg <= v2_1_addr_reg_729_pp0_iter3_reg;
        v2_1_addr_reg_729_pp0_iter5_reg <= v2_1_addr_reg_729_pp0_iter4_reg;
        v2_1_addr_reg_729_pp0_iter6_reg <= v2_1_addr_reg_729_pp0_iter5_reg;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v27_34_reg_754 <= grp_fu_9649_p_dout0;
        v27_reg_744 <= grp_fu_9645_p_dout0;
        v2_0_load_12_reg_764 <= v2_0_q0;
        v2_0_load_reg_749 <= v2_0_q1;
        v2_1_load_12_reg_769 <= v2_1_q0;
        v2_1_load_reg_759 <= v2_1_q1;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v27_35_reg_784 <= grp_fu_9645_p_dout0;
        v27_36_reg_789 <= grp_fu_9649_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v29_34_reg_809 <= grp_fu_9653_p_dout0;
        v29_reg_804 <= grp_fu_4200_p_dout0;
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v29_35_reg_814 <= grp_fu_4200_p_dout0;
        v29_36_reg_819 <= grp_fu_9653_p_dout0;
    end
end
always @ (*) begin
    if (((tmp_reg_614 == 1'd1) & (1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter0_stage1 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter6_reg == 1'b1) & (1'b0 == ap_block_pp0_stage1_subdone) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
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
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_enable_reg_pp0_iter7 == 1'b0) & (ap_enable_reg_pp0_iter6 == 1'b0) & (ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0))) begin
        ap_idle_pp0_1to7 = 1'b1;
    end else begin
        ap_idle_pp0_1to7 = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_sig_allocacmp_v25_12 = 11'd0;
    end else begin
        ap_sig_allocacmp_v25_12 = v25_fu_84;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_302_p0 = v28_35_fu_575_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_302_p0 = v28_fu_567_p1;
        end else begin
            grp_fu_302_p0 = 'bx;
        end
    end else begin
        grp_fu_302_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_302_p1 = v27_35_reg_784;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_302_p1 = v27_reg_744;
        end else begin
            grp_fu_302_p1 = 'bx;
        end
    end else begin
        grp_fu_302_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_306_p0 = v28_36_fu_579_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_306_p0 = v28_34_fu_571_p1;
        end else begin
            grp_fu_306_p0 = 'bx;
        end
    end else begin
        grp_fu_306_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter3 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_306_p1 = v27_36_reg_789;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_306_p1 = v27_34_reg_754;
        end else begin
            grp_fu_306_p1 = 'bx;
        end
    end else begin
        grp_fu_306_p1 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_310_p0 = v26_35_reg_714;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_310_p0 = v26_reg_664;
        end else begin
            grp_fu_310_p0 = 'bx;
        end
    end else begin
        grp_fu_310_p0 = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter1 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            grp_fu_315_p0 = v26_36_reg_719;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            grp_fu_315_p0 = v26_34_reg_669;
        end else begin
            grp_fu_315_p0 = 'bx;
        end
    end else begin
        grp_fu_315_p0 = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address0_local = v2_0_addr_12_reg_734_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address0_local = zext_ln56_34_fu_561_p1;
    end else begin
        v2_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_address1_local = v2_0_addr_reg_724_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_0_address1_local = zext_ln55_fu_538_p1;
    end else begin
        v2_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce0_local = 1'b1;
    end else begin
        v2_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_0_ce1_local = 1'b1;
    end else begin
        v2_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_we0_local = 1'b1;
    end else begin
        v2_0_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_0_we1_local = 1'b1;
    end else begin
        v2_0_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address0_local = v2_1_addr_12_reg_739_pp0_iter7_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address0_local = zext_ln56_34_fu_561_p1;
    end else begin
        v2_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_address1_local = v2_1_addr_reg_729_pp0_iter6_reg;
    end else if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        v2_1_address1_local = zext_ln55_fu_538_p1;
    end else begin
        v2_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce0_local = 1'b1;
    end else begin
        v2_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v2_1_ce1_local = 1'b1;
    end else begin
        v2_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter7 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_we0_local = 1'b1;
    end else begin
        v2_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter6 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
        v2_1_we1_local = 1'b1;
    end else begin
        v2_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address0_local = zext_ln56_36_fu_475_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address0_local = zext_ln56_fu_366_p1;
        end else begin
            v3_1_address0_local = 'bx;
        end
    end else begin
        v3_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_1_address1_local = zext_ln56_35_fu_459_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_1_address1_local = zext_ln55_12_fu_340_p1;
        end else begin
            v3_1_address1_local = 'bx;
        end
    end else begin
        v3_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_1_ce0_local = 1'b1;
    end else begin
        v3_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_1_ce1_local = 1'b1;
    end else begin
        v3_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_2_address0_local = zext_ln56_36_fu_475_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_2_address0_local = zext_ln56_fu_366_p1;
        end else begin
            v3_2_address0_local = 'bx;
        end
    end else begin
        v3_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_2_address1_local = zext_ln56_35_fu_459_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_2_address1_local = zext_ln55_12_fu_340_p1;
        end else begin
            v3_2_address1_local = 'bx;
        end
    end else begin
        v3_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_2_ce0_local = 1'b1;
    end else begin
        v3_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_2_ce1_local = 1'b1;
    end else begin
        v3_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_3_address0_local = zext_ln56_36_fu_475_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_3_address0_local = zext_ln56_fu_366_p1;
        end else begin
            v3_3_address0_local = 'bx;
        end
    end else begin
        v3_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_3_address1_local = zext_ln56_35_fu_459_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_3_address1_local = zext_ln55_12_fu_340_p1;
        end else begin
            v3_3_address1_local = 'bx;
        end
    end else begin
        v3_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_3_ce0_local = 1'b1;
    end else begin
        v3_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_3_ce1_local = 1'b1;
    end else begin
        v3_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address0_local = zext_ln56_36_fu_475_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address0_local = zext_ln56_fu_366_p1;
        end else begin
            v3_address0_local = 'bx;
        end
    end else begin
        v3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((ap_enable_reg_pp0_iter0 == 1'b1)) begin
        if (((1'b0 == ap_block_pp0_stage1) & (1'b1 == ap_CS_fsm_pp0_stage1))) begin
            v3_address1_local = zext_ln56_35_fu_459_p1;
        end else if (((1'b0 == ap_block_pp0_stage0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            v3_address1_local = zext_ln55_12_fu_340_p1;
        end else begin
            v3_address1_local = 'bx;
        end
    end else begin
        v3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_ce0_local = 1'b1;
    end else begin
        v3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage1_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0)))) begin
        v3_ce1_local = 1'b1;
    end else begin
        v3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            if ((~((ap_start_int == 1'b0) & (ap_idle_pp0_1to7 == 1'b1)) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end
        end
        ap_ST_fsm_pp0_stage1 : begin
            if ((1'b0 == ap_block_pp0_stage1_subdone)) begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage0;
            end else begin
                ap_NS_fsm = ap_ST_fsm_pp0_stage1;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end
assign add_ln55_fu_374_p2 = (ap_sig_allocacmp_v25_12 + 11'd4);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_CS_fsm_pp0_stage1 = ap_CS_fsm[32'd1];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_00001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage1_subdone = ~(1'b1 == 1'b1);
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter0_stage1;
assign ap_ready = ap_ready_sig;
assign bitcast_ln60_34_fu_587_p1 = v29_34_reg_809;
assign bitcast_ln60_35_fu_591_p1 = v29_35_reg_814;
assign bitcast_ln60_36_fu_595_p1 = v29_36_reg_819;
assign bitcast_ln60_fu_583_p1 = v29_reg_804;
assign grp_fu_4200_p_ce = 1'b1;
assign grp_fu_4200_p_din0 = grp_fu_302_p0;
assign grp_fu_4200_p_din1 = grp_fu_302_p1;
assign grp_fu_4200_p_opcode = 2'd0;
assign grp_fu_9645_p_ce = 1'b1;
assign grp_fu_9645_p_din0 = grp_fu_310_p0;
assign grp_fu_9645_p_din1 = 32'd3345637376;
assign grp_fu_9649_p_ce = 1'b1;
assign grp_fu_9649_p_din0 = grp_fu_315_p0;
assign grp_fu_9649_p_din1 = 32'd3345637376;
assign grp_fu_9653_p_ce = 1'b1;
assign grp_fu_9653_p_din0 = grp_fu_306_p0;
assign grp_fu_9653_p_din1 = grp_fu_306_p1;
assign grp_fu_9653_p_opcode = 2'd0;
assign lshr_ln55_s_fu_529_p4 = {{v25_12_reg_606_pp0_iter1_reg[9:1]}};
assign or_ln56_34_fu_553_p3 = {{tmp_23_fu_544_p4}, {1'd1}};
assign or_ln56_35_fu_451_p3 = {{tmp_24_fu_442_p4}, {2'd2}};
assign or_ln56_36_fu_467_p3 = {{tmp_24_fu_442_p4}, {2'd3}};
assign or_ln56_s_fu_358_p3 = {{tmp_s_fu_348_p4}, {1'd1}};
assign tmp_23_fu_544_p4 = {{v25_12_reg_606_pp0_iter1_reg[9:2]}};
assign tmp_24_fu_442_p4 = {{v25_12_reg_606[7:2]}};
assign tmp_fu_328_p3 = ap_sig_allocacmp_v25_12[32'd10];
assign tmp_s_fu_348_p4 = {{ap_sig_allocacmp_v25_12[7:1]}};
assign trunc_ln55_fu_336_p1 = ap_sig_allocacmp_v25_12[7:0];
assign v26_34_fu_418_p10 = {{v25_12_reg_606[9:8]}};
assign v26_34_fu_418_p9 = 'bx;
assign v26_35_fu_483_p9 = 'bx;
assign v26_36_fu_506_p9 = 'bx;
assign v26_fu_394_p10 = {{v25_12_reg_606[9:8]}};
assign v26_fu_394_p9 = 'bx;
assign v28_34_fu_571_p1 = v2_1_load_reg_759;
assign v28_35_fu_575_p1 = v2_0_load_12_reg_764;
assign v28_36_fu_579_p1 = v2_1_load_12_reg_769;
assign v28_fu_567_p1 = v2_0_load_reg_749;
assign v2_0_address0 = v2_0_address0_local;
assign v2_0_address1 = v2_0_address1_local;
assign v2_0_ce0 = v2_0_ce0_local;
assign v2_0_ce1 = v2_0_ce1_local;
assign v2_0_d0 = bitcast_ln60_35_fu_591_p1;
assign v2_0_d1 = bitcast_ln60_fu_583_p1;
assign v2_0_we0 = v2_0_we0_local;
assign v2_0_we1 = v2_0_we1_local;
assign v2_1_address0 = v2_1_address0_local;
assign v2_1_address1 = v2_1_address1_local;
assign v2_1_ce0 = v2_1_ce0_local;
assign v2_1_ce1 = v2_1_ce1_local;
assign v2_1_d0 = bitcast_ln60_36_fu_595_p1;
assign v2_1_d1 = bitcast_ln60_34_fu_587_p1;
assign v2_1_we0 = v2_1_we0_local;
assign v2_1_we1 = v2_1_we1_local;
assign v3_1_address0 = v3_1_address0_local;
assign v3_1_address1 = v3_1_address1_local;
assign v3_1_ce0 = v3_1_ce0_local;
assign v3_1_ce1 = v3_1_ce1_local;
assign v3_2_address0 = v3_2_address0_local;
assign v3_2_address1 = v3_2_address1_local;
assign v3_2_ce0 = v3_2_ce0_local;
assign v3_2_ce1 = v3_2_ce1_local;
assign v3_3_address0 = v3_3_address0_local;
assign v3_3_address1 = v3_3_address1_local;
assign v3_3_ce0 = v3_3_ce0_local;
assign v3_3_ce1 = v3_3_ce1_local;
assign v3_address0 = v3_address0_local;
assign v3_address1 = v3_address1_local;
assign v3_ce0 = v3_ce0_local;
assign v3_ce1 = v3_ce1_local;
assign zext_ln55_12_fu_340_p1 = trunc_ln55_fu_336_p1;
assign zext_ln55_fu_538_p1 = lshr_ln55_s_fu_529_p4;
assign zext_ln56_34_fu_561_p1 = or_ln56_34_fu_553_p3;
assign zext_ln56_35_fu_459_p1 = or_ln56_35_fu_451_p3;
assign zext_ln56_36_fu_475_p1 = or_ln56_36_fu_467_p3;
assign zext_ln56_fu_366_p1 = or_ln56_s_fu_358_p3;
always @ (posedge ap_clk) begin
    v2_0_addr_12_reg_734[0] <= 1'b1;
    v2_0_addr_12_reg_734_pp0_iter3_reg[0] <= 1'b1;
    v2_0_addr_12_reg_734_pp0_iter4_reg[0] <= 1'b1;
    v2_0_addr_12_reg_734_pp0_iter5_reg[0] <= 1'b1;
    v2_0_addr_12_reg_734_pp0_iter6_reg[0] <= 1'b1;
    v2_0_addr_12_reg_734_pp0_iter7_reg[0] <= 1'b1;
    v2_1_addr_12_reg_739[0] <= 1'b1;
    v2_1_addr_12_reg_739_pp0_iter3_reg[0] <= 1'b1;
    v2_1_addr_12_reg_739_pp0_iter4_reg[0] <= 1'b1;
    v2_1_addr_12_reg_739_pp0_iter5_reg[0] <= 1'b1;
    v2_1_addr_12_reg_739_pp0_iter6_reg[0] <= 1'b1;
    v2_1_addr_12_reg_739_pp0_iter7_reg[0] <= 1'b1;
end
endmodule 
