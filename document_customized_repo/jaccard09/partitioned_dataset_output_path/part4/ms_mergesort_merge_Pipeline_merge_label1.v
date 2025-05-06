
module ms_mergesort_merge_Pipeline_merge_label1 (ap_clk,ap_rst,ap_start,ap_done,ap_idle,ap_ready,sext_ln7,sext_ln7_1,a_0_address0,a_0_ce0,a_0_q0,a_0_address1,a_0_ce1,a_0_q1,a_1_address0,a_1_ce0,a_1_q0,a_1_address1,a_1_ce1,a_1_q1,a_2_address0,a_2_ce0,a_2_q0,a_2_address1,a_2_ce1,a_2_q1,a_3_address0,a_3_ce0,a_3_q0,a_3_address1,a_3_ce1,a_3_q1,temp_address0,temp_ce0,temp_we0,temp_d0,temp_address1,temp_ce1,temp_we1,temp_d1,temp_1_address0,temp_1_ce0,temp_1_we0,temp_1_d0,temp_1_address1,temp_1_ce1,temp_1_we1,temp_1_d1);  
parameter    ap_ST_fsm_pp0_stage0 = 1'd1;
input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [31:0] sext_ln7;
input  [31:0] sext_ln7_1;
output  [8:0] a_0_address0;
output   a_0_ce0;
input  [31:0] a_0_q0;
output  [8:0] a_0_address1;
output   a_0_ce1;
input  [31:0] a_0_q1;
output  [8:0] a_1_address0;
output   a_1_ce0;
input  [31:0] a_1_q0;
output  [8:0] a_1_address1;
output   a_1_ce1;
input  [31:0] a_1_q1;
output  [8:0] a_2_address0;
output   a_2_ce0;
input  [31:0] a_2_q0;
output  [8:0] a_2_address1;
output   a_2_ce1;
input  [31:0] a_2_q1;
output  [8:0] a_3_address0;
output   a_3_ce0;
input  [31:0] a_3_q0;
output  [8:0] a_3_address1;
output   a_3_ce1;
input  [31:0] a_3_q1;
output  [9:0] temp_address0;
output   temp_ce0;
output   temp_we0;
output  [31:0] temp_d0;
output  [9:0] temp_address1;
output   temp_ce1;
output   temp_we1;
output  [31:0] temp_d1;
output  [9:0] temp_1_address0;
output   temp_1_ce0;
output   temp_1_we0;
output  [31:0] temp_1_d0;
output  [9:0] temp_1_address1;
output   temp_1_ce1;
output   temp_1_we1;
output  [31:0] temp_1_d1;
reg ap_idle;
(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_enable_reg_pp0_iter3;
reg    ap_enable_reg_pp0_iter4;
reg    ap_enable_reg_pp0_iter5;
reg    ap_idle_pp0;
wire    ap_block_pp0_stage0_subdone;
wire   [0:0] icmp_ln7_3_fu_415_p2;
wire   [0:0] icmp_ln7_2_fu_384_p2;
wire   [0:0] icmp_ln7_1_fu_353_p2;
wire   [0:0] icmp_ln7_fu_344_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
wire    ap_block_pp0_stage0_11001;
wire  signed [32:0] sext_ln7_1_cast_fu_328_p1;
reg  signed [32:0] sext_ln7_1_cast_reg_629;
reg   [32:0] i_11_reg_637;
reg   [0:0] icmp_ln7_reg_646;
reg   [0:0] icmp_ln7_reg_646_pp0_iter2_reg;
reg   [0:0] icmp_ln7_reg_646_pp0_iter3_reg;
reg   [0:0] icmp_ln7_reg_646_pp0_iter4_reg;
wire   [1:0] trunc_ln7_fu_349_p1;
reg   [1:0] trunc_ln7_reg_650;
reg   [1:0] trunc_ln7_reg_650_pp0_iter2_reg;
reg   [1:0] trunc_ln7_reg_650_pp0_iter3_reg;
reg   [0:0] icmp_ln7_1_reg_658;
reg   [0:0] icmp_ln7_1_reg_658_pp0_iter2_reg;
reg   [0:0] icmp_ln7_1_reg_658_pp0_iter3_reg;
reg   [0:0] icmp_ln7_1_reg_658_pp0_iter4_reg;
reg   [9:0] lshr_ln7_2_reg_662;
reg   [9:0] lshr_ln7_2_reg_662_pp0_iter2_reg;
reg   [9:0] lshr_ln7_2_reg_662_pp0_iter3_reg;
reg   [8:0] lshr_ln7_3_reg_667;
reg   [8:0] lshr_ln7_3_reg_667_pp0_iter2_reg;
reg   [0:0] icmp_ln7_2_reg_672;
reg   [0:0] icmp_ln7_2_reg_672_pp0_iter2_reg;
reg   [0:0] icmp_ln7_2_reg_672_pp0_iter3_reg;
reg   [0:0] icmp_ln7_2_reg_672_pp0_iter4_reg;
reg   [9:0] lshr_ln7_4_reg_676;
reg   [9:0] lshr_ln7_4_reg_676_pp0_iter2_reg;
reg   [9:0] lshr_ln7_4_reg_676_pp0_iter3_reg;
reg   [8:0] lshr_ln7_5_reg_681;
reg   [8:0] lshr_ln7_5_reg_681_pp0_iter2_reg;
reg   [0:0] icmp_ln7_3_reg_686;
reg   [0:0] icmp_ln7_3_reg_686_pp0_iter2_reg;
reg   [0:0] icmp_ln7_3_reg_686_pp0_iter3_reg;
wire   [0:0] trunc_ln7_1_fu_420_p1;
reg   [0:0] trunc_ln7_1_reg_690;
reg   [0:0] trunc_ln7_1_reg_690_pp0_iter3_reg;
reg   [0:0] trunc_ln7_1_reg_690_pp0_iter4_reg;
reg   [9:0] lshr_ln5_reg_694;
reg   [9:0] lshr_ln5_reg_694_pp0_iter3_reg;
reg   [9:0] lshr_ln7_reg_719;
reg   [9:0] lshr_ln7_reg_719_pp0_iter3_reg;
wire   [31:0] tmp_fu_496_p11;
reg   [31:0] tmp_reg_744;
wire   [31:0] tmp_1_fu_519_p11;
reg   [31:0] tmp_1_reg_750;
wire   [31:0] tmp_2_fu_571_p11;
reg   [31:0] tmp_2_reg_796;
reg   [9:0] temp_addr_2_reg_802;
reg   [9:0] temp_1_addr_2_reg_807;
wire   [31:0] tmp_3_fu_599_p11;
reg   [31:0] tmp_3_reg_812;
reg   [9:0] temp_addr_3_reg_818;
reg   [9:0] temp_1_addr_3_reg_823;
wire   [63:0] zext_ln5_3_fu_444_p1;
wire    ap_block_pp0_stage0;
wire   [63:0] zext_ln7_1_fu_478_p1;
wire   [63:0] zext_ln7_3_fu_542_p1;
reg    ap_predicate_pred282_state4;
reg    ap_predicate_pred286_state4;
reg    ap_predicate_pred290_state4;
reg    ap_predicate_pred294_state4;
wire   [63:0] zext_ln7_5_fu_549_p1;
reg    ap_predicate_pred301_state4;
reg    ap_predicate_pred305_state4;
reg    ap_predicate_pred309_state4;
reg    ap_predicate_pred313_state4;
wire   [63:0] zext_ln5_2_fu_556_p1;
wire   [63:0] zext_ln7_fu_561_p1;
wire   [63:0] zext_ln7_2_fu_566_p1;
wire   [63:0] zext_ln7_4_fu_594_p1;
reg   [32:0] i_fu_70;
wire   [32:0] add_ln7_3_fu_486_p2;
wire  signed [32:0] sext_ln7_cast_fu_332_p1;
reg   [32:0] ap_sig_allocacmp_i_11;
wire    ap_loop_init;
reg    a_0_ce1_local;
reg   [8:0] a_0_address1_local;
reg    a_0_ce0_local;
reg   [8:0] a_0_address0_local;
reg    a_1_ce1_local;
reg   [8:0] a_1_address1_local;
reg    a_1_ce0_local;
reg   [8:0] a_1_address0_local;
reg    a_2_ce1_local;
reg   [8:0] a_2_address1_local;
reg    a_2_ce0_local;
reg   [8:0] a_2_address0_local;
reg    a_3_ce1_local;
reg   [8:0] a_3_address1_local;
reg    a_3_ce0_local;
reg   [8:0] a_3_address0_local;
reg    temp_we1_local;
reg   [31:0] temp_d1_local;
reg    temp_ce1_local;
reg   [9:0] temp_address1_local;
reg    temp_we0_local;
reg   [31:0] temp_d0_local;
reg    temp_ce0_local;
reg   [9:0] temp_address0_local;
reg    ap_predicate_pred437_state6;
reg    temp_1_we1_local;
reg   [31:0] temp_1_d1_local;
reg    temp_1_ce1_local;
reg   [9:0] temp_1_address1_local;
reg    temp_1_we0_local;
reg   [31:0] temp_1_d0_local;
reg    temp_1_ce0_local;
reg   [9:0] temp_1_address0_local;
reg    ap_predicate_pred464_state6;
wire   [32:0] add_ln7_1_fu_358_p2;
wire   [32:0] add_ln7_2_fu_389_p2;
wire   [8:0] lshr_ln5_1_fu_435_p4;
wire   [10:0] trunc_ln7_2_fu_423_p1;
wire   [10:0] add_ln7_fu_452_p2;
wire   [8:0] lshr_ln7_1_fu_468_p4;
wire   [31:0] tmp_fu_496_p9;
wire   [31:0] tmp_1_fu_519_p9;
wire   [31:0] tmp_2_fu_571_p9;
wire   [31:0] tmp_3_fu_599_p9;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg    ap_loop_exit_ready_pp0_iter3_reg;
reg    ap_loop_exit_ready_pp0_iter4_reg;
reg    ap_loop_exit_ready_pp0_iter5_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ready_sig;
wire    ap_done_sig;
reg    ap_condition_663;
reg    ap_condition_673;
reg    ap_condition_457;
reg    ap_condition_322;
reg    ap_condition_429;
wire   [1:0] tmp_fu_496_p1;
wire   [1:0] tmp_fu_496_p3;
wire  signed [1:0] tmp_fu_496_p5;
wire  signed [1:0] tmp_fu_496_p7;
wire  signed [1:0] tmp_1_fu_519_p1;
wire   [1:0] tmp_1_fu_519_p3;
wire   [1:0] tmp_1_fu_519_p5;
wire  signed [1:0] tmp_1_fu_519_p7;
wire  signed [1:0] tmp_2_fu_571_p1;
wire  signed [1:0] tmp_2_fu_571_p3;
wire   [1:0] tmp_2_fu_571_p5;
wire   [1:0] tmp_2_fu_571_p7;
wire   [1:0] tmp_3_fu_599_p1;
wire  signed [1:0] tmp_3_fu_599_p3;
wire  signed [1:0] tmp_3_fu_599_p5;
wire   [1:0] tmp_3_fu_599_p7;
wire    ap_ce_reg;
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_enable_reg_pp0_iter3 = 1'b0;
#0 ap_enable_reg_pp0_iter4 = 1'b0;
#0 ap_enable_reg_pp0_iter5 = 1'b0;
#0 i_fu_70 = 33'd0;
#0 ap_done_reg = 1'b0;
end
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h0 ),.din0_WIDTH( 32 ),.CASE1( 2'h1 ),.din1_WIDTH( 32 ),.CASE2( 2'h2 ),.din2_WIDTH( 32 ),.CASE3( 2'h3 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U1(.din0(a_0_q1),.din1(a_1_q1),.din2(a_2_q1),.din3(a_3_q1),.def(tmp_fu_496_p9),.sel(trunc_ln7_reg_650_pp0_iter2_reg),.dout(tmp_fu_496_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h3 ),.din0_WIDTH( 32 ),.CASE1( 2'h0 ),.din1_WIDTH( 32 ),.CASE2( 2'h1 ),.din2_WIDTH( 32 ),.CASE3( 2'h2 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U2(.din0(a_0_q1),.din1(a_1_q1),.din2(a_2_q1),.din3(a_3_q1),.def(tmp_1_fu_519_p9),.sel(trunc_ln7_reg_650_pp0_iter2_reg),.dout(tmp_1_fu_519_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h2 ),.din0_WIDTH( 32 ),.CASE1( 2'h3 ),.din1_WIDTH( 32 ),.CASE2( 2'h0 ),.din2_WIDTH( 32 ),.CASE3( 2'h1 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U3(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_2_fu_571_p9),.sel(trunc_ln7_reg_650_pp0_iter3_reg),.dout(tmp_2_fu_571_p11));
(* dissolve_hierarchy = "yes" *) ms_mergesort_sparsemux_9_2_32_1_1 #(.ID( 1 ),.NUM_STAGE( 1 ),.CASE0( 2'h1 ),.din0_WIDTH( 32 ),.CASE1( 2'h2 ),.din1_WIDTH( 32 ),.CASE2( 2'h3 ),.din2_WIDTH( 32 ),.CASE3( 2'h0 ),.din3_WIDTH( 32 ),.def_WIDTH( 32 ),.sel_WIDTH( 2 ),.dout_WIDTH( 32 ))
sparsemux_9_2_32_1_1_U4(.din0(a_0_q0),.din1(a_1_q0),.din2(a_2_q0),.din3(a_3_q0),.def(tmp_3_fu_599_p9),.sel(trunc_ln7_reg_650_pp0_iter3_reg),.dout(tmp_3_fu_599_p11));
ms_mergesort_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(.ap_clk(ap_clk),.ap_rst(ap_rst),.ap_start(ap_start),.ap_ready(ap_ready_sig),.ap_done(ap_done_sig),.ap_start_int(ap_start_int),.ap_loop_init(ap_loop_init),.ap_ready_int(ap_ready_int),.ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),.ap_loop_exit_done(ap_done_int),.ap_continue_int(ap_continue_int),.ap_done_int(ap_done_int));
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
        end else if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
            ap_done_reg <= 1'b1;
        end
    end
end
always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
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
    if (((ap_loop_exit_ready_pp0_iter4_reg == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter5_reg <= 1'b0;
    end else if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter5_reg <= ap_loop_exit_ready_pp0_iter4_reg;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((ap_loop_init == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            i_fu_70 <= sext_ln7_cast_fu_332_p1;
        end else if ((1'b1 == ap_condition_673)) begin
            i_fu_70 <= add_ln7_3_fu_486_p2;
        end
    end
end
always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
        i_11_reg_637 <= ap_sig_allocacmp_i_11;
        icmp_ln7_1_reg_658 <= icmp_ln7_1_fu_353_p2;
        icmp_ln7_2_reg_672 <= icmp_ln7_2_fu_384_p2;
        icmp_ln7_3_reg_686 <= icmp_ln7_3_fu_415_p2;
        icmp_ln7_reg_646 <= icmp_ln7_fu_344_p2;
        lshr_ln7_2_reg_662 <= {{add_ln7_1_fu_358_p2[10:1]}};
        lshr_ln7_3_reg_667 <= {{add_ln7_1_fu_358_p2[10:2]}};
        lshr_ln7_4_reg_676 <= {{add_ln7_2_fu_389_p2[10:1]}};
        lshr_ln7_5_reg_681 <= {{add_ln7_2_fu_389_p2[10:2]}};
        sext_ln7_1_cast_reg_629 <= sext_ln7_1_cast_fu_328_p1;
        trunc_ln7_reg_650 <= trunc_ln7_fu_349_p1;
    end
end
always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        ap_loop_exit_ready_pp0_iter3_reg <= ap_loop_exit_ready_pp0_iter2_reg;
        ap_loop_exit_ready_pp0_iter4_reg <= ap_loop_exit_ready_pp0_iter3_reg;
        ap_predicate_pred282_state4 <= ((icmp_ln7_2_reg_672 == 1'd0) & (icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd2) & (icmp_ln7_reg_646 == 1'd0));
        ap_predicate_pred286_state4 <= ((icmp_ln7_2_reg_672 == 1'd0) & (icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd3) & (icmp_ln7_reg_646 == 1'd0));
        ap_predicate_pred290_state4 <= ((icmp_ln7_2_reg_672 == 1'd0) & (icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd0) & (icmp_ln7_reg_646 == 1'd0));
        ap_predicate_pred294_state4 <= ((icmp_ln7_2_reg_672 == 1'd0) & (icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd1) & (icmp_ln7_reg_646 == 1'd0));
        ap_predicate_pred301_state4 <= ((icmp_ln7_3_reg_686 == 1'd0) & (icmp_ln7_2_reg_672 == 1'd0) & (icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd1) & (icmp_ln7_reg_646 == 1'd0));
        ap_predicate_pred305_state4 <= ((icmp_ln7_3_reg_686 == 1'd0) & (icmp_ln7_2_reg_672 == 1'd0) & (icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd2) & (icmp_ln7_reg_646 == 1'd0));
        ap_predicate_pred309_state4 <= ((icmp_ln7_3_reg_686 == 1'd0) & (icmp_ln7_2_reg_672 == 1'd0) & (icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd3) & (icmp_ln7_reg_646 == 1'd0));
        ap_predicate_pred313_state4 <= ((icmp_ln7_3_reg_686 == 1'd0) & (icmp_ln7_2_reg_672 == 1'd0) & (icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd0) & (icmp_ln7_reg_646 == 1'd0));
        ap_predicate_pred437_state6 <= ((trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd1) & (icmp_ln7_3_reg_686_pp0_iter3_reg == 1'd0) & (icmp_ln7_2_reg_672_pp0_iter3_reg == 1'd0) & (icmp_ln7_1_reg_658_pp0_iter3_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter3_reg == 1'd0));
        ap_predicate_pred464_state6 <= ((trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd0) & (icmp_ln7_3_reg_686_pp0_iter3_reg == 1'd0) & (icmp_ln7_2_reg_672_pp0_iter3_reg == 1'd0) & (icmp_ln7_1_reg_658_pp0_iter3_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter3_reg == 1'd0));
        icmp_ln7_1_reg_658_pp0_iter2_reg <= icmp_ln7_1_reg_658;
        icmp_ln7_1_reg_658_pp0_iter3_reg <= icmp_ln7_1_reg_658_pp0_iter2_reg;
        icmp_ln7_1_reg_658_pp0_iter4_reg <= icmp_ln7_1_reg_658_pp0_iter3_reg;
        icmp_ln7_2_reg_672_pp0_iter2_reg <= icmp_ln7_2_reg_672;
        icmp_ln7_2_reg_672_pp0_iter3_reg <= icmp_ln7_2_reg_672_pp0_iter2_reg;
        icmp_ln7_2_reg_672_pp0_iter4_reg <= icmp_ln7_2_reg_672_pp0_iter3_reg;
        icmp_ln7_3_reg_686_pp0_iter2_reg <= icmp_ln7_3_reg_686;
        icmp_ln7_3_reg_686_pp0_iter3_reg <= icmp_ln7_3_reg_686_pp0_iter2_reg;
        icmp_ln7_reg_646_pp0_iter2_reg <= icmp_ln7_reg_646;
        icmp_ln7_reg_646_pp0_iter3_reg <= icmp_ln7_reg_646_pp0_iter2_reg;
        icmp_ln7_reg_646_pp0_iter4_reg <= icmp_ln7_reg_646_pp0_iter3_reg;
        lshr_ln5_reg_694 <= {{i_11_reg_637[10:1]}};
        lshr_ln5_reg_694_pp0_iter3_reg <= lshr_ln5_reg_694;
        lshr_ln7_2_reg_662_pp0_iter2_reg <= lshr_ln7_2_reg_662;
        lshr_ln7_2_reg_662_pp0_iter3_reg <= lshr_ln7_2_reg_662_pp0_iter2_reg;
        lshr_ln7_3_reg_667_pp0_iter2_reg <= lshr_ln7_3_reg_667;
        lshr_ln7_4_reg_676_pp0_iter2_reg <= lshr_ln7_4_reg_676;
        lshr_ln7_4_reg_676_pp0_iter3_reg <= lshr_ln7_4_reg_676_pp0_iter2_reg;
        lshr_ln7_5_reg_681_pp0_iter2_reg <= lshr_ln7_5_reg_681;
        lshr_ln7_reg_719 <= {{add_ln7_fu_452_p2[10:1]}};
        lshr_ln7_reg_719_pp0_iter3_reg <= lshr_ln7_reg_719;
        temp_1_addr_2_reg_807 <= zext_ln7_2_fu_566_p1;
        temp_1_addr_3_reg_823 <= zext_ln7_4_fu_594_p1;
        temp_addr_2_reg_802 <= zext_ln7_2_fu_566_p1;
        temp_addr_3_reg_818 <= zext_ln7_4_fu_594_p1;
        tmp_1_reg_750 <= tmp_1_fu_519_p11;
        tmp_2_reg_796 <= tmp_2_fu_571_p11;
        tmp_3_reg_812 <= tmp_3_fu_599_p11;
        tmp_reg_744 <= tmp_fu_496_p11;
        trunc_ln7_1_reg_690 <= trunc_ln7_1_fu_420_p1;
        trunc_ln7_1_reg_690_pp0_iter3_reg <= trunc_ln7_1_reg_690;
        trunc_ln7_1_reg_690_pp0_iter4_reg <= trunc_ln7_1_reg_690_pp0_iter3_reg;
        trunc_ln7_reg_650_pp0_iter2_reg <= trunc_ln7_reg_650;
        trunc_ln7_reg_650_pp0_iter3_reg <= trunc_ln7_reg_650_pp0_iter2_reg;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred301_state4 == 1'b1)) begin
            a_0_address0_local = zext_ln7_5_fu_549_p1;
        end else if ((ap_predicate_pred282_state4 == 1'b1)) begin
            a_0_address0_local = zext_ln7_3_fu_542_p1;
        end else begin
            a_0_address0_local = 'bx;
        end
    end else begin
        a_0_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_663)) begin
        if (((icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd3))) begin
            a_0_address1_local = zext_ln7_1_fu_478_p1;
        end else if ((trunc_ln7_reg_650 == 2'd0)) begin
            a_0_address1_local = zext_ln5_3_fu_444_p1;
        end else begin
            a_0_address1_local = 'bx;
        end
    end else begin
        a_0_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred301_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred282_state4 == 1'b1)))) begin
        a_0_ce0_local = 1'b1;
    end else begin
        a_0_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd3) & (icmp_ln7_reg_646 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7_reg_650 == 2'd0) & (icmp_ln7_reg_646 == 1'd0)))) begin
        a_0_ce1_local = 1'b1;
    end else begin
        a_0_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred305_state4 == 1'b1)) begin
            a_1_address0_local = zext_ln7_5_fu_549_p1;
        end else if ((ap_predicate_pred286_state4 == 1'b1)) begin
            a_1_address0_local = zext_ln7_3_fu_542_p1;
        end else begin
            a_1_address0_local = 'bx;
        end
    end else begin
        a_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_663)) begin
        if (((icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd0))) begin
            a_1_address1_local = zext_ln7_1_fu_478_p1;
        end else if ((trunc_ln7_reg_650 == 2'd1)) begin
            a_1_address1_local = zext_ln5_3_fu_444_p1;
        end else begin
            a_1_address1_local = 'bx;
        end
    end else begin
        a_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred305_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter3 == 1'b1) & (ap_predicate_pred286_state4 == 1'b1)))) begin
        a_1_ce0_local = 1'b1;
    end else begin
        a_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd0) & (icmp_ln7_reg_646 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7_reg_650 == 2'd1) & (icmp_ln7_reg_646 == 1'd0)))) begin
        a_1_ce1_local = 1'b1;
    end else begin
        a_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred309_state4 == 1'b1)) begin
            a_2_address0_local = zext_ln7_5_fu_549_p1;
        end else if ((ap_predicate_pred290_state4 == 1'b1)) begin
            a_2_address0_local = zext_ln7_3_fu_542_p1;
        end else begin
            a_2_address0_local = 'bx;
        end
    end else begin
        a_2_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_663)) begin
        if (((icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd1))) begin
            a_2_address1_local = zext_ln7_1_fu_478_p1;
        end else if ((trunc_ln7_reg_650 == 2'd2)) begin
            a_2_address1_local = zext_ln5_3_fu_444_p1;
        end else begin
            a_2_address1_local = 'bx;
        end
    end else begin
        a_2_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred309_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred290_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        a_2_ce0_local = 1'b1;
    end else begin
        a_2_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd1) & (icmp_ln7_reg_646 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7_reg_650 == 2'd2) & (icmp_ln7_reg_646 == 1'd0)))) begin
        a_2_ce1_local = 1'b1;
    end else begin
        a_2_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter3 == 1'b1))) begin
        if ((ap_predicate_pred313_state4 == 1'b1)) begin
            a_3_address0_local = zext_ln7_5_fu_549_p1;
        end else if ((ap_predicate_pred294_state4 == 1'b1)) begin
            a_3_address0_local = zext_ln7_3_fu_542_p1;
        end else begin
            a_3_address0_local = 'bx;
        end
    end else begin
        a_3_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_663)) begin
        if (((icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd2))) begin
            a_3_address1_local = zext_ln7_1_fu_478_p1;
        end else if ((trunc_ln7_reg_650 == 2'd3)) begin
            a_3_address1_local = zext_ln5_3_fu_444_p1;
        end else begin
            a_3_address1_local = 'bx;
        end
    end else begin
        a_3_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred313_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred294_state4 == 1'b1) & (ap_enable_reg_pp0_iter3 == 1'b1)))) begin
        a_3_ce0_local = 1'b1;
    end else begin
        a_3_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_1_reg_658 == 1'd1) & (trunc_ln7_reg_650 == 2'd2) & (icmp_ln7_reg_646 == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1) & (trunc_ln7_reg_650 == 2'd3) & (icmp_ln7_reg_646 == 1'd0)))) begin
        a_3_ce1_local = 1'b1;
    end else begin
        a_3_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0) & ((icmp_ln7_fu_344_p2 == 1'd1) | ((icmp_ln7_1_fu_353_p2 == 1'd0) | ((icmp_ln7_2_fu_384_p2 == 1'd1) | (icmp_ln7_3_fu_415_p2 == 1'd1)))))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end
always @ (*) begin
    if (((ap_loop_exit_ready_pp0_iter5_reg == 1'b1) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
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
    if (((ap_enable_reg_pp0_iter5 == 1'b0) & (ap_enable_reg_pp0_iter4 == 1'b0) & (ap_enable_reg_pp0_iter3 == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
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
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_3_reg_686 == 1'd0) & (icmp_ln7_2_reg_672 == 1'd0) & (icmp_ln7_1_reg_658 == 1'd1) & (icmp_ln7_reg_646 == 1'd0))) begin
        ap_sig_allocacmp_i_11 = add_ln7_3_fu_486_p2;
    end else begin
        ap_sig_allocacmp_i_11 = i_fu_70;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((ap_predicate_pred464_state6 == 1'b1)) begin
            temp_1_address0_local = temp_1_addr_3_reg_823;
        end else if ((1'b1 == ap_condition_457)) begin
            temp_1_address0_local = temp_1_addr_2_reg_807;
        end else begin
            temp_1_address0_local = 'bx;
        end
    end else begin
        temp_1_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_322)) begin
        if (((trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd0) & (icmp_ln7_1_reg_658_pp0_iter3_reg == 1'd1))) begin
            temp_1_address1_local = zext_ln7_fu_561_p1;
        end else if ((trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd1)) begin
            temp_1_address1_local = zext_ln5_2_fu_556_p1;
        end else begin
            temp_1_address1_local = 'bx;
        end
    end else begin
        temp_1_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred464_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln7_1_reg_690_pp0_iter4_reg == 1'd1) & (icmp_ln7_2_reg_672_pp0_iter4_reg == 1'd0) & (icmp_ln7_1_reg_658_pp0_iter4_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter4_reg == 1'd0)))) begin
        temp_1_ce0_local = 1'b1;
    end else begin
        temp_1_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter3_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd0) & (icmp_ln7_1_reg_658_pp0_iter3_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter3_reg == 1'd0)))) begin
        temp_1_ce1_local = 1'b1;
    end else begin
        temp_1_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((ap_predicate_pred464_state6 == 1'b1)) begin
            temp_1_d0_local = tmp_3_reg_812;
        end else if ((1'b1 == ap_condition_457)) begin
            temp_1_d0_local = tmp_2_reg_796;
        end else begin
            temp_1_d0_local = 'bx;
        end
    end else begin
        temp_1_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_322)) begin
        if (((trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd0) & (icmp_ln7_1_reg_658_pp0_iter3_reg == 1'd1))) begin
            temp_1_d1_local = tmp_1_reg_750;
        end else if ((trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd1)) begin
            temp_1_d1_local = tmp_reg_744;
        end else begin
            temp_1_d1_local = 'bx;
        end
    end else begin
        temp_1_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((ap_predicate_pred464_state6 == 1'b1) & (1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln7_1_reg_690_pp0_iter4_reg == 1'd1) & (icmp_ln7_2_reg_672_pp0_iter4_reg == 1'd0) & (icmp_ln7_1_reg_658_pp0_iter4_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter4_reg == 1'd0)))) begin
        temp_1_we0_local = 1'b1;
    end else begin
        temp_1_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter3_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd0) & (icmp_ln7_1_reg_658_pp0_iter3_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter3_reg == 1'd0)))) begin
        temp_1_we1_local = 1'b1;
    end else begin
        temp_1_we1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((ap_predicate_pred437_state6 == 1'b1)) begin
            temp_address0_local = temp_addr_3_reg_818;
        end else if ((1'b1 == ap_condition_429)) begin
            temp_address0_local = temp_addr_2_reg_802;
        end else begin
            temp_address0_local = 'bx;
        end
    end else begin
        temp_address0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_322)) begin
        if (((trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd1) & (icmp_ln7_1_reg_658_pp0_iter3_reg == 1'd1))) begin
            temp_address1_local = zext_ln7_fu_561_p1;
        end else if ((trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd0)) begin
            temp_address1_local = zext_ln5_2_fu_556_p1;
        end else begin
            temp_address1_local = 'bx;
        end
    end else begin
        temp_address1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred437_state6 == 1'b1) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln7_1_reg_690_pp0_iter4_reg == 1'd0) & (icmp_ln7_2_reg_672_pp0_iter4_reg == 1'd0) & (icmp_ln7_1_reg_658_pp0_iter4_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter4_reg == 1'd0)))) begin
        temp_ce0_local = 1'b1;
    end else begin
        temp_ce0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd1) & (icmp_ln7_1_reg_658_pp0_iter3_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter3_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd0) & (icmp_ln7_reg_646_pp0_iter3_reg == 1'd0)))) begin
        temp_ce1_local = 1'b1;
    end else begin
        temp_ce1_local = 1'b0;
    end
end
always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter5 == 1'b1))) begin
        if ((ap_predicate_pred437_state6 == 1'b1)) begin
            temp_d0_local = tmp_3_reg_812;
        end else if ((1'b1 == ap_condition_429)) begin
            temp_d0_local = tmp_2_reg_796;
        end else begin
            temp_d0_local = 'bx;
        end
    end else begin
        temp_d0_local = 'bx;
    end
end
always @ (*) begin
    if ((1'b1 == ap_condition_322)) begin
        if (((trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd1) & (icmp_ln7_1_reg_658_pp0_iter3_reg == 1'd1))) begin
            temp_d1_local = tmp_1_reg_750;
        end else if ((trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd0)) begin
            temp_d1_local = tmp_reg_744;
        end else begin
            temp_d1_local = 'bx;
        end
    end else begin
        temp_d1_local = 'bx;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_predicate_pred437_state6 == 1'b1) & (ap_enable_reg_pp0_iter5 == 1'b1)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter5 == 1'b1) & (trunc_ln7_1_reg_690_pp0_iter4_reg == 1'd0) & (icmp_ln7_2_reg_672_pp0_iter4_reg == 1'd0) & (icmp_ln7_1_reg_658_pp0_iter4_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter4_reg == 1'd0)))) begin
        temp_we0_local = 1'b1;
    end else begin
        temp_we0_local = 1'b0;
    end
end
always @ (*) begin
    if ((((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd1) & (icmp_ln7_1_reg_658_pp0_iter3_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter3_reg == 1'd0)) | ((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter4 == 1'b1) & (trunc_ln7_1_reg_690_pp0_iter3_reg == 1'd0) & (icmp_ln7_reg_646_pp0_iter3_reg == 1'd0)))) begin
        temp_we1_local = 1'b1;
    end else begin
        temp_we1_local = 1'b0;
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
assign a_0_address0 = a_0_address0_local;
assign a_0_address1 = a_0_address1_local;
assign a_0_ce0 = a_0_ce0_local;
assign a_0_ce1 = a_0_ce1_local;
assign a_1_address0 = a_1_address0_local;
assign a_1_address1 = a_1_address1_local;
assign a_1_ce0 = a_1_ce0_local;
assign a_1_ce1 = a_1_ce1_local;
assign a_2_address0 = a_2_address0_local;
assign a_2_address1 = a_2_address1_local;
assign a_2_ce0 = a_2_ce0_local;
assign a_2_ce1 = a_2_ce1_local;
assign a_3_address0 = a_3_address0_local;
assign a_3_address1 = a_3_address1_local;
assign a_3_ce0 = a_3_ce0_local;
assign a_3_ce1 = a_3_ce1_local;
assign add_ln7_1_fu_358_p2 = (ap_sig_allocacmp_i_11 + 33'd2);
assign add_ln7_2_fu_389_p2 = (ap_sig_allocacmp_i_11 + 33'd3);
assign add_ln7_3_fu_486_p2 = (i_11_reg_637 + 33'd4);
assign add_ln7_fu_452_p2 = (trunc_ln7_2_fu_423_p1 + 11'd1);
assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];
assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_11001 = ~(1'b1 == 1'b1);
assign ap_block_pp0_stage0_subdone = ~(1'b1 == 1'b1);
always @ (*) begin
    ap_condition_322 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter4 == 1'b1) & (icmp_ln7_reg_646_pp0_iter3_reg == 1'd0));
end
always @ (*) begin
    ap_condition_429 = ((trunc_ln7_1_reg_690_pp0_iter4_reg == 1'd0) & (icmp_ln7_2_reg_672_pp0_iter4_reg == 1'd0) & (icmp_ln7_1_reg_658_pp0_iter4_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter4_reg == 1'd0));
end
always @ (*) begin
    ap_condition_457 = ((trunc_ln7_1_reg_690_pp0_iter4_reg == 1'd1) & (icmp_ln7_2_reg_672_pp0_iter4_reg == 1'd0) & (icmp_ln7_1_reg_658_pp0_iter4_reg == 1'd1) & (icmp_ln7_reg_646_pp0_iter4_reg == 1'd0));
end
always @ (*) begin
    ap_condition_663 = ((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_reg_646 == 1'd0));
end
always @ (*) begin
    ap_condition_673 = ((ap_enable_reg_pp0_iter2 == 1'b1) & (icmp_ln7_3_reg_686 == 1'd0) & (icmp_ln7_2_reg_672 == 1'd0) & (icmp_ln7_1_reg_658 == 1'd1) & (icmp_ln7_reg_646 == 1'd0));
end
assign ap_done = ap_done_sig;
assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);
assign ap_enable_reg_pp0_iter0 = ap_start_int;
assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;
assign ap_ready = ap_ready_sig;
assign icmp_ln7_1_fu_353_p2 = (($signed(ap_sig_allocacmp_i_11) < $signed(sext_ln7_1_cast_reg_629)) ? 1'b1 : 1'b0);
assign icmp_ln7_2_fu_384_p2 = (($signed(add_ln7_1_fu_358_p2) > $signed(sext_ln7_1_cast_reg_629)) ? 1'b1 : 1'b0);
assign icmp_ln7_3_fu_415_p2 = (($signed(add_ln7_2_fu_389_p2) > $signed(sext_ln7_1_cast_reg_629)) ? 1'b1 : 1'b0);
assign icmp_ln7_fu_344_p2 = (($signed(ap_sig_allocacmp_i_11) > $signed(sext_ln7_1_cast_reg_629)) ? 1'b1 : 1'b0);
assign lshr_ln5_1_fu_435_p4 = {{i_11_reg_637[10:2]}};
assign lshr_ln7_1_fu_468_p4 = {{add_ln7_fu_452_p2[10:2]}};
assign sext_ln7_1_cast_fu_328_p1 = $signed(sext_ln7_1);
assign sext_ln7_cast_fu_332_p1 = $signed(sext_ln7);
assign temp_1_address0 = temp_1_address0_local;
assign temp_1_address1 = temp_1_address1_local;
assign temp_1_ce0 = temp_1_ce0_local;
assign temp_1_ce1 = temp_1_ce1_local;
assign temp_1_d0 = temp_1_d0_local;
assign temp_1_d1 = temp_1_d1_local;
assign temp_1_we0 = temp_1_we0_local;
assign temp_1_we1 = temp_1_we1_local;
assign temp_address0 = temp_address0_local;
assign temp_address1 = temp_address1_local;
assign temp_ce0 = temp_ce0_local;
assign temp_ce1 = temp_ce1_local;
assign temp_d0 = temp_d0_local;
assign temp_d1 = temp_d1_local;
assign temp_we0 = temp_we0_local;
assign temp_we1 = temp_we1_local;
assign tmp_1_fu_519_p9 = 'bx;
assign tmp_2_fu_571_p9 = 'bx;
assign tmp_3_fu_599_p9 = 'bx;
assign tmp_fu_496_p9 = 'bx;
assign trunc_ln7_1_fu_420_p1 = i_11_reg_637[0:0];
assign trunc_ln7_2_fu_423_p1 = i_11_reg_637[10:0];
assign trunc_ln7_fu_349_p1 = ap_sig_allocacmp_i_11[1:0];
assign zext_ln5_2_fu_556_p1 = lshr_ln5_reg_694_pp0_iter3_reg;
assign zext_ln5_3_fu_444_p1 = lshr_ln5_1_fu_435_p4;
assign zext_ln7_1_fu_478_p1 = lshr_ln7_1_fu_468_p4;
assign zext_ln7_2_fu_566_p1 = lshr_ln7_2_reg_662_pp0_iter3_reg;
assign zext_ln7_3_fu_542_p1 = lshr_ln7_3_reg_667_pp0_iter2_reg;
assign zext_ln7_4_fu_594_p1 = lshr_ln7_4_reg_676_pp0_iter3_reg;
assign zext_ln7_5_fu_549_p1 = lshr_ln7_5_reg_681_pp0_iter2_reg;
assign zext_ln7_fu_561_p1 = lshr_ln7_reg_719_pp0_iter3_reg;
endmodule 
